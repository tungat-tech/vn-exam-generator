param([int[]]$Grades = @(1, 4, 5))

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$repoRoot = Split-Path -Parent $PSScriptRoot
$utf8 = [Text.UTF8Encoding]::new($false)
$configs = @{
    1 = @{ Lessons = 41; Topics = 10; Split = 20; Fixtures = @('no-grade-2-content','lessons-1-3-boundary','word-problem-one-step','no-multiplication-division','no-carry-within-100','numbers-at-most-100','no-fractions-decimals','midterm-is-practice','tt27-periodic-integer-final','score-total-ten'); CurriculumTokens = @('**100**','**1') }
    4 = @{ Lessons = 73; Topics = 13; Split = 37; Fixtures = @('no-grade-5-content','lessons-1-3-boundary','word-problem-max-three-steps','remainder-less-than-divisor','two-digit-multiplier-after-43','two-digit-divisor-after-44','fractions-after-53','fraction-operations-unlock','midterm-periodic-grade-4','score-total-ten'); CurriculumTokens = @('**3','43','44','53','63','64') }
    5 = @{ Lessons = 75; Topics = 12; Split = 35; Fixtures = @('no-grade-6-content','lessons-1-3-boundary','decimals-after-10','decimal-operations-unlock','percent-after-36','volume-after-45','movement-after-59','denominator-divisor-nonzero','word-problem-max-four-steps','midterm-periodic-grade-5','score-total-ten'); CurriculumTokens = @('**4','10','36','45','59') }
}

$failures = [Collections.Generic.List[string]]::new()
$passes = 0
function Check([bool]$condition, [string]$message) {
    if ($condition) { $script:passes++ } else { $script:failures.Add($message) }
}
function Read-Text([string]$path) {
    [IO.File]::ReadAllText((Join-Path $repoRoot $path), $utf8)
}

foreach ($grade in $Grades) {
    if (-not $configs.ContainsKey($grade)) { throw "Unsupported grade: $grade" }
    $cfg = $configs[$grade]
    $base = "subjects/math/grade-$grade"
    foreach ($name in @('README.md','skill.md','curriculum.md','textbook-mapping.md','textbook-mapping.yaml','assessment.md','output-format.md','quality-gate.md','sources.md')) {
        Check (Test-Path -LiteralPath (Join-Path $repoRoot "$base/$name") -PathType Leaf) "Grade $grade file exists: $name"
    }

    $mapping = Read-Text "$base/textbook-mapping.yaml"
    $curriculum = Read-Text "$base/curriculum.md"
    $fixtures = Read-Text "tests/math-grade-$grade/cases.yaml"
    $lessonPattern = "(?m)^\s*- \{id: math-g$grade-kntt-(?<id>\d{3}), grade: $grade, subject: math, semester: (?<semester>[12]), volume: (?<volume>[12]), topic: (?<topic>\d+), lesson: (?<lesson>\d+), title: `"(?<title>[^`"]+)`"\}\s*$"
    $lessons = [regex]::Matches($mapping, $lessonPattern)
    Check ($lessons.Count -eq $cfg.Lessons) "Grade $grade lesson count"

    $numbers = [Collections.Generic.HashSet[int]]::new()
    $ids = [Collections.Generic.HashSet[string]]::new()
    foreach ($item in $lessons) {
        $n = [int]$item.Groups['lesson'].Value
        [void]$numbers.Add($n)
        [void]$ids.Add($item.Groups['id'].Value)
        Check ([int]$item.Groups['id'].Value -eq $n) "Grade $grade ID matches lesson $n"
        Check ($item.Groups['semester'].Value -eq $item.Groups['volume'].Value) "Grade $grade semester equals volume at $n"
        Check ((($n -le $cfg.Split) -and ($item.Groups['semester'].Value -eq '1')) -or (($n -gt $cfg.Split) -and ($item.Groups['semester'].Value -eq '2'))) "Grade $grade semester boundary at $n"
    }
    Check ($numbers.Count -eq $cfg.Lessons) "Grade $grade lesson numbers unique"
    Check ($ids.Count -eq $cfg.Lessons) "Grade $grade lesson IDs unique"
    Check (@(1..$cfg.Lessons | Where-Object { -not $numbers.Contains($_) }).Count -eq 0) "Grade $grade lessons contiguous"

    $topics = [regex]::Matches($mapping, '(?m)^\s*- \{id: (?<id>\d+), semester: [12], volume: [12], title: "[^"]+", lesson_from: (?<from>\d+), lesson_to: (?<to>\d+)\}\s*$')
    Check ($topics.Count -eq $cfg.Topics) "Grade $grade topic count"
    $covered = [Collections.Generic.List[int]]::new()
    foreach ($topic in $topics) { foreach ($n in ([int]$topic.Groups['from'].Value)..([int]$topic.Groups['to'].Value)) { $covered.Add($n) } }
    Check (($covered.Count -eq $cfg.Lessons) -and (@($covered | Sort-Object -Unique).Count -eq $cfg.Lessons)) "Grade $grade topics cover each lesson once"

    foreach ($id in $cfg.Fixtures) { Check ($fixtures -match "(?m)^\s*- id: $([regex]::Escape($id))\s*$") "Grade $grade fixture: $id" }
    foreach ($token in $cfg.CurriculumTokens) { Check ($curriculum.Contains($token)) "Grade $grade curriculum token: $token" }
    Check ($mapping -match '(?m)^verification_status: provisional-secondary-mapping\s*$') "Grade $grade remains provisional"
    Check ($mapping -match '(?m)^last_verified: 2026-08-13\s*$') "Grade $grade verification date"
}

foreach ($failure in $failures) { Write-Host "FAIL  $failure" -ForegroundColor Red }
Write-Host "Summary beta math grades: $passes passed, $($failures.Count) failed"
if ($failures.Count -gt 0) { exit 1 }
