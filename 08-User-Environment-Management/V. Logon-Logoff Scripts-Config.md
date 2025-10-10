# 🔁 Logon-Logoff Scripts Policy

This document outlines how I configured **logon-loggoff scripts via Group Policy** to automate tasks and customize the user environment upon login.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Logon-Logoff Scripts Policy  
- **Linked To:** Employees OU

📸 **Group Policy Management Console Showing Logon Scripts Policy Linked to the Employees OU**

<img width="1920" height="909" alt="Group Policy Management Console Showing Logon Scripts Policy Linked to the Employees OU" src="https://github.com/user-attachments/assets/7b877325-cd8e-4929-bbe6-c07b83b93e10" />

---

## 🛠️ 2. Script Settings Configuration

I configured scripts using:<br /> 
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

<img width="1920" height="909" alt="Logon Properties Window Showing The Added PowerShell Script" src="https://github.com/user-attachments/assets/f077a4e5-c10f-4737-b699-8fc6cce0ae1e" /><br />

📸 **Logoff Properties window showing the added PowerShell Script**

<img width="1920" height="909" alt="Logoff Properties window showing the added PowerShell Script" src="https://github.com/user-attachments/assets/d30f9717-f741-473d-a2ac-0fbd9af22f6e" /><br />

📸 **Logon File Location in the SysVol Share**

<img width="1920" height="909" alt="Logon File Location in the SysVol Share" src="https://github.com/user-attachments/assets/bcd3fd05-9eb1-4e28-800e-b24a816d8ed9" /><br />

📸 **Logoff File Location in the SysVol Share**

<img width="1920" height="909" alt="Logoff File Location in the SysVol Share" src="https://github.com/user-attachments/assets/f62eee51-88f3-438d-985a-11a5bb698051" />

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

💻 **Excerpt: `LogonScript.ps1`**

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

💻 **Excerpt: `LogoffScript.ps1`**

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

<img width="1920" height="909" alt="PowerShell Execution Results (from User Logon)" src="https://github.com/user-attachments/assets/2f31b50e-bb20-4b8b-9618-7c508af4e79b" /><br /> 

<img width="1920" height="909" alt="PowerShell Execution Results (from User Logon) 1" src="https://github.com/user-attachments/assets/c69b38bf-f2ec-42fe-85db-5a81d27395f0" /><br /> 

<img width="1920" height="909" alt="PowerShell Execution Results (from User Logon) 2" src="https://github.com/user-attachments/assets/2f830493-0529-4ab7-a9b8-d80094c82753" /><br /> 

<img width="1920" height="909" alt="PowerShell Execution Results (from User Logon) 3" src="https://github.com/user-attachments/assets/117a5010-a59e-4354-ba03-2f45d9a0028c" /><br /> 

<img width="1920" height="909" alt="PowerShell Execution Results (from User Logon) 4" src="https://github.com/user-attachments/assets/1964b891-4235-4499-9953-55ff7e041d39" /><br /> 

<img width="1920" height="909" alt="PowerShell Execution Results (from User Logon) 5" src="https://github.com/user-attachments/assets/acb77931-6ed7-4c03-8f1b-410e61fa2d7f" /><br /> 

<img width="1920" height="909" alt="PowerShell Execution Results (from User Logon) 6" src="https://github.com/user-attachments/assets/4cbae71d-f45d-4c2c-8c00-18c98683553e" /><br /> 

<img width="1920" height="909" alt="PowerShell Execution Results (from User Logon) 7" src="https://github.com/user-attachments/assets/1d4a4095-5ff8-4ccf-ad51-bee55e9b04ca" /><br /> 

<img width="1920" height="909" alt="PowerShell Execution Results (from User Logon) 8" src="https://github.com/user-attachments/assets/16d9e73e-f731-44ca-8860-a4baff299cde" /><br /> 

<img width="1920" height="909" alt="PowerShell Execution Results (from User Logon) 9" src="https://github.com/user-attachments/assets/3b84e3b2-427d-4d26-8205-96573ac0da8a" />

**📸 Log File Entry in ServerLogs**

<img width="1920" height="909" alt="Log File Entry in ServerLogs" src="https://github.com/user-attachments/assets/6372e02b-4678-4800-9913-74ff7272352b" /><br /> 

<img width="1920" height="909" alt="Log File Entry in ServerLogs 1" src="https://github.com/user-attachments/assets/91e5e053-eedd-43f6-b923-ca147b2b726c" /><br /> 

<img width="1920" height="909" alt="Log File Entry in ServerLogs 2" src="https://github.com/user-attachments/assets/bf3db225-57d3-4e7f-aa87-047249adb2e5" /><br /> 

<img width="1920" height="909" alt="Log File Entry in ServerLogs 3" src="https://github.com/user-attachments/assets/890758c6-5e7b-414f-b556-b5b5ff0a9082" />

---

### 🗂️ 5. Screenshot Storage

All images related to this section are stored in:<br /> 
📂 [`06-Screenshots/XIII. Logon-Logoff Scripts/README.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/XIII.%20Logon-Logoff%20Scripts/README.md)
