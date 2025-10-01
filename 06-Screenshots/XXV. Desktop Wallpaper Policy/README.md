# 🖼 Desktop Wallpaper Policy

This section covers the configuration of the Desktop Wallpaper Policy through Group Policy, which allows administrators to enforce specific wallpaper settings on all client systems across the domain.

---

# 1. ⚙️ Configuring Desktop Wallpaper Policy in Group Policy

The Desktop Wallpaper Policy can be applied through Group Policy to ensure that all user desktops have the same wallpaper for consistency and branding. This policy can be configured to point to a file stored on a network share.

📸 **Configuring Desktop Wallpaper Policy in Group Policy**

![Desktop Wallpaper Policy Configuration](https://github.com/user-attachments/assets/1473f3c6-7899-43bd-8f99-9dae4492b0d1)

---

## 2. 📱 Setting Wallpaper Path

In this step, the wallpaper path is set to point to the location of the wallpaper image on a network share. It’s important to ensure that the wallpaper file is accessible to all systems on the network.

📸 **Desktop Wallpaper Path Set**

<img width="1920" height="909" alt="Desktop Wallpaper Path Set" src="https://github.com/user-attachments/assets/816a744c-5bd3-403a-8a56-3b9db5d3d634" /><br />

📸 **Wallpaper File Stored On Shared Server Folder**

![Wallpaper File Stored On Shared Server Folder](https://github.com/user-attachments/assets/890c8a57-539b-41aa-88a2-76e514230588)

---

## 3. 💻 Applying Wallpaper Policy via Group Policy

After setting the wallpaper path, the policy is applied to the appropriate Organizational Units (OUs) within Active Directory to ensure that it is enforced across all systems in those OUs.

📸 **Applying Wallpaper Policy via Group Policy**

<img width="1920" height="909" alt="Group Policy Management Console Showing The Desktop Wallpaper Policy GPO And Link" src="https://github.com/user-attachments/assets/2a789e80-1c0e-4a51-863a-cc4b0c36e515" />

---

## 4. 🔍 Verifying Wallpaper Policy Application

To verify that the Desktop Wallpaper Policy has been applied successfully, you can check client systems to see if the wallpaper is displayed as expected. You can also use gpresult to confirm that the policy is being applied.

📸 **Verifying Wallpaper Policy Application for `WinServer2025`**

![Wallpaper Automatically Applied On User Login for `WinServer2025`](https://github.com/user-attachments/assets/63a10f3c-e189-4260-911a-472771518e45)

📸 **Verifying Wallpaper Policy Application for `AD-WIN11-01`**

![Wallpaper Automatically Applied On User Login for `AD-WIN11-01`](https://github.com/user-attachments/assets/5bde3ac8-a33d-4495-8357-41ce4ba9e9e3)

📸 **Verifying Wallpaper Policy Application for `AD-WIN11-02`**

![Wallpaper Automatically Applied On User Login for `AD-WIN11-02`](https://github.com/user-attachments/assets/000b6da9-9c48-47ff-bc7e-3f63d2e0506a)

---

## 5. 🔄 Applying Group Policy Updates

To ensure that the Desktop Wallpaper Policy is applied correctly across all systems, run gpupdate to refresh the policies and apply any recent changes.

📸 **Applying Group Policy Updates on `AD-Win11-01`**

<img width="1920" height="909" alt="Applying Group Policy Updates on `AD-Win11-01" src="https://github.com/user-attachments/assets/e8224e14-51fd-4f9b-b231-ff6f3611c9f8" /><br />

📸 **Applying Group Policy Updates on `AD-Win11-02`**

<img width="1920" height="909" alt="Applying Group Policy Updates on `AD-Win11-02" src="https://github.com/user-attachments/assets/82fe6f79-a45c-4d61-bc00-1a860e686d4e" />

---

## 📁 6. Screenshot Storage

All screenshots related to this section are stored in:<br />  
📂 [`08-User-Environment-Management/VIII. Desktop Wallpaper Policy.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/08-User-Environment-Management/VIII.%20Desktop%20Wallpaper%20Policy.md)
