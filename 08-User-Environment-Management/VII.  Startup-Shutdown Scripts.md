# 🔁 Startup-Shutdown Scripts Policy
This policy configures startup and shutdown scripts via Group Policy to run essential system-level tasks when computers boot up or shut down.

---

## 🏷️ 1. GPO Name
- **GPO Name:** Startup-Shutdown Scripts
- **Linked To:** Employees OU

📸 **Group Policy Management Console Showing Startup Shutdown Scripts Policy Linked to Employees OU:**

<img width="1920" height="909" alt="Group Policy Management Console Showing Startup Shutdown Scripts Policy Linked to Employees OU" src="https://github.com/user-attachments/assets/37b97a5e-4a89-4422-bae3-42b391b733cf" />

---

## 🗂️ 2. Script Paths

Using the **Group Policy Management Editor**, I navigated to:<br /> 
    📂 `Computer Configuration > Policies > Windows Settings > Scripts (Startup/Shutdown)`

### 🔼 Startup Script

- Script Name: `startup.ps1`

- Location: `"\\hughdomain.local\SysVol\hughdomain.local\Policies\{696BCAFA-C546-4B3F-B498-670136FDF566}\Machine\Scripts\Startup"`

- Script Type: PowerShell

### 🔽 Shutdown Script

- Script Name: `shutdown.ps1`

- Location: `"\\hughdomain.local\SysVol\hughdomain.local\Policies\{696BCAFA-C546-4B3F-B498-670136FDF566}\Machine\Scripts\Shutdown"`

- Script Type: PowerShell

📸 **Startup Properties Windows With Scripts Added**

<img width="1920" height="909" alt="Startup Properties Windows With Scripts Added" src="https://github.com/user-attachments/assets/7a407418-e873-47fd-82ea-60b8e287590b" /><br />

<img width="1920" height="909" alt="Startup Properties Windows With Scripts Added 1" src="https://github.com/user-attachments/assets/c1e45e98-ee46-4e8d-94c5-e9eff15fa90b" /><br />

📸 **Shutdown Properties Windows With Scripts Added**

<img width="1920" height="909" alt="Shutdown Properties Windows With Scripts Added" src="https://github.com/user-attachments/assets/de0099d7-40ed-4546-b4a4-b9f1504f23fd" /><br />

<img width="1920" height="909" alt="Shutdown Properties Windows With Scripts Added 1" src="https://github.com/user-attachments/assets/1a5c8962-a260-4629-bdc7-0f13cf7a802c" /><br />

📸 **Startup and Shutdown Scripts Location**

<img width="1920" height="909" alt="Startup and Shutdown Scripts Location" src="https://github.com/user-attachments/assets/78275fab-4e1f-4f0e-b61c-2b6a7620dd37" /><br />

📸 **Startup Script Location**

<img width="1920" height="909" alt="Startup Script Location" src="https://github.com/user-attachments/assets/90146197-c520-4c87-b25c-2b20179ede41" />

📸 **Shutdown Script Location**

<img width="1920" height="909" alt="Shutdown Script Location" src="https://github.com/user-attachments/assets/51b10c3a-aab2-4445-a68b-4192fb8bc44b" />

---

## 🔧 3. Script Functionality

These scripts were used to maintain operational visibility and enforce configurations at the system level.

**Startup Script Tasks:**
- Logs boot time and system health info to `"\\WINSERVER2025\LogFiles\Startup\$env:COMPUTERNAME-$(Get-Date -Format 'yyyyMMdd').csv"`
- Displays a user-friendly popup notification
- Updates Windows Defender definitions
- Checks for and logs pending Windows Updates
- Generates a system health report (disk space, memory, uptime)

💻 **Example:** `startup.ps1`

``` powershell 
# StartupScript.ps1 for hughdomain.local
# Saved to: \\hughdomain.local\SysVol\hughdomain.local\Policies\{696BCAFA-C546-4B3F-B498-670136FDF566}\Machine\Scripts\Startup\StartupScript.ps1

<#
.SYNOPSIS
    Domain computer startup script for hughdomain.local
.DESCRIPTION
    Performs system health checks, security updates, and maintenance tasks
.NOTES
    Version: 3.2
    Requires: PowerShell 5.1+
#>

#region Initialization
$ErrorActionPreference = "Continue"
$scriptVersion = "3.7"
$scriptStartTime = Get-Date
$logPath = "\\WINSERVER2025\LogFiles\Startup\$env:COMPUTERNAME-$(Get-Date -Format 'yyyyMMdd').csv"
$verboseLog = "$env:TEMP\StartupScript_Verbose.log"

# Clear previous verbose log
if (Test-Path $verboseLog) { Remove-Item $verboseLog -Force }

function Write-ProgressLog {
    param([string]$Message)
    Add-Content -Path $verboseLog -Value "[$(Get-Date -Format 'HH:mm:ss')] $Message"
    Write-Host $Message -ForegroundColor Cyan
}

function Log-Action {
    param([string]$Action, [string]$Status, [string]$Details)
    Add-Content -Path $logPath -Value "$(Get-Date -Format o),$env:COMPUTERNAME,$Action,$Status,$Details"
    Write-ProgressLog "[$Action] $Status - $Details"
}

# Start with clear header
Write-ProgressLog "=== CLOSED ENVIRONMENT STARTUP v$scriptVersion ==="
Write-ProgressLog "Initiated at: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Write-ProgressLog "Computer: $env:COMPUTERNAME"
Write-ProgressLog "User: $env:USERNAME"
#endregion

#region Share Verification
$requiredShares = @(
    "\\hughdomain.local\ITResources\DefenderUpdates",
    "\\WINSERVER2025\DefenderUpdates",
    "\\hughdomain.local\NETLOGON\DefenderUpdates"
)

Write-ProgressLog "`n=== SHARE VERIFICATION ==="
$availableShares = @()

foreach ($share in $requiredShares) {
    try {
        $exists = Test-Path $share -ErrorAction Stop
        Write-ProgressLog "$(if($exists){'✓'}else{'×'}) $share"
        if ($exists) { $availableShares += $share }
    }
    catch {
        Write-ProgressLog "× $share (Access Denied)" -ForegroundColor Red
    }
}

```

**Shutdown Script Tasks:**
- Logs shutdown events and system uptime
- Displays a shutdown popup
- Captures currently logged-in users
- Detects pending Windows Updates requiring reboot
- Begins disk cleanup using built-in VolumeCaches

💻 **Example:** `shutdown.ps1`

```powershell
# ShutdownScript.ps1 for hughdomain.local
# Saved to: \\hughdomain.local\SysVol\hughdomain.local\Policies\{696BCAFA-C546-4B3F-B498-670136FDF566}\Machine\Scripts\Shutdown\ShutdownScript.ps1

<#
.SYNOPSIS
    Domain computer shutdown script for hughdomain.local
.DESCRIPTION
    Performs system state logging, maintenance tasks, and cleanup operations
.NOTES
    Version: 3.2
    Requires: PowerShell 5.1+
#>

#region Initialization
$ErrorActionPreference = "Stop"
$logPath = "\\WINSERVER2025\LogFiles\Shutdown\$env:COMPUTERNAME-$(Get-Date -Format 'yyyyMMdd').csv"
$maxLogAge = 30 # Days to keep logs

# Ensure log directory exists
try {
    if (-not (Test-Path (Split-Path $logPath -Parent))) {
        New-Item -ItemType Directory -Path (Split-Path $logPath -Parent) -Force | Out-Null
    }
    
    # Create CSV header if new log
    if (-not (Test-Path $logPath)) {
        "Timestamp,Computer,Action,Status,Details" | Out-File $logPath
    }
    
    # Clean up old logs
    Get-ChildItem -Path (Split-Path $logPath -Parent) -Filter "$env:COMPUTERNAME-*.csv" |
        Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-$maxLogAge) } |
        Remove-Item -Force
}
catch {
    # Fallback to local logging if network unavailable
    $logPath = "$env:ProgramData\ShutdownScript.log"
    "Failed to access network log location: $($_.Exception.Message)" | Out-File $logPath -Append
}

function Log-Action {
    param(
        [string]$Action,
        [string]$Status,
        [string]$Details
    )
    "$(Get-Date -Format o),$env:COMPUTERNAME,$Action,$Status,$Details" | Out-File $logPath -Append
}

# Start logging
Log-Action -Action "ScriptStart" -Status "Running" -Details "Version 3.2"
#endregion

#region Notification
try {
    if ([System.Environment]::UserInteractive) {
        # Try modern toast notification first (requires BurntToast module)
        try {
            Import-Module BurntToast -ErrorAction Stop
            $toastArgs = @{
                Text  = "Preparing system for shutdown, please wait..."
                Title = "Domain Shutdown Script"
                Time  = 3
            }
            New-BurntToastNotification @toastArgs
            Log-Action -Action "Notification" -Status "Success" -Details "Displayed toast notification"
        }
        catch {
            # Fallback to VBS popup if Toast unavailable
            $vbsContent = @"
Set ws = CreateObject("WScript.Shell")
ws.Popup "Preparing system for shutdown, please wait...", 3, "Domain Shutdown Script", 64
"@
            $vbsPath = "$env:TEMP\shutdown-notification.vbs"
            $vbsContent | Out-File $vbsPath -Encoding ASCII
            Start-Process wscript.exe -ArgumentList $vbsPath -WindowStyle Hidden -Wait
            Start-Sleep -Seconds 1
            Remove-Item $vbsPath -Force -ErrorAction SilentlyContinue
            Log-Action -Action "Notification" -Status "Success" -Details "Displayed VBS popup notification"
        }
    }
}
catch {
    Log-Action -Action "Notification" -Status "Failed" -Details $_.Exception.Message
}
#endregion
```
---

🛡️ **Security and Reliability Considerations**

- Scripts are signed
- Log file locations are stored on a secure server with restricted write access
- Error handling is included throughout to ensure script continuity
- Temporary files (e.g., VBS popups) are cleaned up after use

📸 **StartupScript Powershell Test**

![StartupScript Powershell Test](https://github.com/user-attachments/assets/546ab573-8319-441e-a5bd-ad9348e6a0bf)

![StartupScript Powershell Test 1](https://github.com/user-attachments/assets/09499203-03bf-485a-b414-a601af3077c5)

![StartupScript Powershell Test 2](https://github.com/user-attachments/assets/350b1259-4cea-4791-9ce2-777ad70c0839)

📸 **ShutdownScript Powershell Test**

![ShutdownScript Powershell Test](https://github.com/user-attachments/assets/3aaeb593-e9cc-4ba1-8d1c-1120d60fbaa0)

![ShutdownScript Powershell Test 1](https://github.com/user-attachments/assets/77f62081-56e6-4adb-acf0-de0f386d88e7)

📸 **Startup Script Signed**

![Startup Script Signed](https://github.com/user-attachments/assets/7782900f-4fb3-4e0a-ae7e-a5870259e063)

📸 **Shutdown Script Signed**

![Shutdown Script Signed](https://github.com/user-attachments/assets/ed7d54ca-6fb0-48a8-b9ca-35e55fb790b5)

## 👩🏻‍💻 4. Tasks performed

- Logged startup and shutdown times
- Applied system settings
- Enabled activity tracking for compliance and auditing

📸 **Log File Contents Startup**

![Log File Contents Startup](https://github.com/user-attachments/assets/902970b4-ab80-46eb-b837-5e62e757f9f8)

📸 **Log File Contents Shutdown**

![Log File Contents Shutdown](https://github.com/user-attachments/assets/374f88df-002e-40ee-bfdb-9ed1db91ae25)

📸 **Script-Related Entries in Event Viewer**

![Script-Related Entries in Event Viewer](https://github.com/user-attachments/assets/0a4d1f30-7c90-41d9-ae8c-5caabb5417d4)

📸 **Powershell Script-Related Entries in Event Viewer**

![Powershell Script-Related Entries in Event Viewer](https://github.com/user-attachments/assets/c4bd832e-1ad9-4343-9d4c-35712cea5f08)

![Powershell Script-Related Entries in Event Viewer 1](https://github.com/user-attachments/assets/308d7c40-08e2-4f5b-82aa-ec63a61d9e54)

---

## 🗂️ 5. Screenshot Storage

All related screenshots are stored in:<br />  
📂 [`06-Screenshots/XXIV. Startup-Shutdown Scripts`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/tree/main/06-Screenshots/XXIV.%20Startup-Shutdown%20Scripts)
