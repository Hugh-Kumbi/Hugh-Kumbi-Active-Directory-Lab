# PowerShell Logoff Script for hughdomain.local
# Save as LogoffScript.ps1 in \\hughdomain.local\SYSVOL\hughdomain.local\scripts\

# Display notification to user
$wshell = New-Object -ComObject Wscript.Shell
$wshell.Popup("Logoff script is running. Please wait...", 5, "Domain Logoff Script", 0x0 + 0x40)

# Log the logoff event
$LogPath = "\\WIN-D2PQBCI88JQ\LogFiles\$env:USERNAME-logoff.log"
$LogMessage = "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') - User $env:USERNAME logged off from computer $env:COMPUTERNAME"
Add-Content -Path $LogPath -Value $LogMessage

# Disconnect any mapped drives
try {
    # Remove Z drive mapping
    if (Test-Path "Z:\") {
        Remove-PSDrive -Name "Z" -Force -ErrorAction SilentlyContinue
        Write-Output "Successfully removed Z: drive mapping" | Add-Content -Path $LogPath
    }
}
catch {
    Write-Output "Error removing Z: drive: $($_.Exception.Message)" | Add-Content -Path $LogPath
}

# Backup user data if configured
$userFolder = "\\WIN-D2PQBCI88JQ\UserFolders\$env:USERNAME"
$documentsFolder = [Environment]::GetFolderPath("MyDocuments")
$backupFolders = @("Desktop", "Documents", "Pictures")

foreach ($folder in $backupFolders) {
    $sourcePath = Join-Path -Path $documentsFolder -ChildPath "..\$folder"
    $destPath = Join-Path -Path $userFolder -ChildPath $folder
    
    if (Test-Path $sourcePath) {
        try {
            # Create destination folder if it doesn't exist
            if (-not (Test-Path $destPath)) {
                New-Item -Path $destPath -ItemType Directory -Force -ErrorAction Stop
            }
            
            # Copy only new or modified files
            $files = Get-ChildItem -Path $sourcePath -Recurse -File
            foreach ($file in $files) {
                $destFile = Join-Path -Path $destPath -ChildPath $file.FullName.Substring($sourcePath.Length + 1)
                $destFileDir = Split-Path -Path $destFile -Parent
                
                if (-not (Test-Path $destFileDir)) {
                    New-Item -Path $destFileDir -ItemType Directory -Force -ErrorAction Stop
                }
                
                if (-not (Test-Path $destFile) -or (Get-Item $file).LastWriteTime -gt (Get-Item $destFile).LastWriteTime) {
                    Copy-Item -Path $file.FullName -Destination $destFile -Force -ErrorAction Stop
                }
            }
            Write-Output "Successfully backed up $folder folder" | Add-Content -Path $LogPath
        }
        catch {
            Write-Output "Error backing up $folder folder: $($_.Exception.Message)" | Add-Content -Path $LogPath
        }
    }
}

# Clear temporary files
try {
    Remove-Item -Path "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Output "Cleared temporary files" | Add-Content -Path $LogPath
}
catch {
    Write-Output "Error clearing temporary files: $($_.Exception.Message)" | Add-Content -Path $LogPath
}

# Log the script completion
Add-Content -Path $LogPath -Value "Logoff script completed at $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"

# Final notification (this may not be shown if logoff proceeds quickly)
try {
    $wshell.Popup("Logoff script completed successfully.", 2, "Domain Logoff Script", 0x0 + 0x40)
}
catch {
    # If popup fails, it's likely because the user session is already ending
}