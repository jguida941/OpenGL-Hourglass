@echo off
setlocal
cd /d "%~dp0"

if exist "2-2_Assignment.exe" (
  start "" "2-2_Assignment.exe"
  goto :eof
)

if exist "Debug\\2-2_Assignment.exe" (
  start "" "Debug\\2-2_Assignment.exe"
  goto :eof
)

echo Could not find 2-2_Assignment.exe next to this script or in Debug\
pause
