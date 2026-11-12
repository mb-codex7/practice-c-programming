@echo off
setlocal
cd /d "%~dp0"

if not exist "build" mkdir "build"

echo Compiling Hello World...
gcc -std=c11 -Wall -Wextra -Wpedantic "src\hello.c" -o "build\hello.exe"
if errorlevel 1 exit /b 1

echo Compiling odd/even...
gcc -std=c11 -Wall -Wextra -Wpedantic "src\odd_even.c" -o "build\odd_even.exe"
if errorlevel 1 exit /b 1

echo Compiling calculator...
gcc -std=c11 -Wall -Wextra -Wpedantic "src\calculator.c" -o "build\calculator.exe"
if errorlevel 1 exit /b 1

echo.
echo All programs compiled successfully into the build folder.
