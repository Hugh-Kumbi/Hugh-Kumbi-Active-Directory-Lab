# 🖼️ Desktop Wallpaper Policy

This section explains how I implemented a **Desktop Wallpaper Policy** using Group Policy to enforce a consistent desktop background across all user machines in the domain. This helps standardize branding and minimizes distractions in a corporate environment.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Desktop Wallpaper Policy  
- **Linked To:** Tech OU

📸 **Group Policy Management Console Showing The Desktop Wallpaper Policy GPO And Link**

![Desktop Wallpaper Policy Linked to Tech OU](https://github.com/user-attachments/assets/787ba852-9463-47b6-9f97-2306d7ac98c7)

---

## 🛠️ 2. Policy Configuration Steps

1. Navigated to:  
   📂 `User Configuration > Policies > Administrative Templates > Desktop > Desktop`

2. Enabled the setting:  
   `Desktop Wallpaper`

3. Specified the path to the wallpaper image:  
   `\\WIN-D2PQBCI88JQ\sysvol\hughdomain.local\Wallpaper`

4. Set wallpaper style to:  
   `Fit`

📸 **Desktop Wallpaper Policy Configuration**

![Desktop Wallpaper Setting Enabled](https://github.com/user-attachments/assets/b90c4e0f-91b2-4bb3-a4a0-09ee05a5eb92)

📸 **Wallpaper File Stored On Shared Server Folder**

![Wallpaper File Stored On Shared Server Folder](https://github.com/user-attachments/assets/5909e3e0-1ea5-4445-aa68-939f2bfedbf5)

---

## ✅ 3. Testing and Results

To test the policy:
1. Logged into a domain-joined client machine as a standard user.
2. Verified that the desktop wallpaper was automatically applied.
3. Attempted to change the wallpaper via settings — confirmed that the option was greyed out.

📸 **Wallpaper Automatically Applied On User Login**

![Wallpaper Automatically Applied On User Login](https://github.com/user-attachments/assets/52db1b3a-7f12-4f88-a6bd-11ae4d9b391b)

---

## 🗂️ 4. Screenshot Storage

All images related to this section are stored in:
📂 [`06-Screenshots/Logon-Scripts/Logon-Logoff Script-Desktop.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/XIII.%20Logon-Logoff%20Scripts/II.%20Logon-Logoff%20Desktop.md)
