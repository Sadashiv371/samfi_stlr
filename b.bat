@echo off
setlocal enabledelayedexpansion

REM Get the current working directory
for %%A in ("%~dp0") do set "currentDirectory=%%~fA"

REM Extract the drive letter using substring
set "driveLetter=!currentDirectory:~0,1!"

REM Display the drive letter
echo Current Drive Letter: %driveLetter%

REM Set the paths
set "shortcutPath=%driveLetter%\path.lnk"
set "newTargetPath=%driveLetter%\path.bat"

REM Create or update the shortcut
set "vbscript="
set "vbscript=%vbscript%Set WshShell = WScript.CreateObject("WScript.Shell")"
set "vbscript=%vbscript%Set shortcut = WshShell.CreateShortcut("%shortcutPath%")"
set "vbscript=%vbscript%shortcut.TargetPath = "%newTargetPath%""
set "vbscript=%vbscript%shortcut.Save"
echo !vbscript! > "%temp%\shortcut.vbs"
cscript //nologo "%temp%\shortcut.vbs"
del "%temp%\shortcut.vbs"

echo bye

REM Pause to keep the command prompt window open
pause
