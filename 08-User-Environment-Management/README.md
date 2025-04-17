# 🧑‍💻 User Environment Management

## 🎯 Objective
To streamline the user experience, improve productivity, and maintain a secure desktop environment through automated configuration using Group Policy.

---

## 🗂️ Mapped Network Drives

### Description
I configured a GPO to automatically map specific network drives based on a user's organizational unit (OU). This ensures that users have access to the correct shared resources without needing to configure anything manually.

### Drives Created
- **S:** Home directory (mapped to personal user folder)
- **Z:** Shared Department folder (based on department OU)

### 📸 Screenshot
![Group Policy Management Console Showing Drive Mappings Policy Under The Correct OU](https://github.com/user-attachments/assets/f2585604-6be3-4e48-abda-158d16f17783)

![GPMC Showing The Drive Mappings GPO Linked To The Tech OU](https://github.com/user-attachments/assets/fe001a9d-547e-4d17-aa27-ee2636c0386d)

---

## 🖼️ Desktop Wallpaper Policy

### Description
I enforced a corporate desktop background to maintain a consistent visual identity and prevent inappropriate or distracting wallpapers.

### Settings Used
- **Path to Wallpaper:** `\\WIN-D2PQBCI88JQ\Users\Wallpaper\MEIVAULT SYSTEMS LOGO.png`
- **Wallpaper Style:** Fill

### 📸 Screenshot
![Desktop Wallpaper GPO](https://github.com/user-attachments/assets/c7fa5a84-94d7-4790-83fe-d9633974e956)

---

## 🚫 Control Panel & Settings Restrictions

### Description
To reduce risk and accidental misconfigurations, I restricted access to the Control Panel and selected system settings.

### Policies Enforced
- Prevent access to Control Panel and PC Settings
- Hide specific Control Panel items (e.g., Network Settings)

### 📸 Screenshot
![Control Panel Restrictions Policy](https://github.com/user-attachments/assets/bd46cb94-aa86-4489-8cd6-799e73725aad)

![Control Panel Restrictions Policy 1](https://github.com/user-attachments/assets/fa9264c7-7440-40eb-b34c-4b037c7acef2)

![Control Panel Restrictions Policy 2](https://github.com/user-attachments/assets/8411723b-8663-492a-a50b-e6c336916b21)

![Control Panel Restrictions Policy 2](https://github.com/user-attachments/assets/18760da3-914e-43cb-8f81-afafe8ffe9db)

---

## 🧰 Folder Redirection

### Description
I redirected the **Documents** folder to a network location to ensure user files are backed up and accessible from any domain-joined machine.

### Path Redirected
- `\\WIN-D2PQBCI88JQ\RedirectedFolder$`
- `\\WIN-D2PQBCI88JQ\UserData`

### 📸 Screenshot
![Group Policy Management Console Showing The Folder Redirection Policy GPO And Link (2)](https://github.com/user-attachments/assets/ba7969ae-be46-466e-89c1-5d863c0d4e45)

---

## ✅ Verification
- Logged into test user accounts and confirmed policies were applied.
- Checked drive mappings, desktop background, Control Panel restrictions, and folder redirection behavior.
- Used `gpresult /H report.html` and Event Viewer for policy status.
