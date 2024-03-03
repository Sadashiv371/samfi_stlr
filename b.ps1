
#THIS MAKES SHORTCUT OF PATH.BAT FILE

# Get the current working directory
$currentDirectory = Get-Location

# Extract the drive letter using regular expressions
$driveLetter = $currentDirectory.Path -match "^[A-Za-z]:"
$driveLetter = $matches[0]

# Display the drive letter
#Write-Host "Current Drive Letter: $driveLetter"




# Set the paths
$shortcutPath = "$driveLetter\path.lnk"
$newTargetPath = "$driveLetter\path.bat"

# Create or update the shortcut
$shell = New-Object -ComObject WScript.Shell
$shortcut = $shell.CreateShortcut($shortcutPath)
$shortcut.TargetPath = $newTargetPath
$shortcut.Save()

Write-Host "bye"

# Prompt the user to press Enter to exit
#Write-Host "Press Enter to exit..."
#$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')


