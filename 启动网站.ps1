# Codex Skills - One-click Launcher
# Right-click this file and select "Run with PowerShell", or double-click if .ps1 is associated

$ErrorActionPreference = 'Stop'
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptDir

Write-Host ""
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "    Codex Skills - Starting..." -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

# Check Node.js
$node = Get-Command node -ErrorAction SilentlyContinue
if (-not $node) {
    Write-Host "[ERROR] Node.js not found!" -ForegroundColor Red
    Write-Host "Please install Node.js from: https://nodejs.org/" -ForegroundColor Yellow
    Write-Host "Choose LTS version, install it, then try again." -ForegroundColor Yellow
    Start-Process "https://nodejs.org/"
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host "[1/3] Node.js ready ($(node --version))" -ForegroundColor Green

# Install deps if needed
if (-not (Test-Path "node_modules")) {
    Write-Host "[2/3] First run - installing dependencies (about 30 seconds)..." -ForegroundColor Yellow
    npm install
    if ($LASTEXITCODE -ne 0) {
        Write-Host "[ERROR] npm install failed!" -ForegroundColor Red
        Read-Host "Press Enter to exit"
        exit 1
    }
} else {
    Write-Host "[2/3] Dependencies ready" -ForegroundColor Green
}

Write-Host "[3/3] Starting website..." -ForegroundColor Green
Write-Host ""
Write-Host "Browser will open at: http://localhost:5173" -ForegroundColor Cyan
Write-Host "(Press Ctrl+C to stop the server)" -ForegroundColor DarkGray
Write-Host ""

# Start browser after delay
Start-Job -ScriptBlock {
    Start-Sleep -Seconds 4
    Start-Process "http://localhost:5173"
} | Out-Null

# Start VitePress
npm run docs:dev

Read-Host "`nPress Enter to exit"