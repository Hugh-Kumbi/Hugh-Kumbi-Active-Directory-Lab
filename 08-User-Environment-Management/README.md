# 🧑‍💻 User Environment Management

## 🎯 Objective

To streamline the user experience, improve productivity, and maintain a secure desktop environment through automated configuration using Group Policy.

---

## 🗂️ 1. Mapped Network Drives

### Description

I configured a GPO to automatically map specific network drives based on a user's organizational unit (OU). This ensures that users have access to the correct shared resources without needing to configure anything manually.

### Drives Created

- **S:** Home directory (mapped to personal user folder)
- **Z:** Shared Department folder (based on department OU)

📸 **Group Policy Management Console Showing Drive Mappings Policy Under Groups OU**

![Map Network Drives Policy Linked to Groups OU](https://github.com/user-attachments/assets/fec1cc06-b99f-443c-bba3-4c3292cb89ee)

📸 **Group Policy Management Console Showing Drive Mappings Policy Under Tech OU**

![Drive Mappings Policy Linked to Tech OU](https://github.com/user-attachments/assets/20bba512-9c75-4c79-b9c2-4e1cc370e316)

---

## 🖼️ 2. Desktop Wallpaper Policy

### Description

I enforced a corporate desktop background to maintain a consistent visual identity and prevent inappropriate or distracting wallpapers.

### Settings Used

- **Path to Wallpaper:** `\\WIN-D2PQBCI88JQ\Users\Wallpaper\MEIVAULT SYSTEMS LOGO.png`
- **Wallpaper Style:** Fill

📸 **Desktop Wallpaper Policy Linked to Tech OU**

![Desktop Wallpaper Policy Linked to Tech OU](https://github.com/user-attachments/assets/63096489-2aad-4081-8845-d42a2ac94843)

📸 **Desktop Wallpaper Policy Implemented Successfully**

![Changed Wall Paper](https://github.com/user-attachments/assets/20190256-7d77-4f36-b1fd-a8ca3c32fb07)

---

## 🚫 3. Control Panel & Settings Restrictions

### Description

To reduce risk and accidental misconfigurations, I restricted access to the Control Panel and selected system settings.

### Policies Enforced

- Prevent access to Control Panel and PC Settings
- Hide specific Control Panel items (e.g., Network Settings)

📸 **Control Panel Restrictions Policy Linked to Tech OU**

![Control Panel Restrictions Policy Linked to Tech OU](https://github.com/user-attachments/assets/54e6a4b3-db5b-4674-b387-5961684030a6)

📸 **Group Management Editor Configuration**

![Control Panel Restrictions Policy 1](https://github.com/user-attachments/assets/fa9264c7-7440-40eb-b34c-4b037c7acef2)

![Control Panel Restrictions Policy 2](https://github.com/user-attachments/assets/8411723b-8663-492a-a50b-e6c336916b21)

📸 **Control Panel Restrictions Policy Implemented Successfully**

![Control Panel Restrictions Policy 2](https://github.com/user-attachments/assets/18760da3-914e-43cb-8f81-afafe8ffe9db)

---

## 🧰 4. Folder Redirection

### Description

I redirected the **Documents** folder to a network location to ensure user files are backed up and accessible from any domain-joined machine.

### Path Redirected

- `\\WIN-D2PQBCI88JQ\RedirectedFolder$`
- `\\WIN-D2PQBCI88JQ\UserData`

📸 **Group Policy Management Console Showing The Folder Redirection Policy Link to Domain**

![Group Policy Management Console Showing The Folder Redirection Policy GPO And Link (2)](https://github.com/user-attachments/assets/ba7969ae-be46-466e-89c1-5d863c0d4e45)

---

## ✅ Verification

- Logged into test user accounts and confirmed policies were applied.
- Checked drive mappings, desktop background, Control Panel restrictions, and folder redirection behavior.
- Used `gpresult /H report.html` and Event Viewer for policy status.
