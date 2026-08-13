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

& (Join-Path $repoRoot 'scripts/build-chatgpt-math-grade.ps1') -Grade 1 | Out-Null
& (Join-Path $repoRoot 'scripts/build-chatgpt-math-grade-2.ps1') | Out-Null
& (Join-Path $repoRoot 'scripts/build-chatgpt-math-grade-3.ps1') | Out-Null
& (Join-Path $repoRoot 'scripts/build-chatgpt-math-grade.ps1') -Grade 4 | Out-Null
& (Join-Path $repoRoot 'scripts/build-chatgpt-math-grade.ps1') -Grade 5 | Out-Null

$bundles = @(
    @{ Grade = 1; Path = 'dist/chatgpt/math-grade-1-v0.1.0-beta.1' },
    @{ Grade = 2; Path = 'dist/chatgpt/math-grade-2-v0.1.0-beta.1' },
    @{ Grade = 3; Path = 'dist/chatgpt/math-grade-3-v1.1.0' },
    @{ Grade = 4; Path = 'dist/chatgpt/math-grade-4-v0.1.0-beta.1' },
    @{ Grade = 5; Path = 'dist/chatgpt/math-grade-5-v0.1.0-beta.1' }
)

foreach ($bundle in $bundles) {
    $grade = $bundle.Grade
    $bundlePath = Join-Path $repoRoot $bundle.Path
    $instructionsPath = Join-Path $bundlePath 'instructions.md'
    $startersPath = Join-Path $bundlePath 'conversation-starters.txt'
    $releasePath = Join-Path $bundlePath 'RELEASE.json'

    Assert-True (Test-Path -LiteralPath $instructionsPath -PathType Leaf) "Grade $grade instructions exist"
    Assert-True (Test-Path -LiteralPath $startersPath -PathType Leaf) "Grade $grade conversation starters exist"
    Assert-True (Test-Path -LiteralPath $releasePath -PathType Leaf) "Grade $grade release metadata exists"
    if (-not (Test-Path -LiteralPath $instructionsPath -PathType Leaf) -or -not (Test-Path -LiteralPath $startersPath -PathType Leaf) -or -not (Test-Path -LiteralPath $releasePath -PathType Leaf)) {
        continue
    }

    $instructions = [IO.File]::ReadAllText($instructionsPath, $utf8)
    $starters = [IO.File]::ReadAllLines($startersPath, $utf8) | Where-Object { $_.Trim().Length -gt 0 }
    $release = [IO.File]::ReadAllText($releasePath, $utf8) | ConvertFrom-Json

    Assert-True ($instructions.Contains('document/canvas view')) "Grade $grade previews before export"
    Assert-True ($instructions.Contains('CANVAS ROUTING')) "Grade $grade has explicit Canvas routing"
    Assert-True ($instructions -match 't.o phi.u') "Grade $grade routes worksheet creation to Canvas"
    Assert-True ($instructions -match 't.o b.i') "Grade $grade routes exercise creation to Canvas"
    Assert-True ($instructions.Contains('`.docx`') -and $instructions.Contains('`.pdf`')) "Grade $grade advertises DOCX and PDF"
    Assert-True ($instructions -match 'Kh.ng t.o s.n file') "Grade $grade forbids eager file generation"
    Assert-True ($instructions -match 't.o ..ng .+m.t.+.nh d.ng') "Grade $grade generates only the selected format"
    Assert-True ($instructions -match 'kh.ng t.o li.n k.t gi.') "Grade $grade forbids fake download links"
    Assert-True (@($release.export_formats) -contains 'docx') "Grade $grade release declares DOCX"
    Assert-True (@($release.export_formats) -contains 'pdf') "Grade $grade release declares PDF"
    Assert-True ($release.export_mode -eq 'on_demand_after_preview') "Grade $grade release declares lazy export"
    Assert-True (@($release.required_capabilities) -contains 'canvas') "Grade $grade release requires preview capability"
    Assert-True (@($release.optional_capabilities) -contains 'code_interpreter_data_analysis') "Grade $grade release declares optional file-generation fallback"
    foreach ($intent in @('tao-de', 'ra-de', 'soan-de', 'tao-phieu', 'tao-bai', 'tao-bai-tap', 'tao-bai-luyen', 'tao-hoc-lieu')) {
        Assert-True (@($release.canvas_trigger_intents) -contains $intent) "Grade $grade routes $intent to Canvas"
    }
    Assert-True (@($release.files) -contains 'conversation-starters.txt') "Grade $grade release includes conversation starters"
    Assert-True ($starters.Count -ge 3 -and $starters.Count -le 4) "Grade $grade has 3-4 conversation starters"
    foreach ($starter in $starters) {
        Assert-True (-not $starter.Contains('DOCX') -and -not $starter.Contains('PDF')) "Grade $grade starter does not force export"
    }
}

foreach ($message in $failures) { Write-Host "FAIL  $message" -ForegroundColor Red }
Write-Host "`nSummary: $($passes.Count) passed, $($failures.Count) failed"

if ($failures.Count -gt 0) { exit 1 }
exit 0
