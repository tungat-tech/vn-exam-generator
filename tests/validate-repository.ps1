$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$repoRoot = Split-Path -Parent $PSScriptRoot
$failures = [System.Collections.Generic.List[string]]::new()
$passes = [System.Collections.Generic.List[string]]::new()

function Pass([string]$message) { $script:passes.Add($message) }
function Fail([string]$message) { $script:failures.Add($message) }
function Assert-True([bool]$condition, [string]$message) {
    if ($condition) { Pass $message } else { Fail $message }
}
function Read-Utf8([string]$relativePath) {
    $fullPath = Join-Path $repoRoot $relativePath
    return [System.IO.File]::ReadAllText($fullPath, [System.Text.UTF8Encoding]::new($false))
}

$requiredFiles = @(
    'README.md', 'LICENSE', 'CONTRIBUTING.md', 'CHANGELOG.md',
    'core/assessment.md', 'core/question-design.md', 'core/output-format.md', 'core/quality-gate.md',
    'subjects/math/grade-3/skill.md', 'subjects/math/grade-3/curriculum.md',
    'subjects/math/grade-3/textbook-mapping.yaml', 'subjects/math/grade-3/textbook-mapping.md',
    'subjects/math/grade-3/assessment.md', 'subjects/math/grade-3/output-format.md',
    'subjects/math/grade-3/quality-gate.md', 'adapters/generic/manifest.yaml',
    'tests/math-grade-3/cases.yaml', 'docs/source/TOAN3_SKILL_v1_1_VERIFIED_20260812.md'
)
foreach ($relativePath in $requiredFiles) {
    Assert-True (Test-Path -LiteralPath (Join-Path $repoRoot $relativePath) -PathType Leaf) "Required file exists: $relativePath"
}

$sourcePath = Join-Path $repoRoot 'docs/source/TOAN3_SKILL_v1_1_VERIFIED_20260812.md'
$sourceHash = (Get-FileHash -Algorithm SHA256 -LiteralPath $sourcePath).Hash
Assert-True ($sourceHash -eq '5AC95D9F704E11629F5EF72048582B4D53F81766686862B753CC68D84976C735') 'Source snapshot SHA-256 is unchanged'

$source = Read-Utf8 'docs/source/TOAN3_SKILL_v1_1_VERIFIED_20260812.md'
$mapping = Read-Utf8 'subjects/math/grade-3/textbook-mapping.yaml'
$skill = Read-Utf8 'subjects/math/grade-3/skill.md'
$curriculum = Read-Utf8 'subjects/math/grade-3/curriculum.md'
$assessment = Read-Utf8 'subjects/math/grade-3/assessment.md'
$qualityGate = Read-Utf8 'subjects/math/grade-3/quality-gate.md'
$fixtures = Read-Utf8 'tests/math-grade-3/cases.yaml'
$manifest = Read-Utf8 'adapters/generic/manifest.yaml'

Assert-True ($source -match '(?m)^version: 1\.1\s*$') 'Source version is 1.1'
Assert-True ($source -match '(?m)^last_verified: 2026-08-12\s*$') 'Source last_verified is 2026-08-12'
foreach ($content in @($mapping, $skill, $curriculum, $assessment, $qualityGate)) {
    Assert-True ($content -match '(?m)^last_verified: 2026-08-12\s*$') 'Refactored metadata preserves last_verified'
}
Assert-True ($skill -match '(?m)^source_version: "1\.1"\s*$') 'Skill records source_version 1.1'

$mappingMatches = [regex]::Matches(
    $mapping,
    '(?m)^\s*- \{id: math-g3-kntt-(?<id>\d{3}), grade: 3, subject: math, semester: (?<semester>[12]), volume: (?<volume>[12]), topic: (?<topic>\d+), lesson: (?<lesson>\d+), title: "(?<title>[^"]+)"\}\s*$'
)
Assert-True ($mappingMatches.Count -eq 81) 'Mapping contains exactly 81 lesson records'

$actualLessons = @{}
$ids = [System.Collections.Generic.HashSet[string]]::new()
foreach ($match in $mappingMatches) {
    $lesson = [int]$match.Groups['lesson'].Value
    $idNumber = [int]$match.Groups['id'].Value
    $topic = [int]$match.Groups['topic'].Value
    $semester = [int]$match.Groups['semester'].Value
    $volume = [int]$match.Groups['volume'].Value
    [void]$ids.Add($match.Groups['id'].Value)
    $actualLessons[$lesson] = $match.Groups['title'].Value
    Assert-True ($idNumber -eq $lesson) "ID matches lesson number $lesson"
    Assert-True ($semester -eq $volume) "Semester and volume match for lesson $lesson"
    Assert-True (($lesson -le 44 -and $semester -eq 1) -or ($lesson -ge 45 -and $semester -eq 2)) "Semester is valid for lesson $lesson"
    Assert-True ($topic -ge 1 -and $topic -le 16) "Topic is valid for lesson $lesson"
}
Assert-True ($ids.Count -eq 81) 'Lesson IDs are unique'
Assert-True (@(1..81 | Where-Object { -not $actualLessons.ContainsKey($_) }).Count -eq 0) 'Lesson sequence 1-81 is contiguous'

$allNumberedLines = [regex]::Matches($source, '(?m)^(?<lesson>\d+)\. (?<title>.+?)\r?$')
$sourceLessonMatches = [System.Collections.Generic.List[System.Text.RegularExpressions.Match]]::new()
foreach ($candidate in $allNumberedLines) {
    $expectedNumber = $sourceLessonMatches.Count + 1
    if ([int]$candidate.Groups['lesson'].Value -eq $expectedNumber) {
        $sourceLessonMatches.Add($candidate)
        if ($expectedNumber -eq 81) { break }
    } elseif ($sourceLessonMatches.Count -gt 0) {
        $sourceLessonMatches.Clear()
        if ([int]$candidate.Groups['lesson'].Value -eq 1) { $sourceLessonMatches.Add($candidate) }
    }
}
Assert-True ($sourceLessonMatches.Count -eq 81) 'Source contains a contiguous run of 81 lesson titles'
foreach ($match in $sourceLessonMatches) {
    $lesson = [int]$match.Groups['lesson'].Value
    $expectedTitle = $match.Groups['title'].Value
    Assert-True ($actualLessons.ContainsKey($lesson)) "YAML contains lesson $lesson"
    if ($actualLessons.ContainsKey($lesson)) {
        Assert-True ($actualLessons[$lesson] -ceq $expectedTitle) "Lesson $lesson title exactly matches source"
    }
}

$topicMatches = [regex]::Matches($mapping, '(?m)^\s*- \{id: (?<id>\d+), semester: [12], volume: [12], title: "[^"]+", lesson_from: (?<from>\d+), lesson_to: (?<to>\d+)\}\s*$')
Assert-True ($topicMatches.Count -eq 16) 'Mapping contains exactly 16 topics'
$covered = [System.Collections.Generic.List[int]]::new()
foreach ($match in $topicMatches) {
    $from = [int]$match.Groups['from'].Value
    $to = [int]$match.Groups['to'].Value
    foreach ($lesson in $from..$to) { $covered.Add($lesson) }
}
Assert-True (($covered.Count -eq 81) -and (@($covered | Sort-Object -Unique).Count -eq 81)) 'Topic ranges cover lessons 1-81 exactly once'

$fixtureIds = @(
    'no-grade-4-content', 'lessons-1-3-boundary', 'word-problem-max-two-steps',
    'remainder-less-than-divisor', 'no-two-digit-multiplier', 'no-two-digit-divisor',
    'fractions-familiarization-only', 'midterm-not-mandatory-periodic',
    'tt27-periodic-integer-final-score', 'score-total-ten', 'week-scope-is-estimate'
)
foreach ($fixtureId in $fixtureIds) {
    Assert-True ($fixtures -match "(?m)^\s*- id: $([regex]::Escape($fixtureId))\s*$") "Fixture exists: $fixtureId"
}

$guardrails = @(
    @{ Text = $curriculum; Pattern = '2 b.{1,4}c t.{1,4}nh'; Name = 'Two-step word-problem guardrail' },
    @{ Text = $curriculum; Pattern = '1/2, 1/3, .+, 1/9'; Name = 'Fraction familiarization guardrail' },
    @{ Text = $curriculum; Pattern = 's.{1,4} d.{1,4} < s.{1,4} chia'; Name = 'Remainder less than divisor guardrail' },
    @{ Text = $curriculum; Pattern = 'chia cho s.{1,4} c.{1,4} hai ch.{1,4} s.{1,4}'; Name = 'No two-digit divisor guardrail' },
    @{ Text = $assessment; Pattern = 'gi.a h.c k.'; Name = 'Grade-3 midterm naming guardrail' },
    @{ Text = $assessment; Pattern = 'kh.ng xu.t .i.m b.i ki.m tra cu.i d.ng th.p ph.n'; Name = 'TT27 integer final score guardrail' },
    @{ Text = $qualityGate; Pattern = 'thang y.u c.u'; Name = 'Score total quality gate' }
)
foreach ($guardrail in $guardrails) {
    Assert-True ($guardrail.Text -match $guardrail.Pattern) $guardrail.Name
}

$manifestPaths = [regex]::Matches($manifest, '(?m)^\s{2}- (?<path>.+)$')
foreach ($match in $manifestPaths) {
    $relativePath = $match.Groups['path'].Value.Trim()
    Assert-True (Test-Path -LiteralPath (Join-Path $repoRoot $relativePath) -PathType Leaf) "Manifest path exists: $relativePath"
}
Assert-True ($manifest -match '(?m)^source_of_truth: false\s*$') 'Generic adapter is not a source of truth'

foreach ($message in $failures) { Write-Host "FAIL  $message" -ForegroundColor Red }
Write-Host "`nSummary: $($passes.Count) passed, $($failures.Count) failed"

if ($failures.Count -gt 0) { exit 1 }
exit 0
