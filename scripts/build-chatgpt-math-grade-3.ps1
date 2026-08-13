$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$repoRoot = Split-Path -Parent $PSScriptRoot
$utf8 = [Text.UTF8Encoding]::new($false)

function Read-Text([string]$path) {
    [IO.File]::ReadAllText((Join-Path $repoRoot $path), $utf8)
}

function Require-Metadata([string]$text, [string]$field, [string]$pattern) {
    $match = [regex]::Match($text, "(?m)^$([regex]::Escape($field)):\s*$pattern\s*$")
    if (-not $match.Success) { throw "Missing or invalid metadata: $field" }
    return $match.Groups['value'].Value
}

$skill = Read-Text 'subjects/math/grade-3/skill.md'
$version = Require-Metadata $skill 'version' '(?<value>\d+\.\d+\.\d+)'
$sourceVersion = Require-Metadata $skill 'source_version' '"(?<value>[^"]+)"'
$lastVerified = Require-Metadata $skill 'last_verified' '(?<value>\d{4}-\d{2}-\d{2})'

$outDir = Join-Path $repoRoot "dist/chatgpt/math-grade-3-v$version"
[IO.Directory]::CreateDirectory($outDir) | Out-Null

function Write-Text([string]$name, [string]$content) {
    [IO.File]::WriteAllText((Join-Path $outDir $name), $content, $utf8)
}

$baseInstructions = (Read-Text 'adapters/chatgpt/math-grade-3/instructions.md').TrimEnd()
$exportInstructions = (Read-Text 'adapters/chatgpt/document-export.md').Trim()
$instructions = "$baseInstructions`r`n`r`n$exportInstructions`r`n"
if ($baseInstructions -notmatch [regex]::Escape("Module version: ``$version``")) {
    throw 'Adapter instructions do not match module version'
}
if ($baseInstructions -notmatch [regex]::Escape("``last_verified: $lastVerified``")) {
    throw 'Adapter instructions do not match last_verified'
}
Write-Text 'instructions.md' $instructions
Write-Text 'conversation-starters.txt' (Read-Text 'adapters/chatgpt/math-grade-3/conversation-starters.txt')
$instructionHeading = ($instructions -split "\r?\n")[0]
$releaseName = ($instructionHeading -replace '^#\s*', '') -replace '\s+\S+\s+Instructions\s*$', ''

$rulesParts = @(
    "# Knowledge: Rules and curriculum - Math grade 3`r`n`r`nBundle version: `$version`; source version: `$sourceVersion`; last verified: `$lastVerified`.",
    (Read-Text 'core/assessment.md'),
    (Read-Text 'core/question-design.md'),
    (Read-Text 'core/output-format.md'),
    (Read-Text 'core/quality-gate.md'),
    (Read-Text 'subjects/math/grade-3/curriculum.md'),
    (Read-Text 'subjects/math/grade-3/textbook-mapping.md'),
    (Read-Text 'subjects/math/grade-3/assessment.md'),
    (Read-Text 'subjects/math/grade-3/output-format.md'),
    (Read-Text 'subjects/math/grade-3/quality-gate.md')
)
Write-Text 'knowledge-rules.md' ($rulesParts -join "`r`n`r`n---`r`n`r`n")

$mapping = Read-Text 'subjects/math/grade-3/textbook-mapping.yaml'
$pattern = '(?m)^\s*- \{id: (?<id>math-g3-kntt-\d{3}), grade: 3, subject: math, semester: (?<semester>[12]), volume: (?<volume>[12]), topic: (?<topic>\d+), lesson: (?<lesson>\d+), title: "(?<title>[^"]+)"\}\s*$'
$matches = [regex]::Matches($mapping, $pattern)
if ($matches.Count -ne 81) { throw "Expected 81 lesson records, found $($matches.Count)" }

$lessons = [Collections.Generic.HashSet[int]]::new()
foreach ($item in $matches) {
    $lesson = [int]$item.Groups['lesson'].Value
    $idNumber = [int]($item.Groups['id'].Value -replace '^math-g3-kntt-', '')
    if ($idNumber -ne $lesson) { throw "Lesson $lesson has mismatched ID" }
    if (-not $lessons.Add($lesson)) { throw "Duplicate lesson: $lesson" }
}
foreach ($lesson in 1..81) {
    if (-not $lessons.Contains($lesson)) { throw "Missing lesson: $lesson" }
}

$lines = [Collections.Generic.List[string]]::new()
$lines.Add('# Knowledge: Mapping SGK Toan 3 - Ket noi tri thuc voi cuoc song')
$lines.Add('')
$lines.Add("Module version: `$version`; source version: `$sourceVersion`; last verified: `$lastVerified`.")
$lines.Add('')
$lines.Add('Use this mapping only to limit scope and create new questions. Do not copy textbook exercises verbatim.')
$currentSemester = 0
foreach ($item in $matches) {
    $semester = [int]$item.Groups['semester'].Value
    if ($semester -ne $currentSemester) {
        $currentSemester = $semester
        $lines.Add('')
        $lines.Add("## Hoc ky $semester")
    }
    $lines.Add('')
    $lines.Add("### Bai $($item.Groups['lesson'].Value): $($item.Groups['title'].Value)")
    $lines.Add("- ID: $($item.Groups['id'].Value)")
    $lines.Add("- Chu de: $($item.Groups['topic'].Value)")
}
Write-Text 'knowledge-mapping.md' ($lines -join "`r`n")

$sourcePath = Join-Path $repoRoot 'docs/source/TOAN3_SKILL_v1_1_VERIFIED_20260812.md'
$sourceHash = (Get-FileHash -Algorithm SHA256 -LiteralPath $sourcePath).Hash
$release = [ordered]@{
    name = $releaseName
    version = $version
    source_version = $sourceVersion
    last_verified = $lastVerified
    verification_status = 'verified-refactor'
    lesson_count = $matches.Count
    source_snapshot = 'docs/source/TOAN3_SKILL_v1_1_VERIFIED_20260812.md'
    source_sha256 = $sourceHash
    source_of_truth = $false
    export_formats = @('docx', 'pdf')
    export_mode = 'on_demand_after_preview'
    required_capabilities = @('canvas')
    optional_capabilities = @('code_interpreter_data_analysis')
    canvas_trigger_intents = @('tao-de', 'ra-de', 'soan-de', 'tao-phieu', 'tao-bai', 'tao-bai-tap', 'tao-bai-luyen', 'tao-hoc-lieu')
    files = @('instructions.md', 'conversation-starters.txt', 'knowledge-rules.md', 'knowledge-mapping.md')
} | ConvertTo-Json -Depth 4
Write-Text 'RELEASE.json' $release

Get-ChildItem -LiteralPath $outDir -File | Select-Object Name, Length
