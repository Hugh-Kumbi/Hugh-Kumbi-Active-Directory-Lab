# 📁 Folder Redirection Policy

This section explains how I implemented **Folder Redirection** via Group Policy to store user documents on the server instead of the local machine. This approach enhances data security, simplifies backups, and allows users to access their files from any domain-joined device.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Folder Redirection Policy  
- **Linked To:** ITSecurity OU

📸 **Group Policy Management Console Showing the Folder Redirection Policy GPO and Link to the ITSecurity OU**

<img width="1920" height="909" alt="Group Policy Management Console Showing the Folder Redirection Policy GPO and Link to the ITSecurity OU" src="https://github.com/user-attachments/assets/c086dc0a-f8de-4455-b964-0125932a45ce" />

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

<img width="1920" height="909" alt="Folder Redirection Properties Window with Configuration" src="https://github.com/user-attachments/assets/a01fcb43-9e83-4956-9c84-edd6acae7e08" /><br />

📸 **Root Path Entered for Desktop Redirection**

<img width="1920" height="909" alt="Root Path Entered for Desktop Redirection1" src="https://github.com/user-attachments/assets/abd947bb-1a3a-4a2d-9565-c1224a148a01" /><br />

📸 **Root Path Entered for Start Menu Redirection**

<img width="1920" height="909" alt="Root Path Entered for Start Menu Redirection 1" src="https://github.com/user-attachments/assets/c1374b38-b4f5-4b5b-89b1-37295dcc6dfb" /><br />

📸 **Root Path Entered for Documents Redirection**

<img width="1920" height="909" alt="Root Path Entered for Documents Redirection 1" src="https://github.com/user-attachments/assets/b628c8db-8bfb-4d78-8394-a54b3d9160dc" /><br />

📸 **Root Path Entered for Pictures Redirection**

<img width="1920" height="909" alt="Root Path Entered for Pictures Redirection 1" src="https://github.com/user-attachments/assets/0e2e8701-c539-4604-ae7b-b420093cdeb1" /><br />

📸 **Root Path Entered for Music Redirection**

<img width="1920" height="909" alt="Root Path Entered for Music Redirection 1" src="https://github.com/user-attachments/assets/2dddd00b-a65a-4201-a1f5-cc42004d46c5" /><br />

📸 **Root Path Entered for Videos Redirection**

<img width="1920" height="909" alt="Root Path Entered for Videos Redirection 1" src="https://github.com/user-attachments/assets/75110013-3712-40da-b08a-263dcf02b241" /><br />

📸 **Root Path Entered for Contacts Redirection**

<img width="1920" height="909" alt="Root Path Entered for Contacts Redirection 1" src="https://github.com/user-attachments/assets/49bfac85-370f-4e3e-a8f9-5c686b26ba59" /><br />

📸 **Root Path Entered for Downloads Redirection**

<img width="1920" height="909" alt="Root Path Entered for Downloads Redirection1" src="https://github.com/user-attachments/assets/84bdde99-3d03-43c4-87d4-5be2d12512fb" /><br />

📸 **Root Path Entered for Links Redirection**

<img width="1920" height="909" alt="Root Path Entered for Links Redirection" src="https://github.com/user-attachments/assets/0bb969a3-6004-4000-a90d-ce8770dce66c" /><br />

📸 **Root Path Entered for Searches Redirection**

<img width="1920" height="909" alt="Root Path Entered for Searches Redirection" src="https://github.com/user-attachments/assets/b69f72ab-d45f-43f9-bbf3-586a5c39005f" /><br />

📸 **Client Side Documents Folder Showing the Redirected Location in Properties for `AD-WIN11-01` for `Tech User1`**

<img width="1920" height="909" alt="Client Side Documents Folder Showing the Redirected Location in Properties for `AD-WIN11-01` for `TechUser1`" src="https://github.com/user-attachments/assets/872354c2-8b70-42af-aa3f-7d4eea9352d0" /><br />

📸 **Client Side Documents Folder Showing the Redirected Location in Properties for `AD-WIN11-02` for `Tech User2`**

<img width="1920" height="909" alt="Client Side Documents Folder Showing the Redirected Location in Properties for `AD-WIN11-02` for `TechUser2`" src="https://github.com/user-attachments/assets/46d9c759-c137-4fcf-8999-06dae031a234" /><br />

📸 **Server Side Share Showing FolderRedirection**

<img width="1920" height="909" alt="Server Side Share Showing FolderRedirection" src="https://github.com/user-attachments/assets/4c1aedab-bf59-45a2-acbf-1c9f1f042e3b" />

---

## 📂 3. Folder Structure on Server

Created the following folder on the server to hold user files:  

```
C:\FolderFolder$
```

Then shared it with proper permissions:

 -  **Share Permissions:**

   - IT-Security Group: Read/Write

-  **NTFS Permissions:**

 -  Creator Owner: Full Control

 -  IT-Security Group: Modify, Read & Execute, List Folder Contents, Read, Write

📸 **NTFS Permission Settings for the FolderRedirection**

<img width="1920" height="909" alt="NTFS Permission Settings for the FolderRedirection" src="https://github.com/user-attachments/assets/df8d00cd-7e79-485d-b9eb-1e6183f950a1" /><br />

📸 **Advanced Security Settings for RedirectionFolder**

<img width="1920" height="909" alt="Advanced Security Settings for FolderRedirection" src="https://github.com/user-attachments/assets/a7507789-845b-4400-9eb0-6799913a0bdc" /><br />

📸 **Share Settings with ITSecurity Users Listed**

<img width="1920" height="909" alt="Share Settings with ITSecurity Users Listed" src="https://github.com/user-attachments/assets/546412db-080e-4872-8ad7-c3f4a1af1e8a" />

---

## ✅ 4. Testing and Results

To test the policy:
1. Logged into a Windows 11 domain client as a user.
2. Opened the Documents folder.
3. Verified that the Documents folder was redirected to the server path:
    `\\WINSERVER2025\FolderRedirection$\TechUser1\Desktop` & `\\WINSERVER2025\FolderRedirection$\TechUser2\Desktop`
4. Created a test file and confirmed it was saved on the server location.

📸 **User's Desktop Folder Showing the Server Path for `Tech User1`**

<img width="1920" height="909" alt="User's Desktop Folder Showing the Server Path for `Tech User1`" src="https://github.com/user-attachments/assets/70bdee30-f2de-4cf1-971f-c091e0ece565" /><br />

📸 **User's Desktop Folder Showing the Server Path for `Tech User2`**

<img width="1920" height="909" alt="User's Desktop Folder Showing the Server Path for `Tech User2`" src="https://github.com/user-attachments/assets/d9b5517d-5db8-4ac8-9331-9c257b914657" /><br />

📸 **File Explorer Showing Server FolderRedirection for `TechUser1`**

<img width="1920" height="909" alt="File Explorer Showing Server FolderRedirection for `TechUser1`" src="https://github.com/user-attachments/assets/a1dc89d1-518e-4183-a117-0e661e39e790" /><br />

📸 **File Explorer Showing Server FolderRedirection for `TechUser2`**

<img width="1920" height="909" alt="File Explorer Showing Server FolderRedirection for `TechUser2`" src="https://github.com/user-attachments/assets/cc3b2d45-f60c-4f63-a950-189740bc8bab" /><br />

---

## 🗂️ 5. Screenshot Storage

Store all screenshots in:
📂 [`06-Screenshots/XX. Folder-Redirection Settings`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/tree/main/06-Screenshots/XX.%20Folder-Redirection%20Settings)
