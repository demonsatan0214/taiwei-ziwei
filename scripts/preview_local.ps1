$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot\..
Start-Process "http://localhost:8765/index.html"
Write-Host "Starting local preview server at http://localhost:8765/index.html (Press Ctrl+C to stop)..." -ForegroundColor Green
python -m http.server 8765
