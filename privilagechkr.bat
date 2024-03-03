@echo off
setlocal enabledelayedexpansion

REM Get the current working directory
for %%A in ("%~dp0") do set "currentDirectory=%%~fA"

REM Extract the drive letter
for /f "tokens=2 delims=:" %%I in ('echo !currentDirectory!') do set "driveLetter=%%I"

REM Display the drive letter
echo Current Drive Letter: %driveLetter%

REM Path to your shortcut file
set "shortcutPath=%driveLetter%\path.lnk"

REM Check if the file exists
if exist "%shortcutPath%" (
    REM Run the shortcut file with elevated privileges
    start "" "%shortcutPath%"
) else (
    echo Shortcut file not found: %shortcutPath%
)

REM Pause to keep the command prompt window open
pause
