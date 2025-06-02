# 🔁 Logon/Logoff Scripts via Group Policy

In this section, I configured logon scripts using Group Policy to automate specific actions when users log into the domain. These scripts enhance user experience, enforce configurations, and streamline administrative tasks.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Logon-Logoff Scripts Policy  
- **Linked To:** Employees OU

📸 **Group Policy Management Console Showing Logon Scripts Policy Linked to Employees OU**

![Group Policy Management Console Showing Logon Scripts Policy Linked to the Employees OU](https://github.com/user-attachments/assets/f3db2fc7-ea2c-445d-820d-5cc2ab3a9646)

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

![Logon Script Configuration Dialog Box With Script Path](https://github.com/user-attachments/assets/74d92936-846d-43fe-9c54-d38b694f5c74)

![Logon Script Configuration Dialog Box With Script Path 1](https://github.com/user-attachments/assets/dc55aa38-6d5e-4975-9f47-81747e010905)

📸 **Logoff Script Configuration Dialog Box With Script Path**

![Logoff Script Configuration Dialog Box With Script Path](https://github.com/user-attachments/assets/e717abda-5c25-4fc8-ae61-4346fcbc0929)

![Logoff Script Configuration Dialog Box With Script Path 1](https://github.com/user-attachments/assets/8ac1508c-4fdd-4040-9131-0760ed43d950)

📸 **Logon Script Contents in PowerShell ISE**

![Logon Script Contents in PowerShell ISE](https://github.com/user-attachments/assets/8e539a85-e9da-4fd7-8865-3c4aa7b83268)

![Logon Script Contents in PowerShell ISE 1](https://github.com/user-attachments/assets/fdf06bc8-258f-4381-beba-3612166e0cc5)

![Logon Script Contents in PowerShell ISE 2](https://github.com/user-attachments/assets/358d6aba-5f7b-4a2d-a8d0-9a70871ab4d1)

📸 **Logoff Script Contents in PowerShell ISE**

![Logoff Script Contents in PowerShell ISE](https://github.com/user-attachments/assets/997da23d-634d-4f86-b7e0-63b80198c645)

![Logoff Script Contents in PowerShell ISE 1](https://github.com/user-attachments/assets/e7382673-7ec5-431f-8131-2c60fb4008e5)

![Logoff Script Contents in PowerShell ISE 2](https://github.com/user-attachments/assets/9fd4604f-a8e3-48d3-a1e5-2a2a8c5e5b82)

---

## 📂 3. Script Contents

Here’s an example of what my `LogonScript.ps1` included:

``` powershell
# LogonScript.ps1
# Location: \\hughdomain.local\NETLOGON\LogonScript.ps1
# (Which points to C:\WINDOWS\SYSVOL\sysvol\hughdomain.local\SCRIPTS\LogonScript.ps1)

# ----- CONFIGURATION -----
$ServerName = "WINSERVER2025"
$ServerIP = "192.168.1.10"
$LogLocations = @(
    "\\$ServerIP\LogFiles\$env:USERNAME-logon.log",
    "\\$ServerName\LogFiles\$env:USERNAME-logon.log",
    "C:\Windows\Temp\Logs\$env:USERNAME-logon.log"
)

# ----- INITIALIZATION -----
# Create local log directory if needed
if (-not (Test-Path "C:\Windows\Temp\Logs")) {
    New-Item -Path "C:\Windows\Temp\Logs" -ItemType Directory -Force | Out-Null
}

```
The script creates a message on the user's desktop after logging in.

Here’s an example of what my `LogoffScript.ps1` included:
```
# LogoffScript.ps1 for hughdomain.local
# Save to: \\hughdomain.local\NETLOGON\LogoffScript.ps1

# ----- CONFIGURATION -----
$ServerName = "WINSERVER2025"
$ServerIP = "192.168.1.10"
$LogLocations = @(
    "\\$ServerIP\LogFiles\$env:USERNAME-logoff.log",
    "\\$ServerName\LogFiles\$env:USERNAME-logoff.log",
    "C:\Windows\Temp\Logs\$env:USERNAME-logoff.log"
)

# ----- INITIALIZATION -----
# Create local log directory if needed
if (-not (Test-Path "C:\Windows\Temp\Logs")) {
    New-Item -Path "C:\Windows\Temp\Logs" -ItemType Directory -Force | Out-Null
}

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
