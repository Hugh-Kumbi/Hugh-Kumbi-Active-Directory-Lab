# 🖼️ Desktop Wallpaper Policy

This section explains how I implemented a **Desktop Wallpaper Policy** using Group Policy to enforce a consistent desktop background across all user machines in the domain. This helps standardize branding and minimizes distractions in a corporate environment.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Desktop Wallpaper Policy  
- **Linked To:** hughdomain.local (domain root)

📸 **Group Policy Management Console Showing The Desktop Wallpaper Policy GPO And Link**

![Group Policy Management Console Showing The Desktop Wallpaper Policy GPO And Link](https://github.com/user-attachments/assets/19f2dc2b-78f3-47dd-9429-2fbdb60202a3)

---

## 🛠️ 2. Policy Configuration Steps

1. Navigated to:  
   📂 `User Configuration > Policies > Administrative Templates > Desktop > Desktop`

2. Enabled the setting:  
   `Desktop Wallpaper`

3. Specified the path to the wallpaper image:  
   `\\WINSERVER2025\sysvol\hughdomain.local\Wallpaper`

4. Set wallpaper style to:  
   `Fill`

📸 **Desktop Wallpaper Policy Configuration**

![Desktop Wallpaper Policy Configuration](https://github.com/user-attachments/assets/1473f3c6-7899-43bd-8f99-9dae4492b0d1)

📸 **Wallpaper File Stored On Shared Server Folder**

![Wallpaper File Stored On Shared Server Folder](https://github.com/user-attachments/assets/890c8a57-539b-41aa-88a2-76e514230588)

---

## ✅ 3. Testing and Results

To test the policy:
1. Logged into a domain-joined client machine as a standard user.
2. Verified that the desktop wallpaper was automatically applied.
3. Attempted to change the wallpaper via settings — confirmed that the option was greyed out.

📸 **Wallpaper Automatically Applied On User Login for `WinServer2025`**

![Wallpaper Automatically Applied On User Login for `WinServer2025`](https://github.com/user-attachments/assets/63a10f3c-e189-4260-911a-472771518e45)

📸 **Wallpaper Automatically Applied On User Login for `AD-WIN11-01`**

![Wallpaper Automatically Applied On User Login for `AD-WIN11-01`](https://github.com/user-attachments/assets/5bde3ac8-a33d-4495-8357-41ce4ba9e9e3)

📸 **Wallpaper Automatically Applied On User Login for `AD-WIN11-02`**

![Wallpaper Automatically Applied On User Login for `AD-WIN11-02`](https://github.com/user-attachments/assets/000b6da9-9c48-47ff-bc7e-3f63d2e0506a)

---

## 🗂️ 4. Screenshot Storage

All images related to this section are stored in:
📂 [`06-Screenshots/Logon-Scripts/Logon-Logoff Script-Desktop.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/XIII.%20Logon-Logoff%20Scripts/II.%20Logon-Logoff%20Desktop.md)
