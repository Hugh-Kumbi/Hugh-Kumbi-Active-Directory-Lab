# 🧑‍💻 User Environment Management

## 🎯 Objective
To streamline the user experience, improve productivity, and maintain a secure desktop environment through automated configuration using Group Policy.

---

## 🗂️ Mapped Network Drives

### Description
I configured a GPO to automatically map specific network drives based on a user's organizational unit (OU). This ensures that users have access to the correct shared resources without needing to configure anything manually.

### Drives Created
- **H:** Home directory (mapped to personal user folder)
- **S:** Shared Department folder (based on department OU)

### 📸 Screenshot
![Mapped Drives GPO](../../06-Screenshots/User-Environment/mapped-drives-gpo.png)

---

## 🖼️ Desktop Wallpaper Policy

### Description
I enforced a corporate desktop background to maintain a consistent visual identity and prevent inappropriate or distracting wallpapers.

### Settings Used
- **Path to Wallpaper:** `\\domain-controller\SYSVOL\company\wallpaper.jpg`
- **Wallpaper Style:** Fill

### 📸 Screenshot
![Desktop Wallpaper GPO](../../06-Screenshots/User-Environment/desktop-wallpaper.png)

---

## 🚫 Control Panel & Settings Restrictions

### Description
To reduce risk and accidental misconfigurations, I restricted access to the Control Panel and selected system settings.

### Policies Enforced
- Prevent access to Control Panel and PC Settings
- Hide specific Control Panel items (e.g., Network Settings)

### 📸 Screenshot
![Control Panel Restrictions](../../06-Screenshots/User-Environment/control-panel-restrictions.png)

---

## 🧰 Folder Redirection

### Description
I redirected the **Documents** folder to a network location to ensure user files are backed up and accessible from any domain-joined machine.

### Path Redirected
- `\\server\users\%username%\Documents`

### 📸 Screenshot
![Folder Redirection GPO](../../06-Screenshots/User-Environment/folder-redirection.png)

---

## ✅ Verification
- Logged into test user accounts and confirmed policies were applied.
- Checked drive mappings, desktop background, Control Panel restrictions, and folder redirection behavior.
- Used `gpresult /H report.html` and Event Viewer for policy status.
