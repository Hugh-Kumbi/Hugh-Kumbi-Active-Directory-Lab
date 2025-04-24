# 🔁 Logon/Logoff Scripts via Group Policy

In this section, I configured logon scripts using Group Policy to automate specific actions when users log into the domain. These scripts enhance user experience, enforce configurations, and streamline administrative tasks.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Logon Scripts Policy  
- **Linked To:** The Organizational Unit (OU) containing domain users

📸 **Screenshot:**
![Group Policy Management Console Showing Logon Scripts Policy](https://github.com/user-attachments/assets/bd046d0d-e96c-4ada-9417-0faf223f2f64)

---

## 💻 2. Script Configuration Steps

1. Opened **Group Policy Management Editor**.  
2. Navigated to:  
   `User Configuration > Policies > Windows Settings > Scripts (Logon/Logoff)`

3. Double-clicked **Logon**, then clicked **Add...**
4. Double-clicked **Logoff**, then clicked **Add...**
5. Browsed to the script location and added the PowerShell script `LogonScript.ps1`
6. Browsed to the script location and added the PowerShell script `LogoofScript.ps1`

7. Saved and exited the editor.

📸 **Screenshot:**
![Logon Script Configuration Dialog Box With Script Path 1](https://github.com/user-attachments/assets/61f0a04e-b002-4b07-9d40-f8196eda4e4b)

![Logon Script Configuration Dialog Box With Script Path 2](https://github.com/user-attachments/assets/75e860cd-a227-4cb3-8e46-993ef97e164a)

![Logoff Script Configuration Dialog Box With Script Path 3](https://github.com/user-attachments/assets/513dccb2-909d-4f5b-86df-7eb5a7763d25)

![Logoff Script Configuration Dialog Box With Script Path 4](https://github.com/user-attachments/assets/b7c57fe2-533c-4080-85c8-cf022d3acbdf)

![Logon Script Contents In PowerShell ISE 1](https://github.com/user-attachments/assets/ee206d6d-6eb6-4376-b8ca-8c269def6c50)

![Logon Script Contents In PowerShell ISE 2](https://github.com/user-attachments/assets/00297695-0f27-4ba0-8024-b2a7b499c2ee)

![Logon Script Contents In PowerShell ISE 3](https://github.com/user-attachments/assets/2747e6ae-6cb7-4c43-8b80-b22bb0a841ee)

![Logoff Script Contents In PowerShell ISE 1](https://github.com/user-attachments/assets/fc68c379-de05-4852-9b17-432a631eec58)

![Logoff Script Contents In PowerShell ISE 2](https://github.com/user-attachments/assets/d5bb6c78-899c-47d3-930b-aa88cff4f623)

![Logoff Script Contents In PowerShell ISE 3](https://github.com/user-attachments/assets/77a533b3-b37e-4c4b-b07e-05b7dc4b5935)

---

## 📂 3. Script Contents

Here’s an example of what my `LogonScript.ps1` included:

```powershell
# LogonScript.ps1
# PowerShell Logon Script for hughdomain.local
# Save as LogonScript.ps1 in `\\hughdomain.local\SYSVOL\hughdomain.local\scripts\`

# Display notification to user
$wshell = New-Object -ComObject Wscript.Shell
$wshell.Popup("Logon script is running. Please wait...", 5, "Domain Logon Script", 0x0 + 0x40)

# Log the logon event
$LogPath = "\\WIN-D2PQBCI88JQ\LogFiles\$env:USERNAME-logon.log"
$LogMessage = "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') - User $env:USERNAME logged on from computer $env:COMPUTERNAME"
Add-Content -Path $LogPath -Value $LogMessage"
```
The script creates a message on the user's desktop after logging in.

Here’s an example of what my `LogoffScript.ps1` included:

```powershell
# LogoffScript.ps1
# PowerShell Logoff Script for hughdomain.local
# Save as LogoffScript.ps1 in `\\hughdomain.local\SYSVOL\hughdomain.local\scripts\`

# Display notification to user
$wshell = New-Object -ComObject Wscript.Shell
$wshell.Popup("Logoff script is running. Please wait...", 5, "Domain Logoff Script", 0x0 + 0x40)

# Log the logoff event
$LogPath = "\\WIN-D2PQBCI88JQ\LogFiles\$env:USERNAME-logoff.log"
$LogMessage = "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') - User $env:USERNAME logged off from computer $env:COMPUTERNAME"
Add-Content -Path $LogPath -Value $LogMessage
```
The script creates a message on the user's desktop after logging off.

## 🧪 4. Testing the Script
**Logon Script Verification:**

1. Logged in to hughdomain.local as a standard domain user

2. Observed the following automated behaviors:

   * ✔️ "Logon script is running" notification appeared (5-second timeout)

   * ✔️ Z: drive successfully mapped to `\\WIN-D2PQBCI88JQ\SharedDocs`

   * ✔️ User folder created at `\\WIN-D2PQBCI88JQ\UserFolders\<username>` (if first logon)

   * ✔️ Outlook signatures deployed (if template existed for user)

   * ✔️ Completion notification displayed

3. Verified log file creation at:
   * `\\WIN-D2PQBCI88JQ\LogFiles\<username>-logon.log`

   * Confirmed timestamp, username, and computer name were recorded

   * Checked success/failure messages for all operations

**Logoff Script Verification:**

1. Initiated logoff sequence

2. Confirmed:

   * ✔️ "Logoff script is running" notification appeared

   * ✔️ Z: drive was automatically disconnected

   * ✔️ User data (Desktop/Documents/Pictures) backed up to network folder

   * ✔️ Temporary files cleared from %TEMP%

3. Verified logoff entry in:
   `\\WIN-D2PQBCI88JQ\LogFiles\<username>-logoff.log`

📸 **Screenshot:**
![Logon Notification Popup](https://github.com/user-attachments/assets/1a5be81f-3d4d-4e39-ba0e-dfed1e7cd62e)

![Logon Notification Popup 1](https://github.com/user-attachments/assets/52b30f86-6eef-49e2-a326-46ba776b7bb5)

![File Explorer Showing Mapped Z Drive And Network User Folder](https://github.com/user-attachments/assets/607d6665-69cc-48cf-b143-cfac9d648b2a)

![Sample Log File Contents Showing Successful Operations](https://github.com/user-attachments/assets/9550eb54-f479-44ba-b2ab-eeef7cfeaa8e)

Logoff notification popup (if captured before session termination)

🔍 **Validation Checklist:**

* All users receive consistent drive mappings

* Log files are writable by standard users

* Backup process preserves file structure/permissions

* No errors in PowerShell event logs (`Win+R → eventvwr.msc`)

## 🗂️ 5. Screenshot Storage
All images related to this section are stored in:
📂 [`06-Screenshots/Logon-Scripts/Logon-Logoff Script-Desktop.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/XIII.%20Logon-Logoff%20Scripts/II.%20Logon-Logoff%20Desktop.md)
