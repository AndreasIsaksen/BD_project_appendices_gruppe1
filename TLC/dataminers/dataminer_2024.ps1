# Download all 2024 TLC trip record files listed on the official page.
param(
    [string]$OutDir = "..\2024"
)

$ErrorActionPreference = 'Stop'
$uri = 'https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page'

# Fetch page (compat for Windows PowerShell 5.1)
if ($PSVersionTable.PSVersion.Major -lt 6) {
    $resp = Invoke-WebRequest -UseBasicParsing -Uri $uri
} else {
    $resp = Invoke-WebRequest -Uri $uri
}
$html = $resp.Content

# Find all 2024 cloudfront PARQUET links (yellow/green/fhv/fhvhv)
$pattern = 'https?://d37ci6vzurychx\.cloudfront\.net/trip-data/[a-z]+_tripdata_2024-(0[1-9]|1[0-2])\.parquet'
$links = [Regex]::Matches($html, $pattern) |
         ForEach-Object { $_.Value } |
         Sort-Object -Unique

if ($links.Count -eq 0) { throw "No 2024 file links found. Page structure or host changed?" }

New-Item -ItemType Directory -Force -Path $OutDir | Out-Null

foreach ($url in $links) {
    $file = Join-Path $OutDir ([IO.Path]::GetFileName($url))
    if (Test-Path $file) {
        Write-Host "Already have $(Split-Path -Leaf $file) — skipping"
        continue
    }
    Write-Host "Downloading $(Split-Path -Leaf $file)..."
    Invoke-WebRequest -Uri $url -OutFile $file
}

Write-Host "`nDone. Saved $($links.Count) files to $OutDir"
