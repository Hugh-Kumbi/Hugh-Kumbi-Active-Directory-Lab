# 📁 Folder Redirection Policy

This document details how I implemented **User Folder Redirection Policy** in my Active Directory environment to centralize user data and enhance manageability and backup.

---

## 🏷️ 1. GPO Name

- **GPO Name:** User Folder Redirection Policy  
- **Linked To:** Employees OU

📸 **Group Policy Management Console Showing the User Folder Redirection Policy GPO and Link to the Employees OU**

<img width="1920" height="909" alt="Group Policy Management Console Showing the Folder Redirection Policy GPO and Link to the Employees OU" src="https://github.com/user-attachments/assets/f8ad48a3-c9dd-4c3d-b7f3-cb3a9c537e5f" />

---

## 🛠️ 2. Policy Settings

Using the **Group Policy Management Editor**, I navigated to:<br /> 
📂 `User Configuration > Policies > Windows Settings > Folder Redirection > ... `

**Settings applied:**
- **Target Folder Location:**  
  ➤ Redirect to the following location: **Basic - Redirect everyone’s folder to the same location**  
  ➤ Root Path: `\\WINSERVER2025\FileShares`

- **Settings applied:**
  - Grant the user exclusive rights
  - Move the contents to the new location
  - Policy removal behavior: Redirect the folder back to the user profile location when policy is removed

📸 **User Folder Redirection Configuration Window**

<img width="1920" height="909" alt="User Folder Redirection Configuration Window" src="https://github.com/user-attachments/assets/36000ce3-cc3b-4e0a-8eaf-8b978530f9cd" /><br />

📸 **Root Path Entered for Desktop Redirection**

<img width="1920" height="909" alt="Root Path Entered for Desktop Redirection" src="https://github.com/user-attachments/assets/e7675e62-c3cb-486c-8675-b6b2a975f14b" /><br />

📸 **Root Path Entered for Start Menu Redirection**

<img width="1920" height="909" alt="Root Path Entered for Start Menu Redirection" src="https://github.com/user-attachments/assets/a10471c8-cfc3-4740-a094-0d63eb365f52" /><br />

📸 **Root Path Entered for Documents Redirection**

<img width="1920" height="909" alt="Root Path Entered for Documents Redirection" src="https://github.com/user-attachments/assets/5be97ba4-34e3-497c-b4b6-23853ffbba4f" />

📸 **Root Path Entered for Pictures Redirection**

<img width="1920" height="909" alt="Root Path Entered for Pictures Redirection" src="https://github.com/user-attachments/assets/6f6e6275-9bf2-4806-9a16-f7f9f6195a89" /><br />

📸 **Root Path Entered for Music Redirection**

<img width="1920" height="909" alt="Root Path Entered for Music Redirection" src="https://github.com/user-attachments/assets/35fee43e-e183-42bc-bc1c-63b8250d2245" /><br />

📸 **Root Path Entered for Videos Redirection**

<img width="1920" height="909" alt="Root Path Entered for Videos Redirection" src="https://github.com/user-attachments/assets/9e69fab2-2ded-499e-8cf1-2ab8acb0ed67" /><br />

📸 **Root Path Entered for Contacts Redirection**

<img width="1920" height="909" alt="Root Path Entered for Contacts Redirection" src="https://github.com/user-attachments/assets/7da8ee8b-968f-4838-b36b-bb48dc153651" /><br />

📸 **Root Path Entered for Downloads Redirection**

<img width="1920" height="909" alt="Root Path Entered for Downloads Redirection" src="https://github.com/user-attachments/assets/e5224464-4b82-4d45-84e3-d9b2bca504ee" />

---

## 🎯 4. Objectives and Benefits

- Ensure user documents are stored on the server for **centralized management and backup**.
- Allow seamless user experience across different domain-joined machines.
- Reduce risk of **data loss** due to local system failure.

This redirection also simplified data recovery and enabled easy integration with backup solutions running on the domain controller.

---

## 🧪 5. Testing and Validation

To verify the configuration:
1. Logged into the client machine as a domain user.
2. Created test documents in the **Documents** folder.
3. Checked that the files were successfully redirected to `\\WINSERVER2025\FileShares\mguzha` & `\\WINSERVER2025\FileShares\lguzha`.

📸 **Client Side Documents Folder Showing the Redirected Location in Properties for `AD-WIN11-01` for `mguzha`**

<img width="1920" height="909" alt="Client Side Documents Folder Showing the Redirected Location in Properties for `AD-WIN11-01 for mguzha`" src="https://github.com/user-attachments/assets/3372b6b8-eb3e-4a34-8eb8-b7487fd14c64" /><br />

📸 **Client Side Documents Folder Showing the Redirected Location in Properties for `AD-WIN11-02` for `lguzha`**

<img width="1920" height="909" alt="Client Side Documents Folder Showing the Redirected Location in Properties for AD-WIN11-02 for lguzha" src="https://github.com/user-attachments/assets/ed0840c8-2d02-4814-89ad-1d20c99a64f5" /><br />

 📸 **User's Document Folder Showing the Server Path for Mei Guzha `mguzha`**

<img width="1920" height="909" alt="User's Document Folder Showing the Server Path for Mei Guzha" src="https://github.com/user-attachments/assets/fe097d68-32c9-4364-8724-31c3ce0e3704" /><br />

 📸 **User's Document Folder Showing the Server Path for Lana Guzha `lguzha`**

<img width="1920" height="909" alt="User's Document Folder Showing the Server Path for Lana Guzha `lguzha`" src="https://github.com/user-attachments/assets/f766f43c-b104-4bd6-b71d-ae6294e9ed14" /><br />

📸 **Server Side Share Showing User Folders**

<img width="1920" height="909" alt="Server Side Share Showing User Folders" src="https://github.com/user-attachments/assets/7ed831e9-a8d4-446f-b79d-2f94fa72cad2" />

---

## 🗂️ 6. Screenshot Storage

All screenshots for this configuration should be saved in:  
📂 [`06-Screenshots/XX. Folder-Redirection Settings`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/tree/main/06-Screenshots/XX.%20Folder-Redirection%20Settings)
