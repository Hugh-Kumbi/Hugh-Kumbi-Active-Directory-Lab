# 🖼 Desktop Wallpaper Policy

This section covers the configuration of the Desktop Wallpaper Policy through Group Policy, which allows administrators to enforce specific wallpaper settings on all client systems across the domain.

---

# 1. ⚙️ Configuring Desktop Wallpaper Policy in Group Policy

The Desktop Wallpaper Policy can be applied through Group Policy to ensure that all user desktops have the same wallpaper for consistency and branding. This policy can be configured to point to a file stored on a network share.

📸 **Configuring Desktop Wallpaper Policy in Group Policy**

---

## 2. 📱 Setting Wallpaper Path

In this step, the wallpaper path is set to point to the location of the wallpaper image on a network share. It’s important to ensure that the wallpaper file is accessible to all systems on the network.

📸 **Setting Wallpaper Path**

---

## 3. 💻 Applying Wallpaper Policy via Group Policy

After setting the wallpaper path, the policy is applied to the appropriate Organizational Units (OUs) within Active Directory to ensure that it is enforced across all systems in those OUs.

📸 **Applying Wallpaper Policy via Group Policy**

---

## 4. 🔍 Verifying Wallpaper Policy Application

To verify that the Desktop Wallpaper Policy has been applied successfully, you can check client systems to see if the wallpaper is displayed as expected. You can also use gpresult to confirm that the policy is being applied.

📸 **Verifying Wallpaper Policy Application**

---

## 5. ❓ Troubleshooting Desktop Wallpaper Policy

If the wallpaper is not applied as expected, ensure that the wallpaper file path is correct and accessible, check for any permissions issues, and verify that the correct Group Policy is applied to the appropriate OUs.

📸 **Troubleshooting Desktop Wallpaper Policy**

---

## 6. 🔄 Applying Group Policy Updates

To ensure that the Desktop Wallpaper Policy is applied correctly across all systems, run gpupdate to refresh the policies and apply any recent changes.

📸 **Applying Group Policy Updates**

---

Each image corresponds to a step described in 📂 `08-User-Environment-Management/VIII.Desktop-Wallpaper-Policy.md`.
