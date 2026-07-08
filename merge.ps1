# 1. Read README.md
$readmeText = Get-Content -Raw -Encoding UTF8 "README.md"

# 2. Extract and dynamically update Table of Contents in memory
$tocSection = [regex]::Match($readmeText, "(?ms)^# Tabla de contenidos.*?## \[Anexos\].*?$").Value

# Convert links with anchors: [Text](File.md#anchor) -> [Text](#anchor)
$tocSection = $tocSection -replace '\[([^\]]+)\]\([^)]+\.md#([^)]+)\)', '[$1](#$2)'

# Convert links without anchors (main chapter links): [Capítulo...](Capitulo_X.md) -> [Capítulo...](#capítulo...)
$tocSection = [regex]::Replace($tocSection, '\[(Cap[^\]]+)\]\(([^)]+\.md)\)', {
    param($m)
    $title = $m.Groups[1].Value
    $anchor = $title.ToLower()
    $anchor = $anchor.Replace(" :", "").Replace(":", "")
    $anchor = $anchor.Replace(" &", "").Replace("&", "")
    $anchor = $anchor.Replace(",", "")
    $anchor = $anchor.Replace(".", "")
    $anchor = $anchor.Replace(" ", "-")
    return "[$title](#$anchor)"
})

# Replace the Table of Contents section in the README content
$regexPattern = "(?ms)^# Tabla de contenidos.*?## \[Anexos\].*?$"
$readmeTextWithUpdatedToc = [regex]::Replace($readmeText, $regexPattern, $tocSection)

# 3. Gather contents of all files
$outputContents = @()
$outputContents += $readmeTextWithUpdatedToc

# Note: Using Conclusiones_bibliografica.md as listed in the repository
$otherFiles = @("Capitulo_1.md", "Capitulo_2.md", "Capitulo_3.md", "Capitulo_4.md", "Capitulo_5.md", "Conclusiones_bibliografica.md")

foreach ($file in $otherFiles) {
    Write-Host "Processing file: $file"
    $fileText = Get-Content -Raw -Encoding UTF8 $file
    $outputContents += $fileText
}

# 4. Join with separators
$finalContent = $outputContents -join "`r`n`r`n---`r`n`r`n"

# 5. Save back to report.md with clean UTF-8 encoding
[System.IO.File]::WriteAllText((Join-Path (Get-Location).Path "report.md"), $finalContent, [System.Text.Encoding]::UTF8)

Write-Host "Done! Generated report.md with clean Table of Contents and no duplicates."
