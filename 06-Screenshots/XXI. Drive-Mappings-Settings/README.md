# 🔧 Drive Mappings Settings

This section explains the **Drive Mappings** settings available within Group Policy, allowing administrators to map network drives to specific users or groups.

This section describes the configuration of **Drive Mapping**s using Group Policy, ensuring that network drives are correctly assigned and mapped to user systems.

---

## 1. 🗺️ Drive Mappings Overview

Drive Mappings allow administrators to assign network drives to users or groups based on Group Policy, ensuring that users have access to shared resources upon login.

---

## 2. 🔗Configuring Group Policy Preferences for Drive Mappings

Drive mappings can be configured through Group Policy Preferences, providing additional flexibility and options compared to traditional Group Policy settings. This includes options for creating, updating, or deleting mapped drives.

📸 **Drive Mappings Overview**

---

## 3. 👨‍💻 Configuring Drive Mapping via Group Policy

The Drive Mappings setting within Group Policy allows administrators to assign network drives to specific user groups or Organizational Units (OUs).

📸 **Configuring Drive Mapping via Group Policy**

---

## 4. ➕ Drive Mapping Actions: Create, Update, or Delete

The Action setting allows administrators to specify whether a drive mapping should be created, updated, or deleted. This is useful for maintaining or removing mappings as users' needs evolve.

📸 Drive Mapping Actions: Create, Update, or Delete

---

## 5. 🔧 Configuring Drive Mapping to Use Specific Conditions

Drive mappings can be configured to be applied based on conditions, such as the user’s location, operating system version, or group membership, providing targeted and flexible network drive assignments.

📸 Configuring Drive Mapping to Use Specific Conditions

---

## 6. 🗄️ Setting Drive Letter and Network Path

When configuring a drive mapping, specify the Drive Letter (e.g., Z:) and the Network Path (e.g., \server\share), ensuring that the correct path is available for users.

📸 **Setting Drive Letter and Network Path**



## 7. ⚙️ Configuring Reconnection Settings

The Reconnect option ensures that the network drive is automatically reconnected each time the user logs in, providing seamless access to shared resources.

📸 **Configuring Reconnection Settings**

---

## 8. 👥 Setting Drive Mapping for Specific User Groups

Drive mappings can be set for specific user groups or Organizational Units (OUs) to ensure that only users who belong to certain groups have access to particular network drives.

📸 **Setting Drive Mapping for Specific User Groups**

---

## 9. 🔗 Applying Drive Mappings Using Security Filtering

Use Security Filtering to apply drive mappings only to specific users or groups, providing granular control over who receives which mapped drives.

📸 **Applying Drive Mappings Using Security Filtering**

---

## 10. ✅ Verifying Drive Mapping on Client Machines

Once configured, verify that the drive mappings are applied correctly by checking the This PC window or using the net use command.

📸 **Verifying Drive Mapping on Client Machines**

---

## 11. 🖥️ Command Line Results From `gpupdate`

Use the gpupdate command to refresh Group Policy settings on client machines, ensuring that drive mappings are updated.

📸 **Command Line Results From `gpupdate`**

---

## 12. 🖥️ Command Line Results From `gpresult`

Verify the drive mappings using the gpresult command, ensuring that the correct network drives are being mapped for the user.

📸 **Command Line Results From `gpresult`**

---

## 13. ❓Troubleshooting Drive Mappings

If drive mappings do not apply as expected, check the Event Viewer and Group Policy Results to identify and resolve potential issues with drive mapping configurations.

📸 **Troubleshooting Drive Mappings**

---
Each image corresponds to a step described in 📂 `08-User-Environment-Management/III.Drive-Mappings-Settings.md` and `IV. Drive-Mappings-Config.md`.

![Group Policy Management Console Showing Drive Mappings Policy Under The Correct OU](https://github.com/user-attachments/assets/f2585604-6be3-4e48-abda-158d16f17783)

![Drive Maps GPP Window](https://github.com/user-attachments/assets/b7332443-b9d1-4772-9a6f-9c728003c753)

![Shared Folder Path and Drive Letter Configuration 10](https://github.com/user-attachments/assets/c0f01b56-6415-46b5-a765-f050936565ca)

![Shared Folder Path and Drive Letter Configuration 1](https://github.com/user-attachments/assets/ffea3ee2-ebd7-4d95-a2ee-09a6800a7d70)

![Shared Folder Path and Drive Letter Configuration 2](https://github.com/user-attachments/assets/fd839620-9d66-475c-894b-11303a8819b4)

![Shared Folder Path and Drive Letter Configuration 21](https://github.com/user-attachments/assets/856426ce-df8b-4c25-8c53-29e9385fd006)

![Shared Folder Path and Drive Letter Configuration 3](https://github.com/user-attachments/assets/44ebbfd0-9476-42fe-9005-7d99f1fc4d57)

![Shared Folder Path and Drive Letter Configuration 31](https://github.com/user-attachments/assets/3cc04899-fd49-4407-aa01-0a1df9718434)

![Item-Level Targeting Condition](https://github.com/user-attachments/assets/e1c1f6e3-1671-4138-8e4a-2f9e27de2fac)

![File Explorer Showing The Mapped Z Drive (2)](https://github.com/user-attachments/assets/add0c1c1-4ff5-4a42-8265-bba1e4385648)

![Properties Of The Mapped Drive](https://github.com/user-attachments/assets/9287615a-91f1-4dfb-aa37-ba44e053f333)


![GPMC Showing The Drive Mappings GPO Linked To The Tech OU](https://github.com/user-attachments/assets/fe001a9d-547e-4d17-aa27-ee2636c0386d)

![Drive Mapping Settings Window Showing Path, Label, and Drive Letter](https://github.com/user-attachments/assets/6ffe13fd-8e6b-49f7-bd7c-7aa75ee898a9)

![Item-Level Targeting Configuration](https://github.com/user-attachments/assets/bb4208c6-e570-4770-82b6-6d1d0f44e93b)

![Item-Level Targeting Configuration](https://github.com/user-attachments/assets/5d274933-a3d3-45a8-bbdd-5ba6d0ebdbbf)

![NTFS Permission Settings Drive Maps S](https://github.com/user-attachments/assets/41681c23-ce77-4393-b344-81911b20c5ea)

![Share settings for Server Share Drive Mapping S](https://github.com/user-attachments/assets/1a66274a-f41e-4285-a5bf-58475ed22a19)

![File Explorer Showing The mapped S Drive](https://github.com/user-attachments/assets/d25558c6-198a-46d7-9db2-e98fe00a6510)

![File Savedn Successfully In The Shared Folder](https://github.com/user-attachments/assets/cbf325c1-ec0b-4a19-8db8-75074426585c)
