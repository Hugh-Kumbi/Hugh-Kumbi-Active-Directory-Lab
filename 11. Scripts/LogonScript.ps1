# PowerShell Logon Script for hughdomain.local
# Save as LogonScript.ps1 in \\hughdomain.local\SYSVOL\hughdomain.local\scripts\

# Display notification to user
$wshell = New-Object -ComObject Wscript.Shell
$wshell.Popup("Logon script is running. Please wait...", 5, "Domain Logon Script", 0x0 + 0x40)

# Log the logon event
$LogPath = "\\WIN-D2PQBCI88JQ\LogFiles\$env:USERNAME-logon.log"
$LogMessage = "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') - User $env:USERNAME logged on from computer $env:COMPUTERNAME"
Add-Content -Path $LogPath -Value $LogMessage

# Map network drives
try {
    # Remove any existing Z drive mapping
    if (Test-Path "Z:\") {
        Remove-PSDrive -Name "Z" -Force -ErrorAction SilentlyContinue
    }
    
    # Map the Z drive to shared documents
    New-PSDrive -Name "Z" -PSProvider FileSystem -Root "\\WIN-D2PQBCI88JQ\SharedDocs" -Persist -ErrorAction Stop
    Write-Output "Successfully mapped Z: drive to \\WIN-D2PQBCI88JQ\SharedDocs" | Add-Content -Path $LogPath
} 
catch {
    Write-Output "Error mapping Z: drive: $($_.Exception.Message)" | Add-Content -Path $LogPath
}

# Create user folders if they don't exist
$userFolder = "\\WIN-D2PQBCI88JQ\UserFolders\$env:USERNAME"
if (-not (Test-Path $userFolder)) {
    try {
        New-Item -Path $userFolder -ItemType Directory -Force -ErrorAction Stop
        Write-Output "Created user folder: $userFolder" | Add-Content -Path $LogPath
    }
    catch {
        Write-Output "Error creating user folder: $($_.Exception.Message)" | Add-Content -Path $LogPath
    }
}

# Set up Outlook signature if applicable
$SignatureSource = "\\WIN-D2PQBCI88JQ\Templates\Signatures\$env:USERNAME"
$SignatureDest = "$env:APPDATA\Microsoft\Signatures"
if (Test-Path $SignatureSource) {
    try {
        # Create Signatures directory if it doesn't exist
        if (-not (Test-Path $SignatureDest)) {
            New-Item -Path $SignatureDest -ItemType Directory -Force -ErrorAction Stop
        }
        
        # Copy signature files
        Copy-Item -Path "$SignatureSource\*" -Destination $SignatureDest -Recurse -Force -ErrorAction Stop
        Write-Output "Successfully copied Outlook signatures" | Add-Content -Path $LogPath
    }
    catch {
        Write-Output "Error copying Outlook signatures: $($_.Exception.Message)" | Add-Content -Path $LogPath
    }
}

# Final notification to user
$wshell.Popup("Logon script completed successfully.", 3, "Domain Logon Script", 0x0 + 0x40)