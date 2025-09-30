# 🔁 Logon-Logoff Scripts Policy

This document outlines how I configured **logon-loggoff scripts via Group Policy** to automate tasks and customize the user environment upon login.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Logon-Logoff Scripts Policy  
- **Linked To:** Employees OU

📸 **Group Policy Management Console Showing Logon Scripts Policy Linked to the Employees OU**

<img width="1920" height="909" alt="Group Policy Management Console Showing Logon Scripts Policy Linked to the Employees OU" src="https://github.com/user-attachments/assets/198af621-f61b-4782-9519-47e3337c1447" />

---

## 🛠️ 2. Script Settings Configuration

I configured scripts using:
 📂 `User Configuration > Policies > Windows Settings > Scripts (Logon-Logoff)`

### ➕ Logon Script Configuration

- **Script Name:**
 - `LogonScript.ps1`
 - `LogoffScript.ps1`  
- **Location:**
 - `\\hughdomain.local\SysVol\hughdomain.local\Policies\{C79F56AD-4E23-443C-89CB-6C2D93A6A25F}\User\Scripts\Logon`
 - `\\hughdomain.local\SysVol\hughdomain.local\Policies\{C79F56AD-4E23-443C-89CB-6C2D93A6A25F}\User\Scripts\Logoff`  
- **Script Type:** PowerShell

📸 **Logon Properties Window Showing The Added PowerShell Script**

![Logon Properties Window Showing The Added PowerShell Script](https://github.com/user-attachments/assets/e09929c7-e635-44f9-936f-3b8a36e0c6fa)

📸 **Logoff Properties window showing the added PowerShell Script**

![Logoff Properties window showing the added PowerShell Script](https://github.com/user-attachments/assets/41da33b4-3300-4e58-af30-9dd72a818c1c)

📸 **Logon File Location in the SysVol Share**

![Logon File Location in the SysVol Share](https://github.com/user-attachments/assets/4d0ec410-9224-45e4-b496-b6b712fad617)

📸 **Logoff File Location in the SysVol Share**

![Logoff File Location in the SysVol Share](https://github.com/user-attachments/assets/8258761a-ce1c-4eef-8e3c-28b61fb6806f)

---

## 🔧 3. Logon Script Functionality
The PowerShell logon script performs the following actions when a user logs in to the **hughdomain.local domain:**

1. **User Notification**
 * Displays a popup notification indicating the logon script is running
 * Shows a completion message when finished
2. **Logging & Auditing**
 * Records logon events to a centralized log file (`"\\WINSERVER2025\LogFiles\$env:USERNAME-$(Get-Date -Format 'yyyyMMdd').csv"`)
 * Logs timestamp, username, and source computer for each logon
3. **Drive Mapping**
 * Maps persistent S: drive to `"\\WINSERVER2025\DepartmentalShares"`
 * Includes error handling and logging for drive mapping failures
 * Removes existing S: drive mappings before reconnection
4. **User Folder Management**
 * Creates personalized folders in `"\\WINSERVER2025\DepartmentalShares\$env:USERNAME"` if they don't exist
5. **Outlook Signature Deployment**
 * Copies user-specific Outlook signatures from a network template location to the local Signatures folder

💻 **Sample: `LogonScript.ps1`**

``` powershell
# LogonScript.ps1
# Location: \\hughdomain.local\SysVol\hughdomain.local\Policies\{C79F56AD-4E23-443C-89CB-6C2D93A6A25F}\User\Scripts\Logon

<#
.SYNOPSIS
    Domain logon script for hughdomain.local
.DESCRIPTION
    Handles drive mapping, folder setup, and user configurations
.NOTES
    Version: 2.0
    Requires: PowerShell 5.1+
#>

#region Initialization
$wshell = New-Object -ComObject Wscript.Shell
$wshell.Popup("Logon script initializing...", 3, "Domain Logon", 0x40)

$logPath = "\\WINSERVER2025\LogFiles\$env:USERNAME-$(Get-Date -Format 'yyyyMMdd').csv"
$logEntries = [System.Collections.Generic.List[string]]::new()

# Create log header if needed
if (-not (Test-Path $logPath)) {
    "Timestamp,User,Computer,Action,Status,Details" | Out-File $logPath
}
#endregion

#region Network Drive Mapping
try {
    # Remove existing mapping if present
    if (Test-Path "S:\") {
        net use S: /delete /y | Out-Null
    }

    # Map new drive
    net use S: "\\WINSERVER2025\DepartmentalShares" /persistent:yes | Out-Null
    $logEntries.Add("$(Get-Date -Format o),$env:USERNAME,$env:COMPUTERNAME,DriveMapping,Success,S: drive mapped")
}
catch {
    $logEntries.Add("$(Get-Date -Format o),$env:USERNAME,$env:COMPUTERNAME,DriveMapping,Failed,$($_.Exception.Message)")
    $wshell.Popup("Failed to map network drives", 5, "Error", 0x30)
}
#endregion

```
---

## 🔌 3.1  Logoff Script Functionality
The PowerShell logoff script executes the following when a user logs off:

1. **User Notification**
 * Displays a popup notification indicating the logoff process has started
2. **Logging & Auditing**
 * Records logoff events to `\\WINSERVER2025\LogFiles\$env:USERNAME-$(Get-Date -Format 'yyyyMMdd').csv`
 * Tracks timestamp, username, and source computer
3. **Resource Cleanup**
 * Safely disconnects mapped S: drive
 * Clears temporary files from `%TEMP%`
4. **User Data Backup**
 * Performs incremental backup of key folders (Desktop, Documents, Pictures) to the user's network folder
 * Only copies new or modified files to optimize performance
 * Maintains original folder structure during backup
5. **Session Termination**
 * Attempts to display a completion notification (may not appear if logoff is rapid)
 * Logs final completion timestamp

💻 **Sample: `LogoffScript.ps1`**

``` powershell
# LogoffScript.ps1 for hughdomain.local
# Location: \\hughdomain.local\SysVol\hughdomain.local\Policies\{C79F56AD-4E23-443C-89CB-6C2D93A6A25F}\User\Scripts\Logoff

<#
.SYNOPSIS
    Domain logoff script for hughdomain.local
.DESCRIPTION
    Fixed version compatible with older PowerShell versions
.NOTES
    Version: 2.4
    Requires: PowerShell 3.0+
#>

#region Initialization
$ErrorActionPreference = "Continue"
$scriptVersion = "2.4"
$executionLog = New-Object System.Collections.Generic.List[pscustomobject]

function Write-ExecutionLog {
    param(
        [string]$Action,
        [string]$Status,
        [string]$Details,
        [string]$Computer = $env:COMPUTERNAME,
        [string]$User = $env:USERNAME
    )
    
    $logEntry = [pscustomobject]@{
        Timestamp = Get-Date -Format o
        User      = $User
        Computer  = $Computer
        Action    = $Action
        Status    = $Status
        Details   = $Details
    }
    
    $executionLog.Add($logEntry)
    
    if ([System.Environment]::UserInteractive) {
        Write-Host "[$(Get-Date -Format 'HH:mm:ss')] $Action - $Status`n$Details`n"
    }
}

Write-ExecutionLog -Action "ScriptStart" -Status "Running" -Details "Version $scriptVersion"

$logPath = "\\WINSERVER2025\LogFiles\$env:USERNAME-$(Get-Date -Format 'yyyyMMdd').csv"
$localLogPath = "$env:TEMP\LogoffScript_$(Get-Date -Format 'yyyyMMddHHmmss').log"

try {
    if (-not (Test-Path $logPath -ErrorAction SilentlyContinue)) {
        "Timestamp,User,Computer,Action,Status,Details" | Out-File $logPath
        Write-ExecutionLog -Action "LogInit" -Status "Success" -Details "Created new log file"
    }
}
catch {
    Write-ExecutionLog -Action "LogInit" -Status "Failed" -Details $_.Exception.Message
}
#endregion

```
---

### ✅ 4. Testing and Validation

To validate the script:
1. Ensured the files were placed in the `"\\hughdomain.local\SysVol\hughdomain.local\Policies\{C79F56AD-4E23-443C-89CB-6C2D93A6A25F}\User"` shared folder.
2. Logged in as a domain user.
3. Verified:
  * Welcome message displayed
  * S: drive mounted
  * Log file created

**📸 PowerShell Execution Results (from User Logon)**

![PowerShell Execution Results (from User Logon)](https://github.com/user-attachments/assets/b02d6320-4da5-4e93-a0cf-95420da1d2db)

![PowerShell Execution Results (from User Logon) 1](https://github.com/user-attachments/assets/e878425b-38a4-49cc-aead-21f0515e483b)

![PowerShell Execution Results (from User Logon) 2](https://github.com/user-attachments/assets/88613b3b-5397-4224-b808-335b59b62ee9)

![PowerShell Execution Results (from User Logon) 3](https://github.com/user-attachments/assets/4bb770b4-1a05-4395-af20-bf43a9144912)

**📸 Log File Entry in ServerLogs**

![Log File Entry in ServerLogs](https://github.com/user-attachments/assets/9c395359-caaa-4da5-8ba2-f28b9cae72ec)

---

### 🗂️ 5. Screenshot Storage

Store all relevant images in:
📂 [`06-Screenshots/Logon-Scripts/Logon-Scripts/logon-script-config`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/XIII.%20Logon-Logoff%20Scripts/I.%20Logon-Logoff%20Config.md)
