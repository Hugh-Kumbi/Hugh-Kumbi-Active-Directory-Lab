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

- Location: `\\hughdomain.local\SysVol\hughdomain.local\Policies\{F790A831-590B-45C2-94DC-4054DC2022A8}\Machine\Scripts\Startup`

- Script Type: PowerShell

### 🔽 Shutdown Script

- Script Name: `shutdown.ps1`

- Location: `\\hughdomain.local\SysVol\hughdomain.local\Policies\{F790A831-590B-45C2-94DC-4054DC2022A8}\Machine\Scripts\Shutdown`

- Script Type: PowerShell

📸 **Startup Properties Windows With Scripts Added**

![Startup Properties Windows With Scripts Added](https://github.com/user-attachments/assets/9ef094c7-78eb-4c63-9058-a07118dc14bd)

![Startup Properties Windows With Scripts Added 1](https://github.com/user-attachments/assets/8dab2220-6948-427b-a8ed-e7c2ab2c67ca)

📸 **Shutdown Properties Windows With Scripts Added**

![Shutdown Properties Windows With Scripts Added](https://github.com/user-attachments/assets/03330484-0fe5-45b4-ba46-7b92b1cfd622)

![Shutdown Properties Windows With Scripts Added 1](https://github.com/user-attachments/assets/d2eb7dbb-9192-4a32-90d1-10c97467ba39)

📸 **Startup File Location**

![Startup File Location](https://github.com/user-attachments/assets/46b99365-e5df-404b-b0f8-72597c9fc365)

📸 **Shutdown File Location**

![Shutdown File Location](https://github.com/user-attachments/assets/092916fc-645c-4448-bc5c-7b2a4e94f5e0)

---

## 🔧 3. Script Functionality

These scripts were used to maintain operational visibility and enforce configurations at the system level.

**Startup Script Tasks:**
- Logs boot time and system health info to `\\WINSERVER2025\LogFiles\`
- Displays a user-friendly popup notification
- Updates Windows Defender definitions
- Checks for and logs pending Windows Updates
- Generates a system health report (disk space, memory, uptime)

💻 **Example:** `startup.ps1`

``` powershell 
# StartupScript.ps1 for hughdomain.local
# Save to: \\hughdomain.local\SysVol\hughdomain.local\Policies\{F790A831-590B-45C2-94DC-4054DC2022A8}\Machine\Scripts\Startup\StartupScript.ps1

# ----- CONFIGURATION -----
$ServerName = "WINSERVER2025"
$ServerIP = "192.168.1.10"
$LogLocations = @(
    "\\$ServerIP\LogFiles\$env:COMPUTERNAME-startup.log",
    "\\$ServerName\LogFiles\$env:COMPUTERNAME-startup.log",
    "C:\Windows\Temp\Logs\$env:COMPUTERNAME-startup.log"
)

# ----- INITIALIZATION -----
# Create local log directory if needed
if (-not (Test-Path "C:\Windows\Temp\Logs")) {
    New-Item -Path "C:\Windows\Temp\Logs" -ItemType Directory -Force | Out-Null
}

# ----- LOGGING FUNCTION -----
function Write-StartupLog {
    param($Message)
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $logEntry = "[$timestamp] $Message"
    
    foreach ($logPath in $LogLocations) {
        try {
            # Handle local vs network paths
            if ($logPath -like "C:*") {
                $logDir = Split-Path $logPath -Parent
                if (-not (Test-Path $logDir)) { New-Item -Path $logDir -ItemType Directory -Force | Out-Null }
            }
            
            Add-Content -Path $logPath -Value $logEntry -ErrorAction Stop
            return $true
        } catch {
            # Continue to next log location
        }
    }
    return $false
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
# Save to: \\hughdomain.local\SysVol\hughdomain.local\Policies\{F790A831-590B-45C2-94DC-4054DC2022A8}\Machine\Scripts\Shutdown\ShutdownScript.ps1

# ----- CONFIGURATION -----
$ServerName = "WINSERVER2025"
$ServerIP = "192.168.1.10"
$LogLocations = @(
    "\\$ServerIP\LogFiles\$env:COMPUTERNAME-shutdown.log",
    "\\$ServerName\LogFiles\$env:COMPUTERNAME-shutdown.log",
    "C:\Windows\Temp\Logs\$env:COMPUTERNAME-shutdown.log"
)

# ----- INITIALIZATION -----
# Create local log directory if needed
if (-not (Test-Path "C:\Windows\Temp\Logs")) {
    New-Item -Path "C:\Windows\Temp\Logs" -ItemType Directory -Force | Out-Null
}

# ----- LOGGING FUNCTION -----
function Write-ShutdownLog {
    param($Message)
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $logEntry = "[$timestamp] $Message"
    
    foreach ($logPath in $LogLocations) {
        try {
            # Handle local vs network paths
            if ($logPath -like "C:*") {
                $logDir = Split-Path $logPath -Parent
                if (-not (Test-Path $logDir)) { New-Item -Path $logDir -ItemType Directory -Force | Out-Null }
            }
            
            Add-Content -Path $logPath -Value $logEntry -ErrorAction Stop
            return $true
        } catch {
            # Continue to next log location
        }
    }
    return $false
}

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

All related screenshots are stored in:  
📂 [`06-Screenshots/Startup/Shutdown-Scripts/Startup/Shutdown-Scripts/Startup/Shutdown-script-config.png`]()
