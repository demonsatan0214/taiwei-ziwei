param(
    [string]$Message = "Update Taiwei Ziwei website"
)

$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot\..

Write-Host "=== [1/3] Staging and committing changes ===" -ForegroundColor Cyan
git add -A
$status = git status --porcelain
if ($status) {
    git commit -m $Message
} else {
    Write-Host "No file changes to commit." -ForegroundColor Yellow
}

Write-Host "=== [2/3] Pushing to GitHub (main) ===" -ForegroundColor Cyan
git push origin main

Write-Host "=== [3/3] Triggering GitHub Pages build ===" -ForegroundColor Cyan
try {
    gh api -X POST repos/demonsatan0214/taiwei-ziwei/pages/builds | Out-Null
} catch {
    Write-Host "Pages build already queued or triggered automatically." -ForegroundColor Yellow
}

Write-Host "Done! Live URL: https://demonsatan0214.github.io/taiwei-ziwei/" -ForegroundColor Green
