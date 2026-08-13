param(
    [Parameter(Mandatory = $true)]
    [ValidateSet(1, 4, 5)]
    [int]$Grade
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$repoRoot = Split-Path -Parent $PSScriptRoot
$version = '0.1.0-beta.1'
$outDir = Join-Path $repoRoot "dist/chatgpt/math-grade-$Grade-v$version"
[IO.Directory]::CreateDirectory($outDir) | Out-Null
$utf8 = [Text.UTF8Encoding]::new($false)

function Read-Text([string]$path) { [IO.File]::ReadAllText((Join-Path $repoRoot $path), $utf8) }
function Write-Text([string]$name, [string]$content) { [IO.File]::WriteAllText((Join-Path $outDir $name), $content, $utf8) }

$baseInstructions = (Read-Text "adapters/chatgpt/math-grade-$Grade/instructions.md").TrimEnd()
$exportInstructions = (Read-Text 'adapters/chatgpt/document-export.md').Trim()
Write-Text 'instructions.md' "$baseInstructions`r`n`r`n$exportInstructions`r`n"
Write-Text 'conversation-starters.txt' (Read-Text "adapters/chatgpt/math-grade-$Grade/conversation-starters.txt")

$rulesParts = @(
    '# Knowledge: Rules and curriculum',
    (Read-Text 'core/assessment.md'),
    (Read-Text 'core/question-design.md'),
    (Read-Text 'core/output-format.md'),
    (Read-Text 'core/quality-gate.md'),
    (Read-Text "subjects/math/grade-$Grade/curriculum.md"),
    (Read-Text "subjects/math/grade-$Grade/assessment.md"),
    (Read-Text "subjects/math/grade-$Grade/output-format.md"),
    (Read-Text "subjects/math/grade-$Grade/quality-gate.md")
)
Write-Text 'knowledge-rules.md' ($rulesParts -join "`r`n`r`n---`r`n`r`n")

$mapping = Read-Text "subjects/math/grade-$Grade/textbook-mapping.yaml"
$pattern = "(?m)^\s*- \{id: (?<id>math-g$Grade-kntt-\d{3}), grade: $Grade, subject: math, semester: (?<semester>[12]), volume: (?<volume>[12]), topic: (?<topic>\d+), lesson: (?<lesson>\d+), title: `"(?<title>[^`"]+)`"\}\s*$"
$matches = [regex]::Matches($mapping, $pattern)
if ($matches.Count -eq 0) { throw 'No lesson records found' }

$lines = [Collections.Generic.List[string]]::new()
$lines.Add("# Knowledge: Mapping SGK Toan $Grade - Ket noi tri thuc")
$lines.Add('')
$lines.Add('Use this file only to limit scope. Do not copy textbook exercises. Verification status: provisional.')
$currentSemester = 0
foreach ($item in $matches) {
    $semester = [int]$item.Groups['semester'].Value
    if ($semester -ne $currentSemester) {
        $currentSemester = $semester
        $lines.Add('')
        $lines.Add("## Semester $semester")
    }
    $lines.Add('')
    $lines.Add("### Bai $($item.Groups['lesson'].Value): $($item.Groups['title'].Value)")
    $lines.Add("- ID: $($item.Groups['id'].Value)")
    $lines.Add("- Topic: $($item.Groups['topic'].Value)")
}
Write-Text 'knowledge-mapping.md' ($lines -join "`r`n")

$release = @{
    name = "Toan lop $Grade VN 2026-2027"
    version = $version
    last_verified = '2026-08-13'
    verification_status = 'provisional'
    lesson_count = $matches.Count
    export_formats = @('docx', 'pdf')
    export_mode = 'on_demand_after_preview'
    required_capabilities = @('canvas')
    optional_capabilities = @('code_interpreter_data_analysis')
    canvas_trigger_intents = @('tao-de', 'ra-de', 'soan-de', 'tao-phieu', 'tao-bai', 'tao-bai-tap', 'tao-bai-luyen', 'tao-hoc-lieu')
    files = @('instructions.md','conversation-starters.txt','knowledge-rules.md','knowledge-mapping.md')
} | ConvertTo-Json -Depth 4
Write-Text 'RELEASE.json' $release

Get-ChildItem -LiteralPath $outDir -File | Select-Object Name, Length
