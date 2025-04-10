# 🔁 Logon/Logoff Scripts Policy

This document outlines how I configured **logon scripts via Group Policy** to automate tasks and customize the user environment upon login.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Logon Scripts Policy  
- **Linked To:** hughdomain.local or a specific OU containing the user accounts

📸 **Screenshot suggestion:**
- Group Policy Management Console showing “Logon Scripts Policy” linked to the correct OU

---

## 🛠️ 2. Script Settings Configuration

I configured scripts using:

📂 `User Configuration > Policies > Windows Settings > Scripts (Logon/Logoff)`

### ➕ Logon Script Configuration

- **Script Name:** `startup-config.ps1`  
- **Location:** `\\hughdomain.local\NETLOGON\Scripts\startup-config.ps1`  
- **Script Type:** PowerShell

📸 **Screenshot:**
- Logon Properties window showing the added PowerShell script  
- File location in the NETLOGON share

---

## 🔧 3. Script Functionality

The PowerShell logon script was used to:

- Display a welcome message  
- Map a network drive (fallback if GPP fails)  
- Set desktop background (via registry key or group policy command)  
- Write logon activity to a shared log file

### Example: `startup-config.ps1`

```powershell
Write-Output "Welcome, $env:USERNAME" > \\Server\Logs\$env:USERNAME-logon.txt
New-PSDrive -Name "S" -PSProvider FileSystem -Root "\\Server\Share"
```

### ✅ 4. Testing and Validation
To validate the script:

1. Ensured the file was placed in the \\hughdomain.local\NETLOGON shared folder.

2. Logged in as a domain user.

3. Verified:

  * Welcome message displayed

  * S: drive mounted (if not already mapped by GPP)

  * Log file created or updated

📸 Screenshot:

- PowerShell execution results (from user logon)

- Log file entry in \\Server\Logs

🗂️ 5. Screenshot Storage
Store all relevant images in:
📂 [`06-Screenshots/Logon-Scripts/Logon-Scripts/logon-script-config`]
