# 🔁 Logon-Logoff Scripts Policy

This document outlines how I configured **logon-loggoff scripts via Group Policy** to automate tasks and customize the user environment upon login.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Logon-Logoff Scripts Policy  
- **Linked To:** hughdomain.local

📸 **Screenshot suggestion:**
![Group Policy Management Console Showing Logon Scripts Policy](https://github.com/user-attachments/assets/bd046d0d-e96c-4ada-9417-0faf223f2f64)

---

## 🛠️ 2. Script Settings Configuration

I configured scripts using:

📂 `User Configuration > Policies > Windows Settings > Scripts (Logon-Logoff)`

### ➕ Logon Script Configuration

- **Script Name:**
 - `LogonScript.ps1`
 - `LogoffScript.ps1`  
- **Location:**
 - `\\hughdomain.local\SysVol\hughdomain.local\Policies\{FA47D7AB-C6A5-4898-9D72-3C0AE53F0246}\User\Scripts\Logon`
 - `\\hughdomain.local\SysVol\hughdomain.local\Policies\{FA47D7AB-C6A5-4898-9D72-3C0AE53F0246}\User\Scripts\Logoff`  
- **Script Type:** PowerShell

📸 **Screenshot:**
![Logon Properties Window Showing The Added PowerShell Script](https://github.com/user-attachments/assets/db482f6b-4aad-41ee-8284-7edce454bb8f)

![Logoff Properties window showing the added PowerShell script](https://github.com/user-attachments/assets/021c7348-c065-4bda-aab1-d8fbef0e2051)

![Logon File Location In The SysVol Share](https://github.com/user-attachments/assets/8817a049-18c8-461b-a4b0-a45b7c9ccf5d)

![Logoff File Location In The SysVol Share](https://github.com/user-attachments/assets/8c51ea24-a6a9-412c-a9be-f026b31d1285)

---

## 🔧 3. Logon Script Functionality
The PowerShell logon script performs the following actions when a user logs in to the **hughdomain.local domain:**

1. **User Notification**

 * Displays a popup notification indicating the logon script is running

 * Shows a completion message when finished

2. **Logging & Auditing**

 * Records logon events to a centralized log file (`\\WIN-D2PQBCI88JQ\LogFiles\<USERNAME>-logon.log`)

 * Logs timestamp, username, and source computer for each logon

3. **Drive Mapping**

 * Maps persistent Z: drive to `\\WIN-D2PQBCI88JQ\SharedDocs`

 * Includes error handling and logging for drive mapping failures

 * Removes existing Z: drive mappings before reconnection

4. **User Folder Management**

 * Creates personalized folders in `\\WIN-D2PQBCI88JQ\UserFolders\<USERNAME>` if they don't exist

5. **Outlook Signature Deployment**

 * Copies user-specific Outlook signatures from a network template location to the local Signatures folder

### `LogonScript.ps1`

```powershell
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
```
## 🔌 3.1  Logoff Script Functionality
The PowerShell logoff script executes the following when a user logs off:

1. **User Notification**

 * Displays a popup notification indicating the logoff process has started

2. **Logging & Auditing**

 * Records logoff events to `\\WIN-D2PQBCI88JQ\LogFiles\<USERNAME>-logoff.log`

 * Tracks timestamp, username, and source computer

3. **Resource Cleanup**

 * Safely disconnects mapped Z: drive

 * Clears temporary files from `%TEMP%`

4. **User Data Backup**

 * Performs incremental backup of key folders (Desktop, Documents, Pictures) to the user's network folder

 * Only copies new or modified files to optimize performance

 * Maintains original folder structure during backup

5. **Session Termination**

 * Attempts to display a completion notification (may not appear if logoff is rapid)

 * Logs final completion timestamp

### `LogoffScript.ps1`

```powershell
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
```

### ✅ 4. Testing and Validation
To validate the script:

1. Ensured the files were placed in the \\hughdomain.local\SysVol\hughdomain.local\Policies\{FA47D7AB-C6A5-4898-9D72-3C0AE53F0246}\User shared folder.

2. Logged in as a domain user.

3. Verified:

  * Welcome message displayed

  * Z: drive mounted

  * Log file created

📸 Screenshot:
![PowerShell execution results (from user logon) 1](https://github.com/user-attachments/assets/69d2e049-253a-45db-ae81-331e7c8238b3)

![PowerShell execution results (from user logon) 2](https://github.com/user-attachments/assets/b572b6cd-35b4-4533-bf84-03a9d16885a7)

![PowerShell execution results (from user logon) 3](https://github.com/user-attachments/assets/b21b2e59-defd-4071-8207-eed819906f7d)

![Log File Entry In ServerLogs](https://github.com/user-attachments/assets/e80ff5a3-b01a-4c81-b2d9-863f16e32f09)

🗂️ 5. Screenshot Storage
Store all relevant images in:
📂 [`06-Screenshots/Logon-Scripts/Logon-Scripts/logon-script-config`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/XIII.%20Logon-Logoff%20Scripts/I.%20Logon-Logoff%20Config.md)
