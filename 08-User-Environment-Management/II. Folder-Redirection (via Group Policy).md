# 📁 Folder Redirection Policy

This section explains how I implemented **Folder Redirection** via Group Policy to store user documents on the server instead of the local machine. This approach enhances data security, simplifies backups, and allows users to access their files from any domain-joined device.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Folder Redirection Policy  
- **Linked To:** hughdomain.local

📸 **Screenshot:**
![Group Policy Management Console Showing The Folder Redirection Policy GPO And Link (2)](https://github.com/user-attachments/assets/7a6b5186-8001-41d2-9b92-97325d2c48b5)

---

## 🛠️ 2. Policy Configuration Steps

1. Navigated to:  
   `User Configuration > Policies > Windows Settings > Folder Redirection > Documents`

2. Set the **Target folder location** to:  
   `Redirect to the following location`

3. Specified the **Root Path**:  
   `\\Server\UserDocs`

4. Checked the box for:  
   ✅ *Grant the user exclusive rights to Documents*

5. Enabled:  
   ✅ *Move the contents of Documents to the new location*

📸 **Screenshot:**
- Folder Redirection Properties window with configuration
- Shared folder structure on the server showing `\\Server\UserDocs`

---

## 📂 3. Folder Structure on Server

Created the following folder on the server to hold user files:  
```plaintext
C:\Shares\UserDocs
```

Then shared it with proper permissions:

 -  **Share Permissions:**

   - Domain Users: Read/Write

-  **NTFS Permissions:**

 -  Creator Owner: Full Control

 -  Domain Users: Modify, Read & Execute, List Folder Contents, Read, Write

📸 **Screenshot:**

- NTFS permission settings for the UserDocs folder

- Share settings with domain users listed

## ✅ 4. Testing and Results
To test the policy:

1. Logged into a Windows 11 domain client as a user.

2. Opened the Documents folder.

3. Verified that the Documents folder was redirected to the server path:
    `\\Server\UserDocs\%username%`

4. Created a test file and confirmed it was saved on the server location.

📸 **Screenshot suggestions:**

- User’s Documents folder showing the server path

_ File Explorer showing `\\Server\UserDocs\username`

## 🗂️ 5. Screenshot Storage
Store all screenshots in:
📂 [`06-Screenshots/Folder-Redirection/Folder-Redirection-Properties.png`]
