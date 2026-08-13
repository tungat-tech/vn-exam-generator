param(
    [ValidateSet(0, 1, 2, 3, 4, 5)]
    [int]$Grade = 0
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$repoRoot = Split-Path -Parent $PSScriptRoot
$outDir = Join-Path $repoRoot 'downloads'
$utf8 = [Text.UTF8Encoding]::new($false)
[IO.Directory]::CreateDirectory($outDir) | Out-Null

function Read-Text([string]$relativePath) {
    $fullPath = Join-Path $repoRoot $relativePath
    if (-not (Test-Path -LiteralPath $fullPath -PathType Leaf)) {
        throw "Missing source file: $relativePath"
    }
    return [IO.File]::ReadAllText($fullPath, $utf8)
}

function Read-Metadata([string]$text, [string]$field, [string]$pattern) {
    $match = [regex]::Match($text, "(?m)^$([regex]::Escape($field)):\s*$pattern\s*$")
    if (-not $match.Success) { throw "Missing or invalid metadata: $field" }
    return $match.Groups['value'].Value
}

function Build-Grade([int]$targetGrade) {
    $manifestPath = if ($targetGrade -eq 3) {
        'adapters/generic/manifest.yaml'
    } else {
        "adapters/generic/math-grade-$targetGrade-manifest.yaml"
    }

    $manifest = Read-Text $manifestPath
    $loadOrderMatch = [regex]::Match($manifest, '(?ms)^load_order:\s*\r?\n(?<body>(?:  - .+\r?\n?)+)')
    if (-not $loadOrderMatch.Success) { throw "Manifest has no load_order: $manifestPath" }

    $sourcePaths = [Collections.Generic.List[string]]::new()
    foreach ($match in [regex]::Matches($loadOrderMatch.Groups['body'].Value, '(?m)^  - (?<path>.+?)\s*$')) {
        $sourcePaths.Add($match.Groups['path'].Value)
    }
    if ($sourcePaths.Count -eq 0) { throw "Manifest load_order is empty: $manifestPath" }

    $skill = Read-Text "subjects/math/grade-$targetGrade/skill.md"
    $version = Read-Metadata $skill 'version' '(?<value>[^\s]+)'
    $lastVerified = Read-Metadata $skill 'last_verified' '(?<value>\d{4}-\d{2}-\d{2})'
    $statusMatch = [regex]::Match($skill, '(?m)^verification_status:\s*(?<value>[^\s]+)\s*$')
    $verificationStatus = if ($statusMatch.Success) { $statusMatch.Groups['value'].Value } else { 'verified-refactor' }

    $preamble = Read-Text 'adapters/generic/bundle-preamble.md'
    $preamble = $preamble.Replace('{{GRADE}}', [string]$targetGrade)
    $preamble = $preamble.Replace('{{VERSION}}', $version)
    $preamble = $preamble.Replace('{{LAST_VERIFIED}}', $lastVerified)
    $preamble = $preamble.Replace('{{VERIFICATION_STATUS}}', $verificationStatus)

    $parts = [Collections.Generic.List[string]]::new()
    $parts.Add($preamble.Trim())

    foreach ($sourcePath in $sourcePaths) {
        $parts.Add('')
        $parts.Add('---')
        $parts.Add('')
        $parts.Add("## Merged source: ``$sourcePath``")
        $parts.Add('')
        $parts.Add((Read-Text $sourcePath).Trim())
    }

    $parts.Add('')
    $parts.Add('---')
    $parts.Add('')
    $parts.Add('This bundle is generated from the source of truth in `core/` and `subjects/`. Do not edit the bundle to change curriculum.')

    $outPath = Join-Path $outDir "vietedukit-toan-lop-$targetGrade.md"
    [IO.File]::WriteAllText($outPath, (($parts -join "`n").TrimEnd() + "`n"), $utf8)
    Get-Item -LiteralPath $outPath | Select-Object Name, Length
}

$grades = if ($Grade -eq 0) { 1..5 } else { @($Grade) }
foreach ($targetGrade in $grades) { Build-Grade $targetGrade }
