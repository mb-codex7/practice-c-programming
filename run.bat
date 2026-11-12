@echo off
setlocal
cd /d "%~dp0"

if "%~1"=="" (
    echo Usage: run.bat program_name
    echo Example: run.bat palindrome
    exit /b 1
)

if not exist "src\%~1.c" (
    echo Source file not found: src\%~1.c
    exit /b 1
)

if not exist "build" mkdir "build"

gcc -std=c11 -Wall -Wextra -Wpedantic "src\%~1.c" -o "build\%~1.exe"
if errorlevel 1 exit /b 1

"build\%~1.exe"
