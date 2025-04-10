# 🔁 Logon/Logoff Scripts via Group Policy

In this section, I configured logon scripts using Group Policy to automate specific actions when users log into the domain. These scripts enhance user experience, enforce configurations, and streamline administrative tasks.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Logon Scripts Policy  
- **Linked To:** The Organizational Unit (OU) containing domain users

📸 **Screenshot:**
- GPMC view showing the GPO linked to the correct OU

---

## 💻 2. Script Configuration Steps

1. Opened **Group Policy Management Editor**.  
2. Navigated to:  
   `User Configuration > Policies > Windows Settings > Scripts (Logon/Logoff)`

3. Double-clicked **Logon**, then clicked **Add...**  
4. Browsed to the script location and added the PowerShell script `logonScript.ps1`

5. Saved and exited the editor.

📸 **Screenshot:**
- Logon script configuration dialog box with script path  
- PowerShell script contents in Notepad or PowerShell ISE

---

## 📂 3. Script Contents

Here’s an example of what my `logonScript.ps1` included:

```powershell
# logonScript.ps1
New-Item -Path "C:\Users\$env:USERNAME\Desktop" -Name "Welcome.txt" -ItemType File -Force
Add-Content -Path "C:\Users\$env:USERNAME\Desktop\Welcome.txt" -Value "Welcome to HughDomain!"
```
The script creates a welcome message on the user's desktop after logging in.

## 🧪 4. Testing the Script
1. Logged in to the domain as a regular user.

2. Verified that Welcome.txt was automatically created on the desktop.

3. Confirmed the contents were accurate and permissions were correct.

📸 **Screenshot suggestions:**

- User desktop showing `Welcome.txt` file

- Opened file showing the welcome message

🗂️ 5. Screenshot Storage
All images related to this section are stored in:
📂 [`06-Screenshots/Logon-Scripts/Logon-Script-Desktop.png`]()
