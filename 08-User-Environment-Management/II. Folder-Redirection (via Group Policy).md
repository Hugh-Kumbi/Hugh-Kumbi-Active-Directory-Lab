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
   `Create a folder for each user under the root path`

3. Specified the **Root Path**:  
   `\\WIN-D2PQBCI88JQ\UserData`

4. Checked the box for:  
   ✅ *Grant the user exclusive rights to Documents*

5. Enabled:  
   ✅ *Move the contents of Documents to the new location*

📸 **Screenshot:**
![Folder Redirection Properties Window With Configuration](https://github.com/user-attachments/assets/bda6c476-6430-4b88-bc7a-3bd71f590c4a)

![Shared Folder Structure On The Server Showing ServerUserDocs](https://github.com/user-attachments/assets/64c80926-489a-4cff-a541-11ff220415cb)

---

## 📂 3. Folder Structure on Server

Created the following folder on the server to hold user files:  
```plaintext
C:\FileShares\UserData
```

Then shared it with proper permissions:

 -  **Share Permissions:**

   - Authenticated Users: Read/Write

-  **NTFS Permissions:**

 -  Creator Owner: Full Control

 -  Authenticated Users: Modify, Read & Execute, List Folder Contents, Read, Write

📸 **Screenshot:**

![NTFS Permission Settings For The FileShares Folder](https://github.com/user-attachments/assets/274be70b-4d35-4bc3-8438-2d7964943369)

![Share Settings With Authenticated Users Listed](https://github.com/user-attachments/assets/de3e23a0-8852-4047-8354-9be238e0a9be)

---

## ✅ 4. Testing and Results
To test the policy:

1. Logged into a Windows 11 domain client as a user.

2. Opened the Documents folder.

3. Verified that the Documents folder was redirected to the server path:
    `\\WIN-D2PQBCI88JQ\UserData\TechUser1`

4. Created a test file and confirmed it was saved on the server location.

📸 **Screenshot suggestions:**

![User’s Documents Folder Showing The Server Path](https://github.com/user-attachments/assets/edf69bc9-71e1-434b-8ddc-7d91d2f1c6e3)

![File Explorer Showing ServerUserDataUsername](https://github.com/user-attachments/assets/0868574e-ea46-4e9a-986f-e6da18a12f3d)

## 🗂️ 5. Screenshot Storage
Store all screenshots in:
📂 [`06-Screenshots/Folder-Redirection/Folder-Redirection-Properties.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/XI.%20Folder-Redirection/II.%20Folder-Redirection-Properties.md)
