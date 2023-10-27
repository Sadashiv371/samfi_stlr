@echo off

setlocal

for %%A in ("%~dp0") do (
    set "driveLetter=%%~dA"
)


echo Running Script 1...
powershell -File "%driveLetter%\b.ps1"

echo Running Script 2...
powershell -File "%driveLetter%\privilagechkr.ps1"

echo Running Batch Script 1...
call "%driveLetter%\finalwifistlr.bat"

echo Scripts completed.

endlocal

pause

