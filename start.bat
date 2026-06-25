@echo off
cd /d "%~dp0"
chcp 65001 >nul 2>&1
title Codex Skills
echo.
echo  ==========================================
echo       Codex Skills - Starting...
echo  ==========================================
echo.
where node >nul 2>&1
if %errorlevel% neq 0 (
    echo  [ERROR] Node.js not found!
    echo  Please install Node.js from: https://nodejs.org/
    echo.
    goto :end
)
echo  [1/3] Node.js ready
if not exist "node_modules" (
    echo  [2/3] First run - installing deps (about 30s)...
    call npm install
    if %errorlevel% neq 0 (
        echo  [ERROR] npm install failed.
        goto :end
    )
) else (
    echo  [2/3] Dependencies ready
)
echo  [3/3] Starting website...
echo.
start http://localhost:5173
call npm run docs:dev
:end
echo.
pause