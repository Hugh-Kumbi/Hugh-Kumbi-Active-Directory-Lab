# 📁 Folder Redirection Policy

This section explains how I implemented **Folder Redirection** via Group Policy to store user documents on the server instead of the local machine. This approach enhances data security, simplifies backups, and allows users to access their files from any domain-joined device.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Folder Redirection Policy  
- **Linked To:** IT OU

📸 **Group Policy Management Console Showing the Folder Redirection Policy GPO and Link to the IT OU**

![Group Policy Management Console Showing the Folder Redirection Policy GPO and Link](https://github.com/user-attachments/assets/78578631-780a-4254-b005-4f7e80a13ae2)

---

## 🛠️ 2. Policy Configuration Steps

1. Navigated to:  
   📂 `User Configuration > Policies > Windows Settings > Folder Redirection > Documents`

2. Set the **Target folder location** to:  
   `Create a folder for each user under the root path`

3. Specified the **Root Path**:  
   `\\WINSERVER2025\RedirectionFolder$`

4. Checked the box for:  
   ✅ *Grant the user exclusive rights to Documents*

5. Enabled:  
   ✅ *Move the contents of Documents to the new location*

6. Checked:  
   ✅ *Redirect the folder back to the user profile location when policy is removed*

📸 **Folder Redirection Properties Window with Configuration**

![Folder Redirection Properties Window with Configuration 1](https://github.com/user-attachments/assets/f101a6fc-36ae-4897-9032-90669ca327fe)

📸 **Root Path Entered for Desktop Redirection**

![Root Path Entered for Desktop Redirection](https://github.com/user-attachments/assets/b201c77a-9927-4c42-a14a-7303c51c0200)

📸 **Root Path Entered for  Start Menu Redirection**

![Root Path Entered for Start Menu Redirection](https://github.com/user-attachments/assets/f83c5981-4568-44e6-b67f-a94b507fb0f6)

📸 **Root Path Entered for Documents Redirection**

![Root Path Entered for Documents Redirection](https://github.com/user-attachments/assets/5dede761-b8ed-4496-b58d-b7f6e940a193)

📸 **Root Path Entered for Pictures Redirection**

![Root Path Entered for Pictures Redirection](https://github.com/user-attachments/assets/9e474143-a0b3-4666-9408-bfb5f6f15ad3)

📸 **Root Path Entered for Music Redirection**

![Root Path Entered for Music Redirection](https://github.com/user-attachments/assets/36b9b6fe-296e-41a3-a6c5-aa4c21b74e3d)

📸 **Root Path Entered for Videos Redirection**

![Root Path Entered for Videos Redirection](https://github.com/user-attachments/assets/ad42d36e-adb6-4d45-8bc6-43de2647b21a)

📸 **Root Path Entered for Contacts Redirection**

![Root Path Entered for Contacts Redirection](https://github.com/user-attachments/assets/a2bfcfc2-7774-4c17-9ad0-9f9591e9a222)

📸 **Root Path Entered for Downloads Redirection**

![Root Path Entered for Downloads Redirection](https://github.com/user-attachments/assets/53b375b8-9506-433e-bec3-cf5510f29ba8)

📸 **Root Path Entered for Links Redirection**

![Root Path Entered for Links Redirection](https://github.com/user-attachments/assets/e80ebe1a-2e59-4378-95c4-8416360cb9b6)

📸 **Root Path Entered for Searches Redirection**

![Root Path Entered for Searches Redirection](https://github.com/user-attachments/assets/a817a2ad-fc0f-43de-b49c-57e20fc29ee1)

📸 **Client Side Documents Folder Showing the Redirected Location in Properties for `AD-WIN11-01`**


📸 **Client Side Documents Folder Showing the Redirected Location in Properties for `AD-WIN11-02`**

📸 **User's Document Folder Showing the Server Path for Tech User**

📸 **User's Document Folder Showing the Server Path for Tech User2**

📸 **Shared Folder Structure on the Server Showing ServerUserDocs**

![Shared Folder Structure on the Server Showing ServerUserDocs 1](https://github.com/user-attachments/assets/2c16f811-b972-4ffc-a123-245379b5caf8)

---

## 📂 3. Folder Structure on Server

Created the following folder on the server to hold user files:  

```
C:\RedirectionFolder$
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
