# 📁 Folder Redirection Policy

This document details how I implemented **Folder Redirection** in my Active Directory environment to centralize user data and enhance manageability and backup.

---

## 🏷️ 1. GPO Name

- **GPO Name:** User Folder Redirection Policy  
- **Linked To:** hughdomain.local

📸 **Screenshot:**
![Group Policy Management Console Showing The Folder Redirection Policy GPO And Link (2)](https://github.com/user-attachments/assets/75107291-3d2f-4691-a235-df719372b559)

---

## 🛠️ 2. Policy Settings

Using the **Group Policy Management Editor**, I navigated to:

📂 `User Configuration > Policies > Windows Settings > Folder Redirection > Documents`

Settings applied:

- **Target Folder Location:**  
  ➤ Redirect to the following location: **Basic - Redirect everyone’s folder to the same location**  
  ➤ Root Path: `\\WIN-D2PQBCI88JQ\RedirectedFolder$`

- **Settings:**
  - Grant the user exclusive rights to Documents
  - Move the contents of Documents to the new location
  - Policy removal behavior: Leave contents in the redirected location

📸 **Screenshot:**
![Folder Redirection Configuration Window](https://github.com/user-attachments/assets/797fd428-1c6e-4c1d-a671-64d6aad6c198)
  
![Root Path Entered](https://github.com/user-attachments/assets/8c0dc5da-1191-4ba7-9105-75b8b2195deb)

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
3. Checked that the files were successfully redirected to `\\WIN-D2PQBCI88JQ\RedirectedFolder$\TechUser1`.

📸 **Screenshot:**
![Client Side Documents Folder Showing the Redirected Location In Properties](https://github.com/user-attachments/assets/44b93241-be75-4f16-9945-e25f78bd08a1)

![Server Side Share Showing User Folders](https://github.com/user-attachments/assets/84313e57-e680-41fd-9336-5f7f1d170dec)

---

## 🗂️ 5. Screenshot Storage

All screenshots for this configuration should be saved in:  
📂 [`06-Screenshots/Folder-Redirection/Folder-Redirection/Folder-Redirection-Settings`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/XI.%20Folder-Redirection/Folder-Redirection-Settings.md)
