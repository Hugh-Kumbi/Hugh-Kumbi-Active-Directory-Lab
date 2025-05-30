# 📁 Folder Redirection Policy

This document details how I implemented **Folder Redirection** in my Active Directory environment to centralize user data and enhance manageability and backup.

---

## 🏷️ 1. GPO Name

- **GPO Name:** User Folder Redirection Policy  
- **Linked To:** Employees OU

📸 **Group Policy Management Console Showing the Folder Redirection Policy GPO and Link to the Employees OU**

![Group Policy Management Console Showing the User Folder Redirection Policy GPO and Link to the Employees OU](https://github.com/user-attachments/assets/175f7363-6bb5-4ccb-94ac-c28447004f46)

---

## 🛠️ 2. Policy Settings

Using the **Group Policy Management Editor**, I navigated to:

  📂 `User Configuration > Policies > Windows Settings > Folder Redirection > ... `

**Settings applied:**
- **Target Folder Location:**  
  ➤ Redirect to the following location: **Basic - Redirect everyone’s folder to the same location**  
  ➤ Root Path: `\\WINSERVER2025\FileShares`

- **Settings applied:**
  - Grant the user exclusive rights
  - Move the contents to the new location
  - Policy removal behavior: Redirect the folder back to the user profile location when policy is removed

📸 **Folder Redirection Configuration Window**

![Folder Redirection Configuration Window](https://github.com/user-attachments/assets/dd5ce57c-aa7b-48cf-876e-7b2b96d7118a)

📸 **Root Path Entered for Desktop Redirection**

![Configuring Desktop Redirection](https://github.com/user-attachments/assets/2c84680b-2324-4d25-bf77-01a6b61522ec)

📸 **Root Path Entered for Start Menu Redirection**

![Configuring Start Menu Redirection](https://github.com/user-attachments/assets/e71b87d6-6a35-4656-a488-8cae58c8c3c3)

📸 **Root Path Entered for Documents Redirection**

![Configuring Documents Redirection](https://github.com/user-attachments/assets/69fa0353-085b-431b-8929-f2121bdde0f2)

📸 **Root Path Entered for Pictures Redirection**

![Configuring Pictures Redirection](https://github.com/user-attachments/assets/fec655e1-cb8c-40d5-b705-89c9537c1862)

📸 **Root Path Entered for Music Redirection**

![Configuring Music Redirection](https://github.com/user-attachments/assets/43c0d609-0b47-4d7c-956b-0378348d8641)

📸 **Root Path Entered for Videos Redirection**

![Configuring Videos Redirection](https://github.com/user-attachments/assets/f3689c2a-5f43-487c-b97c-d2d759a72f4d)

📸 **Root Path Entered for Contacts Redirection**

![Configuring Contacts Redirection](https://github.com/user-attachments/assets/00210b3e-fc75-4f67-bb0d-aac30821b756)

📸 **Root Path Entered for Downloads Redirection**

![Configuring Downloads Redirection](https://github.com/user-attachments/assets/d97f274f-ee59-4638-ba73-b36934877737)

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
3. Checked that the files were successfully redirected to `\\WINSERVER2025\FileShares$\mguzha` & `\\WINSERVER2025\FileShares$\lguzha`.

📸 **Client Side Documents Folder Showing the Redirected Location in Properties for `AD-WIN11-01` for **

![Client Side Documents Folder Showing the Redirected Location in Properties for `AD-WIN11-01`](https://github.com/user-attachments/assets/a746187b-0575-4cbc-997c-89f332899d62)

📸 **Client Side Documents Folder Showing the Redirected Location in Properties for `AD-WIN11-02`**

![Client Side Documents Folder Showing the Redirected Location in Properties for `AD-WIN11-02`](https://github.com/user-attachments/assets/9fbe67c1-b31a-4995-8cb5-1fbcbe231196)

 📸 **User's Document Folder Showing the Server Path for Mei Guzha `mguzha`**

 ![User’s Documents Folder Showing the Server Path for Mei Guzha `mguzha`](https://github.com/user-attachments/assets/fe78faa4-7752-475b-a064-817bb81b82bd)

 📸 **User's Document Folder Showing the Server Path for Lana Guzha `lguzha`**

 ![User’s Documents Folder Showing the Server Path for Lana Guzha `lguzha`](https://github.com/user-attachments/assets/bfd3562b-b60c-4a6f-bc3d-f79d33a29011)

📸 **Server Side Share Showing User Folders**

![Server Side Showing User Folders](https://github.com/user-attachments/assets/f0992cdb-d942-4f7b-8cb0-04348efa9da7)

---

## 🗂️ 6. Screenshot Storage

All screenshots for this configuration should be saved in:  
📂 [`06-Screenshots/Folder-Redirection/Folder-Redirection/Folder-Redirection-Settings`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/XI.%20Folder-Redirection/Folder-Redirection-Settings.md)
