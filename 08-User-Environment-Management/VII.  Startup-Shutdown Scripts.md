# 🔁 Startup/Shutdown Scripts Policy
This policy configures startup and shutdown scripts via Group Policy to run essential system-level tasks when computers boot up or shut down.

---

## 🏷️ 1. GPO Name
- **GPO Name:** Startup/Shutdown Scripts
- **Linked To:** Tech OU

📸 **Startup Shutdown Scripts Policy Linked to Tech OU:**

![Startup Shutdown Scripts Policy Linked to OU](https://github.com/user-attachments/assets/0db30914-40b0-4534-bf5b-5ef72aff1206)

---

## 🗂️ 2. Script Paths

    📂 `Computer Configuration > Policies > Windows Settings > Scripts (Startup/Shutdown)`

### 🔼 Startup Script

- Script Name: `startup.ps1`

- Location: `\\hughdomain.local\SYSVOL\hughdomain.local\scripts\StartupScript.ps1`

- Script Type: PowerShell

### 🔽 Shutdown Script

- Script Name: shutdown.ps1

- Location: `\\hughdomain.local\SYSVOL\hughdomain.local\scripts\ShutdownScript.ps1`

- Script Type: PowerShell

📸 **Startup Properties Windows With Scripts Added**

![Startup Scripts Policy Configuration applied 1](https://github.com/user-attachments/assets/f912c453-176b-4ae4-8688-37321b1b5f8c)

![Startup Scripts Policy Configuration applied 2](https://github.com/user-attachments/assets/e129efe4-9e46-4454-b3dd-a0c6b9fa1bee)

📸 **Shutdown Properties Windows With Scripts Added**

![Shutdown Scripts Policy Configuration applied](https://github.com/user-attachments/assets/b6df80d3-e3de-432c-b82f-f7afad7d092c)

![Shutdown Scripts Policy Configuration applied 2](https://github.com/user-attachments/assets/4a6db969-1eb8-411c-8de6-60de5a771e34)

📸 **Startup File Locations**

![Startup File Location](https://github.com/user-attachments/assets/43bd462f-aa82-4eb8-b431-e75531e2bd24)

📸 **Shutdown File Locations**

![Shutdown File Location](https://github.com/user-attachments/assets/0bc871a3-57f1-4315-b44b-2167e460c98c)

---

## 🔧 3. Script Functionality

These scripts were used to maintain operational visibility and enforce configurations at the system level.

**Startup Script Tasks:**
- Logs boot time and system health info to `\\WIN-D2PQBCI88JQ\LogFiles\`
- Displays a user-friendly popup notification
- Updates Windows Defender definitions
- Checks for and logs pending Windows Updates
- Generates a system health report (disk space, memory, uptime)

💻 **Example:** `startup.ps1`

```
# PowerShell Computer Shutdown Script for hughdomain.local
# Save as ShutdownScript.ps1 in \\hughdomain.local\SYSVOL\hughdomain.local\scripts\

# Display notification
try {
    $message = "Computer shutdown script is running. Please wait..."
    $title = "Domain Shutdown Script"
```
**Shutdown Script Tasks:**
- Logs shutdown events and system uptime
- Displays a shutdown popup
- Captures currently logged-in users
- Detects pending Windows Updates requiring reboot
- Begins disk cleanup using built-in VolumeCaches

💻 **Example:** `shutdown.ps1`

```
# PowerShell Computer Startup Script for hughdomain.local
# Save as StartupScript.ps1 in \\hughdomain.local\SYSVOL\hughdomain.local\scripts\

# Set log path
$LogPath = "\\WIN-D2PQBCI88JQ\LogFiles\$env:COMPUTERNAME-startup.log"
```
---

🛡️ **Security and Reliability Considerations**

- Scripts are signed
- Log file locations are stored on a secure server with restricted write access
- Error handling is included throughout to ensure script continuity
- Temporary files (e.g., VBS popups) are cleaned up after use

📸 **StartupScript Powershell Test**

![StartupScript Powershell Test](https://github.com/user-attachments/assets/700cd42b-f587-4ea2-91a1-7e700195e4fa)

📸 **ShutdownScript Powershell Test**

![ShutdownScript Powershell Test](https://github.com/user-attachments/assets/b531a3e2-2935-4bc1-b39d-6b8ec77b7c47)

📸 **Cert signing**

![Cert signing](https://github.com/user-attachments/assets/34164dfe-6bcd-4975-a022-daf8d9531231)

![Cert signing 1](https://github.com/user-attachments/assets/a4990c62-35b7-46eb-872a-50b02e268db3)

![Cert signing 2](https://github.com/user-attachments/assets/44ec6467-7ca0-4a3e-a15a-a0babbeb71ef)

## 👩🏻‍💻 4. Tasks performed

- Logged startup and shutdown times
- Applied system settings
- Enabled activity tracking for compliance and auditing

📸 **Log File Contents Startup**

![Log File Contents Startup](https://github.com/user-attachments/assets/9ab6a712-f801-4359-8f9f-3cc1d66376ee)

📸 **Log File Contents Shutdown**

![Log File Contents Shutdown](https://github.com/user-attachments/assets/b1559bf2-eb99-413f-8b11-4102cf3f7a31)

📸 **Script-Related Entries in Event Viewer**

![Script-Related Entries in Event Viewer](https://github.com/user-attachments/assets/87b81369-c222-49dd-ac1c-b1ba9adb163b)

📸 **Powershell Script-Related Entries in Event Viewer**

![Powershell Script-Related Entries in Event Viewer](https://github.com/user-attachments/assets/db1bb8ea-4b1c-4f92-b9ae-1a06b62f41fa)

---

## 🗂️ 5. Screenshot Storage

All related screenshots are stored in:  
📂 [`06-Screenshots/Startup/Shutdown-Scripts/Startup/Shutdown-Scripts/Startup/Shutdown-script-config.png`]()
