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
