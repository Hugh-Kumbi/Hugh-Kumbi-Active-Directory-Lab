# 📁 Folder Redirection Policy

This document details how I implemented **Folder Redirection** in my Active Directory environment to centralize user data and enhance manageability and backup.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Folder Redirection Policy  
- **Linked To:** hughdomain.local or a specific OU containing user accounts

📸 **Screenshot:**
- Group Policy Management Console showing the “Folder Redirection Policy” GPO and link

---

## 🛠️ 2. Policy Settings

Using the **Group Policy Management Editor**, I navigated to:

📂 `User Configuration > Policies > Windows Settings > Folder Redirection > Documents`

Settings applied:

- **Target Folder Location:**  
  ➤ Redirect to the following location: **Basic - Redirect everyone’s folder to the same location**  
  ➤ Root Path: `\\Server\UserDocs\%USERNAME%`

- **Settings:**
  - Grant the user exclusive rights to Documents
  - Move the contents of Documents to the new location
  - Policy removal behavior: Leave contents in the redirected location

📸 **Screenshot:**
- Folder Redirection configuration window  
- Root path entered (\\Server\UserDocs\%USERNAME%)

---

## 🎯 3. Objectives and Benefits

- Ensure user documents are stored on the server for **centralized management and backup**.
- Allow seamless user experience across different domain-joined machines.
- Reduce risk of **data loss** due to local system failure.

This redirection also simplified data recovery and enabled easy integration with backup solutions running on the domain controller.

---

## 🧪 4. Testing and Validation

To verify the configuration:

1. Logged into the client machine as a domain user.
2. Created test documents in the **Documents** folder.
3. Checked that the files were successfully redirected to `\\Server\UserDocs\%USERNAME%`.

📸 **Screenshot:**
- Client-side Documents folder showing the redirected location in Properties  
- Server-side share (\\Server\UserDocs) showing user folders

---

## 🗂️ 5. Screenshot Storage

All screenshots for this configuration should be saved in:  
📂 [`06-Screenshots/Folder-Redirection/Folder-Redirection/folder-redirection-settings`]
