# 🖼 Desktop Wallpaper Policy

Having configured the Desktop Wallpaper policy via Group Policy, I have successfully enforced the corporate-branded wallpaper across all domain-joined client systems. The setting is now applied at the user level, ensuring a consistent and professional visual identity upon login.

---

## ⚙️ 1. Configuring Desktop Wallpaper Policy in Group Policy

Having deployed the policy, I configured it to point to the approved corporate wallpaper located on a read-only network share `\\WINSERVER2025\sysvol\hughdomain.local\Wallpaper`. This has successfully standardized the desktop background across the organization, reinforcing the brand identity. I also confirmed that the share has appropriate permissions to allow all users read access.

📸 **Configuring Desktop Wallpaper Policy in Group Policy**

![Desktop Wallpaper Policy Configuration](https://github.com/user-attachments/assets/1473f3c6-7899-43bd-8f99-9dae4492b0d1)

---

## 📱 2. Setting Wallpaper Path

In this step, I set the wallpaper path to `\\WINSERVER2025\sysvol\hughdomain.local\Wallpaper\MEIVAULT SYSTEMS LOGO.png`. I first verified that the image file was in place and that the "Domain Users" group had at least Read permissions to both the share and the NTFS file, ensuring all systems can access it.

📸 **Desktop Wallpaper Path Set**

<img width="1920" height="909" alt="Desktop Wallpaper Path Set" src="https://github.com/user-attachments/assets/816a744c-5bd3-403a-8a56-3b9db5d3d634" /><br />

📸 **Wallpaper File Stored on Shared Server Folder**

![Wallpaper File Stored On Shared Server Folder](https://github.com/user-attachments/assets/890c8a57-539b-41aa-88a2-76e514230588)

---

## 💻 3. Applying Wallpaper Policy via Group Policy

After defining the wallpaper path, I linked the GPO to the "Domain root". This has successfully enforced the corporate branding across all relevant systems, ensuring a consistent user experience on all company-managed desktops.

📸 **Applying Wallpaper Policy via Group Policy**

<img width="1920" height="909" alt="Group Policy Management Console Showing The Desktop Wallpaper Policy GPO And Link" src="https://github.com/user-attachments/assets/2a789e80-1c0e-4a51-863a-cc4b0c36e515" />

---

## 🔍 4. Verifying Wallpaper Policy Application

To confirm the policy was working, I logged onto the client machines and observed that the corporate wallpaper had been applied to the desktop. Furthermore, I ran `gpresult /h` to generate a report, which confirmed that the Desktop Wallpaper GPO was successfully received and processed by the client.

📸 **Verifying Wallpaper Policy Application for `WinServer2025`**

![Wallpaper Automatically Applied On User Login for `WinServer2025`](https://github.com/user-attachments/assets/63a10f3c-e189-4260-911a-472771518e45)

📸 **Verifying Wallpaper Policy Application for `AD-WIN11-01`**

![Wallpaper Automatically Applied On User Login for `AD-WIN11-01`](https://github.com/user-attachments/assets/5bde3ac8-a33d-4495-8357-41ce4ba9e9e3)

📸 **Verifying Wallpaper Policy Application for `AD-WIN11-02`**

![Wallpaper Automatically Applied On User Login for `AD-WIN11-02`](https://github.com/user-attachments/assets/000b6da9-9c48-47ff-bc7e-3f63d2e0506a)

---

## 🔄 5. Applying Group Policy Updates

Following the GPO configuration, I executed `gpupdate /force` on the client machines. This successfully refreshed the policy, and upon the next user logon, the corporate wallpaper was applied as intended, confirming the policy was active and functioning correctly.

📸 **Applying Group Policy Updates on `AD-Win11-01`**

<img width="1920" height="909" alt="Applying Group Policy Updates on `AD-Win11-01" src="https://github.com/user-attachments/assets/e8224e14-51fd-4f9b-b231-ff6f3611c9f8" /><br />

📸 **Applying Group Policy Updates on `AD-Win11-02`**

<img width="1920" height="909" alt="Applying Group Policy Updates on `AD-Win11-02" src="https://github.com/user-attachments/assets/82fe6f79-a45c-4d61-bc00-1a860e686d4e" />

---

## 📁 6. Screenshot Storage

Each image corresponds to a step described in:<br /> 
📂 [`08-User-Environment-Management/VIII. Desktop Wallpaper Policy`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/08-User-Environment-Management/VIII.%20Desktop%20Wallpaper%20Policy.md)
