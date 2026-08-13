$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$repoRoot = Split-Path -Parent $PSScriptRoot
$utf8 = [Text.UTF8Encoding]::new($false)
$failures = [Collections.Generic.List[string]]::new()
$passes = [Collections.Generic.List[string]]::new()

function Pass([string]$message) { $script:passes.Add($message) }
function Fail([string]$message) { $script:failures.Add($message) }
function Assert-True([bool]$condition, [string]$message) {
    if ($condition) { Pass $message } else { Fail $message }
}

& (Join-Path $repoRoot 'scripts/build-generic-math-grade.ps1') | Out-Null

$expectedLessons = @{ 1 = 41; 2 = 75; 3 = 81; 4 = 73; 5 = 75 }
foreach ($grade in 1..5) {
    $path = Join-Path $repoRoot "downloads/vietedukit-toan-lop-$grade.md"
    Assert-True (Test-Path -LiteralPath $path -PathType Leaf) "Grade $grade single-file bundle exists"
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) { continue }

    $content = [IO.File]::ReadAllText($path, $utf8)
    Assert-True ($content -match "(?m)^module: math-grade-$grade-vn$") "Grade $grade bundle has module metadata"
    Assert-True ($content -match '(?m)^provider: generic$') "Grade $grade bundle is provider neutral"
    Assert-True ($content -match '(?m)^source_of_truth: false$') "Grade $grade bundle is not source of truth"
    Assert-True ($content.Contains('Instructions for the AI model')) "Grade $grade bundle has LLM instructions"
    Assert-True ($content.Contains('core/quality-gate.md')) "Grade $grade bundle includes core quality gate"
    Assert-True ($content.Contains("subjects/math/grade-$grade/quality-gate.md")) "Grade $grade bundle includes subject quality gate"
    Assert-True ($content.Contains("subjects/math/grade-$grade/textbook-mapping.yaml")) "Grade $grade bundle includes machine-readable mapping"
    Assert-True ($content -match 'kh.ng ph.i t.i li.u ho.c .. ch.nh th.c') "Grade $grade bundle includes disclaimer"
    Assert-True ($content.Contains('ChatGPT') -eq $false) "Grade $grade bundle does not depend on ChatGPT"
    Assert-True ($content.Contains('Claude') -eq $false) "Grade $grade bundle does not depend on Claude"
    Assert-True ($content.Contains('Gemini') -eq $false) "Grade $grade bundle does not depend on Gemini"

    $lessonPattern = "(?m)^\s*- \{id: math-g$grade-kntt-\d{3}, grade: $grade, subject: math,"
    $lessonCount = [regex]::Matches($content, $lessonPattern).Count
    Assert-True ($lessonCount -eq $expectedLessons[$grade]) "Grade $grade bundle has $($expectedLessons[$grade]) lessons"
}

foreach ($message in $failures) { Write-Host "FAIL  $message" -ForegroundColor Red }
Write-Host "`nSummary: $($passes.Count) passed, $($failures.Count) failed"
if ($failures.Count -gt 0) { exit 1 }
exit 0
