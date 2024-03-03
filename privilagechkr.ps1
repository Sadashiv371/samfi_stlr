
# Get the current working directory
$currentDirectory = Get-Location

# Extract the drive letter
$driveLetter = $currentDirectory.Provider.Drive.Name

# Display the drive letter
Write-Host "Current Drive Letter: $driveLetter"




# Path to your shortcut file
$shortcutPath = "$driveLetter\path.lnk"

# Check if the file exists
if (Test-Path $shortcutPath) {
    # Run the shortcut file with elevated privileges
    Invoke-Item -Path $shortcutPath
} else {
    Write-Host "Shortcut file not found: $shortcutPath"
}
