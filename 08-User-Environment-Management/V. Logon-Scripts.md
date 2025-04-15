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
 - `\\hughdomain.local\SysVol\hughdomain.local\Policies\{FA47D7AB-C6A5-4898-9D72-3C0AE53F0246}\User\Scripts\Logon
 - `\\hughdomain.local\SysVol\hughdomain.local\Policies\{FA47D7AB-C6A5-4898-9D72-3C0AE53F0246}\User\Scripts\Logoff`  
- **Script Type:** PowerShell

📸 **Screenshot:**
![Logon Properties Window Showing The Added PowerShell Script](https://github.com/user-attachments/assets/db482f6b-4aad-41ee-8284-7edce454bb8f)

![Logoff Properties window showing the added PowerShell script](https://github.com/user-attachments/assets/021c7348-c065-4bda-aab1-d8fbef0e2051)

![Logon File Location In The SysVol Share](https://github.com/user-attachments/assets/8817a049-18c8-461b-a4b0-a45b7c9ccf5d)

![Logoff File Location In The SysVol Share](https://github.com/user-attachments/assets/8c51ea24-a6a9-412c-a9be-f026b31d1285)

---

## 🔧 3. Script Functionality

The PowerShell logon script was used to:

- Display a welcome message  
- Map a network drive (fallback if GPP fails)  
- Set desktop background (via registry key or group policy command)  
- Write logon activity to a shared log file

### Example: `LogonScript.ps1`

```powershell
Write-Output "Welcome, $env:USERNAME" > \\Server\Logs\$env:USERNAME-logon.txt
New-PSDrive -Name "S" -PSProvider FileSystem -Root "\\Server\Share"
```

### Example: `LogoffScript.ps1`

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
