$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$repoRoot = Split-Path -Parent $PSScriptRoot
$failures = [System.Collections.Generic.List[string]]::new()
$passes = 0
function Check([bool]$condition, [string]$message) {
    if ($condition) { $script:passes++ } else { $script:failures.Add($message) }
}
function Read-Utf8([string]$path) {
    [IO.File]::ReadAllText((Join-Path $repoRoot $path), [Text.UTF8Encoding]::new($false))
}

$mapping = Read-Utf8 'subjects/math/grade-2/textbook-mapping.yaml'
$curriculum = Read-Utf8 'subjects/math/grade-2/curriculum.md'
$assessment = Read-Utf8 'subjects/math/grade-2/assessment.md'
$fixtures = Read-Utf8 'tests/math-grade-2/cases.yaml'

$lessons = [regex]::Matches($mapping, '(?m)^\s*- \{id: math-g2-kntt-(?<id>\d{3}), grade: 2, subject: math, semester: (?<semester>[12]), volume: (?<volume>[12]), topic: (?<topic>\d+), lesson: (?<lesson>\d+), title: "(?<title>[^"]+)"\}\s*$')
Check ($lessons.Count -eq 75) 'Expected exactly 75 lessons'
$numbers = @{}
$ids = [Collections.Generic.HashSet[string]]::new()
foreach ($item in $lessons) {
    $n = [int]$item.Groups['lesson'].Value
    $numbers[$n] = $item.Groups['title'].Value
    [void]$ids.Add($item.Groups['id'].Value)
    Check ([int]$item.Groups['id'].Value -eq $n) "ID mismatch at lesson $n"
    Check ((($n -le 36) -and ($item.Groups['semester'].Value -eq '1')) -or (($n -ge 37) -and ($item.Groups['semester'].Value -eq '2'))) "Semester mismatch at lesson $n"
}
Check ($ids.Count -eq 75) 'Lesson IDs must be unique'
Check (@(1..75 | Where-Object { -not $numbers.ContainsKey($_) }).Count -eq 0) 'Lessons 1-75 must be contiguous'
Check ($numbers[1] -eq 'Ôn tập các số đến 100') 'Lesson 1 title mismatch'
Check ($numbers[50] -eq 'So sánh các số tròn trăm, tròn chục') 'Lesson 50 title mismatch'
Check ($numbers[55] -eq 'Đề-xi-mét. Mét. Ki-lô-mét') 'Lesson 55 title mismatch'
Check ($numbers[75] -eq 'Ôn tập chung') 'Lesson 75 title mismatch'

$topics = [regex]::Matches($mapping, '(?m)^\s*- \{id: (?<id>\d+), semester: [12], volume: [12], title: "[^"]+", lesson_from: (?<from>\d+), lesson_to: (?<to>\d+)\}\s*$')
Check ($topics.Count -eq 14) 'Expected exactly 14 topics'
$covered = [Collections.Generic.List[int]]::new()
foreach ($topic in $topics) { foreach ($n in ([int]$topic.Groups['from'].Value)..([int]$topic.Groups['to'].Value)) { $covered.Add($n) } }
Check (($covered.Count -eq 75) -and (@($covered | Sort-Object -Unique).Count -eq 75)) 'Topics must cover lessons 1-75 once'

foreach ($pattern in @('1 000', '1 bước tính', 'bảng nhân 2', 'bảng nhân 5', 'Không dùng phân số', 'không chia có dư')) {
    Check ($curriculum -match [regex]::Escape($pattern)) "Missing curriculum guardrail: $pattern"
}
Check ($assessment -match 'tổng phải đúng 10') 'Missing score total rule'

$fixtureIds = @('no-grade-3-content','lessons-1-3-boundary','word-problem-one-step','multiplication-tables-2-5-only','no-remainder-division','numbers-at-most-1000','no-fractions','midterm-is-practice','tt27-periodic-integer-final','score-total-ten')
foreach ($id in $fixtureIds) { Check ($fixtures -match "(?m)^\s*- id: $id\s*$") "Missing fixture: $id" }

foreach ($failure in $failures) { Write-Host "FAIL  $failure" -ForegroundColor Red }
Write-Host "Summary math-grade-2: $passes passed, $($failures.Count) failed"
if ($failures.Count -gt 0) { exit 1 }
