# 🔁 Logon/Logoff Scripts via Group Policy

In this section, I configured logon scripts using Group Policy to automate specific actions when users log into the domain. These scripts enhance user experience, enforce configurations, and streamline administrative tasks.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Logon-Logoff Scripts Policy  
- **Linked To:** Employees OU

📸 **Group Policy Management Console Showing Logon Scripts Policy Linked to Employees OU**

<img width="1920" height="909" alt="Group Policy Management Console Showing Logon Scripts Policy Linked to the Employees OU" src="https://github.com/user-attachments/assets/198af621-f61b-4782-9519-47e3337c1447" />

---

## 💻 2. Script Configuration Steps

1. Opened **Group Policy Management Editor**.  
2. Navigated to:  
   📂 `User Configuration > Policies > Windows Settings > Scripts (Logon/Logoff)`
3. Double-clicked **Logon**, then clicked **Add...**
4. Double-clicked **Logoff**, then clicked **Add...**
5. Browsed to the script location and added the PowerShell script `LogonScript.ps1`
6. Browsed to the script location and added the PowerShell script `LogoffScript.ps1`
7. Saved and exited the editor.

📸 **Logon Script Configuration Dialog Box With Script Path**

<img width="1920" height="909" alt="Logon Script Configuration Dialog Box With Script Path" src="https://github.com/user-attachments/assets/3a36c199-28b1-4226-ba93-522161375ce1" />

<img width="1920" height="909" alt="Logon Script Configuration Dialog Box With Script Path 1" src="https://github.com/user-attachments/assets/b3aa944a-0354-4c2c-8e30-7cb67a2e23cb" />

📸 **Logoff Script Configuration Dialog Box With Script Path**

<img width="1920" height="909" alt="Logoff Script Configuration Dialog Box With Script Path" src="https://github.com/user-attachments/assets/c9845852-dd3e-44ff-a7a0-056e113e3c0f" />

<img width="1920" height="909" alt="Logoff Script Configuration Dialog Box With Script Path 1" src="https://github.com/user-attachments/assets/d650fb35-16fe-48a5-8234-9a44f11beba2" />

📸 **Logon Script Contents in PowerShell ISE**

<img width="1920" height="909" alt="Logon Script Contents in PowerShell ISE" src="https://github.com/user-attachments/assets/50655371-2729-4520-bb03-5954a742ddbf" /><br />

<img width="1920" height="909" alt="Logon Script Contents in PowerShell ISE 1" src="https://github.com/user-attachments/assets/4cb20f61-d727-4767-8460-9814b27db6cc" /><br />

<img width="1920" height="909" alt="Logon Script Contents in PowerShell ISE 2" src="https://github.com/user-attachments/assets/c56f0b71-a77c-47a6-8649-93c8d61aa35a" /><br />

📸 **Logoff Script Contents in PowerShell ISE**

<img width="1920" height="909" alt="Logoff Script Contents in PowerShell ISE" src="https://github.com/user-attachments/assets/d171d4a5-c53b-4551-a50c-aa4e45c68558" />

<img width="1920" height="909" alt="Logoff Script Contents in PowerShell ISE 1" src="https://github.com/user-attachments/assets/8cc4a7f3-ffa0-43f2-91f7-315500a645d4" />

📸 **Logon Script Signed**

<img width="1920" height="909" alt="Logon Script Signed" src="https://github.com/user-attachments/assets/84efc946-bbe9-4f47-bc71-416b1d0387bb" /><br />

<img width="1920" height="909" alt="Logon Script Signed 1" src="https://github.com/user-attachments/assets/89f0cca0-0ef3-4ab3-bb2f-7406490540b5" /><br />

📸 **Logoff Script Signed**

<img width="1920" height="909" alt="Logoff Script Signed" src="https://github.com/user-attachments/assets/72f551d9-6b7f-45cf-aa64-37b09a6726b7" /><br />

<img width="1920" height="909" alt="Logoff Script Signed 1" src="https://github.com/user-attachments/assets/95366927-fe3d-4cdd-a26c-ba8f550545b0" />

---

## 📂 3. Script Contents

Here’s a excerpt of what my `LogonScript.ps1` included:

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

The script creates a message on the user's desktop after logging on.

Here’s a excerpt of what my `LogoffScript.ps1` included:

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

The script creates a message on the user's desktop after logging off.

## 🧪 4. Testing the Script

**Logon Script Verification:**

1. Logged in to hughdomain.local as a standard domain user
2. Observed the following automated behaviors:
   * ✔️ "Logon script is running" notification appeared (5-second timeout)
   * ✔️ Z: drive successfully mapped to `\\WINSERVER2025\ITSecurity Shared Drive`
   * ✔️ S: drive successfully mapped to `\\WINSERVER2025\DepartmentalShares`
   * ✔️ User folder created at `\\WINSERVER2025\FileShares$\<username>` (if first logon)
   * ✔️ Outlook signatures deployed (if template existed for user)
   * ✔️ Completion notification displayed
3. Verified log file creation at:
   * `\\WINSERVER2025\LogFiles\<username>-logon.log`
   * Confirmed timestamp, username, and computer name were recorded
   * Checked success/failure messages for all operations

**Logoff Script Verification:**

1. Initiated logoff sequence
2. Confirmed:
   * ✔️ "Logoff script is running" notification appeared
   * ✔️ Z: drive was automatically disconnected
   * ✔️ S: drive was automatically disconnected
   * ✔️ User data (Desktop/Documents/Pictures) backed up to network folder
   * ✔️ Temporary files cleared from %TEMP%

3. Verified logoff entry in:
   `\\WINSERVER2025\LogFiles<username>-logoff.log`

📸 **Logon Notification Popup**

![Logon Notification Popup](https://github.com/user-attachments/assets/6a64e746-3341-4e49-a0a2-c78a074ddc0a)

![Logon Notification Popup 1](https://github.com/user-attachments/assets/cc9c2a85-8b8d-4ba9-a6d1-db94df9298b0)

📸 **File Explorer Showing Mapped S Drive And Network User Folder**

![File Explorer Showing Mapped S Drive And Network User Folder](https://github.com/user-attachments/assets/f901c3dd-95bb-495d-8b50-8fe1176113a5)

📸 **Sample Log File Contents Showing Successful Operations**

![Sample Log File Contents Showing Successful Operations](https://github.com/user-attachments/assets/9c395359-caaa-4da5-8ba2-f28b9cae72ec)

Logoff notification popup (if captured before session termination)

🔍 **Validation Checklist:**

* All users receive consistent drive mappings
* Log files are writable by standard users
* Backup process preserves file structure/permissions
* No errors in PowerShell event logs (`Win+R → eventvwr.msc`)

---

## 🗂️ 5. Screenshot Storage

All images related to this section are stored in:
📂 [`06-Screenshots/Logon-Scripts/Logon-Logoff Script-Desktop.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/XIII.%20Logon-Logoff%20Scripts/II.%20Logon-Logoff%20Desktop.md)
