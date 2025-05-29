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
   `Create a folder specifically for the IT-Security Team under the root path`

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

![Client Side Documents Folder Showing the Redirected Location in Properties for `AD-WIN11-01`](https://github.com/user-attachments/assets/3c4acf21-93b6-4e94-bb25-7ba13d83e662)

📸 **Client Side Documents Folder Showing the Redirected Location in Properties for `AD-WIN11-02`**

![Client Side Documents Folder Showing the Redirected Location in Properties for `AD-WIN11-02` 1](https://github.com/user-attachments/assets/fc2959a9-10d2-4695-97f3-e15e875e2630)

📸 **Server Side Share Showing User RedirectionFolder**

![Server Side Share Showing User Folder 1](https://github.com/user-attachments/assets/6a8a2aea-996f-4869-a62c-2b3908a2d71d)

---

## 📂 3. Folder Structure on Server

Created the following folder on the server to hold user files:  

```
C:\RedirectionFolder$
```

Then shared it with proper permissions:

 -  **Share Permissions:**

   - IT-Security Group: Read/Write

-  **NTFS Permissions:**

 -  Creator Owner: Full Control

 -  IT-Security Group: Modify, Read & Execute, List Folder Contents, Read, Write

📸 **NTFS Permission Settings for the RedirectionFolder**

![Permission Entry for RedirectionFolder](https://github.com/user-attachments/assets/2b541fbc-bc37-4898-85f7-815102b0b316)

![Permission Entry for RedirectionFolder 1](https://github.com/user-attachments/assets/ba3bddf5-28c5-4674-bbb5-135f28a028e1)

📸 **Share Settings with IT-Security Users Listed**

![Share Settings with Domain Users Listed 1](https://github.com/user-attachments/assets/2c454998-5ba4-4e59-aba9-5eeae556ce05)

---

## ✅ 4. Testing and Results

To test the policy:
1. Logged into a Windows 11 domain client as a user.
2. Opened the Documents folder.
3. Verified that the Documents folder was redirected to the server path:
    `\\WINSERVER2025\RedirectionFolder$\TechUser1\Desktop` & `\\WINSERVER2025\RedirectionFolder$\TechUser2\Desktop`
4. Created a test file and confirmed it was saved on the server location.

📸 **User's Desktop Folder Showing the Server Path for Tech User**

![User’s Documents Folder Showing the Server Path for Tech User1](https://github.com/user-attachments/assets/19f86f93-6698-4514-928c-b745fef9b05d)

📸 **User's Desktop Folder Showing the Server Path for Tech User2**

![User’s Documents Folder Showing the Server Path for Tech User2](https://github.com/user-attachments/assets/029005e5-fc54-4f02-8981-24c2ec3746ad)

📸 **File Explorer Showing Server RedirectionFolder Username**

![File Explorer Showing Server RedirectionFolder Username](https://github.com/user-attachments/assets/b14480b7-8784-4f4b-9c2a-1a73abe2e16a)

![File Explorer Showing Server RedirectionFolder Username 1](https://github.com/user-attachments/assets/c1cf326d-ea46-430a-8077-95e00571f73c)

📸 **Server Side Share Showing User Folder**



---

## 🗂️ 5. Screenshot Storage

Store all screenshots in:
📂 [`06-Screenshots/Folder-Redirection/Folder-Redirection-Properties.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/XI.%20Folder-Redirection/II.%20Folder-Redirection-Properties.md)
