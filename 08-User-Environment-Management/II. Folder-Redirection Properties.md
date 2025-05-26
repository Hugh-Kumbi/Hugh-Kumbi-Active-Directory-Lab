# 📁 Folder Redirection Policy

This section explains how I implemented **Folder Redirection** via Group Policy to store user documents on the server instead of the local machine. This approach enhances data security, simplifies backups, and allows users to access their files from any domain-joined device.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Folder Redirection Policy  
- **Linked To:** hughdomain.local (domain root)

📸 **Group Policy Management Console Showing the Folder Redirection Policy GPO and Link**

![Group Policy Management Console Showing The User Folder Redirection Policy GPO And Link](https://github.com/user-attachments/assets/e2303c72-8b23-4632-8d74-28eab4708666)

---

## 🛠️ 2. Policy Configuration Steps

1. Navigated to:  
   📂 `User Configuration > Policies > Windows Settings > Folder Redirection > Documents`

2. Set the **Target folder location** to:  
   `Create a folder for each user under the root path`

3. Specified the **Root Path**:  
   `\\WINSERVER2025\FileShares$`

4. Checked the box for:  
   ✅ *Grant the user exclusive rights to Documents*

5. Enabled:  
   ✅ *Move the contents of Documents to the new location*

6. Checked:  
   ✅ *Redirect the folder back to the user profile location when policy is removed*

📸 **Folder Redirection Properties Window with Configuration**

![Configuring Documents Redirection](https://github.com/user-attachments/assets/69b3c952-a1aa-499e-97a9-c1c3cfc39604)

![Configuring Documents Redirection 1](https://github.com/user-attachments/assets/0e3b9272-7766-456f-b60f-717183658040)

📸 **Shared Folder Structure on the Server Showing ServerUserDocs**

![Shared Folder Structure on the Server Showing ServerUserDocs 1](https://github.com/user-attachments/assets/2c16f811-b972-4ffc-a123-245379b5caf8)

---

## 📂 3. Folder Structure on Server

Created the following folder on the server to hold user files:  

```
C:\FileShares$
```

Then shared it with proper permissions:

 -  **Share Permissions:**

   - Domain Users: Read/Write

-  **NTFS Permissions:**

 -  Creator Owner: Full Control

 -  Domain Users: Modify, Read & Execute, List Folder Contents, Read, Write

📸 **NTFS Permission Settings for the FileShares Folder**

![NTFS Permissions for Fileshares$ Creator Owner 2](https://github.com/user-attachments/assets/2124442d-9f73-4737-a74a-61ea1fd162a2)

📸 **Share Settings with Domain Users Listed**

![Share Settings with Domain Users Listed](https://github.com/user-attachments/assets/671b9a43-0887-40a8-b9c1-e913524daa77)

---

## ✅ 4. Testing and Results

To test the policy:
1. Logged into a Windows 11 domain client as a user.
2. Opened the Documents folder.
3. Verified that the Documents folder was redirected to the server path:
    `\\WINSERVER2025\FileShares$\TechUser2\Documents`
4. Created a test file and confirmed it was saved on the server location.

📸 **User’s Documents Folder Showing the Server Path**

![User’s Documents Folder Showing The Server Path](https://github.com/user-attachments/assets/4c509b11-2a60-47c6-afea-3f5e26f42077)

📸 **File Explorer Showing ServerUserDataUsername**

![File Explorer Showing ServerUserDataUsername](https://github.com/user-attachments/assets/b3fe7a31-6c01-414b-9aee-a39b48da7d6d)

---

## 🗂️ 5. Screenshot Storage

Store all screenshots in:
📂 [`06-Screenshots/Folder-Redirection/Folder-Redirection-Properties.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/XI.%20Folder-Redirection/II.%20Folder-Redirection-Properties.md)
