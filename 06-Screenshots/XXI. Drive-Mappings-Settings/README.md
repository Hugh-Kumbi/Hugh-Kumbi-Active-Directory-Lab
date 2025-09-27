# 🔧 Drive Mappings Settings

This section explains the **Drive Mappings** settings available within Group Policy, allowing administrators to map network drives to specific users or groups.

This section describes the configuration of **Drive Mapping**s using Group Policy, ensuring that network drives are correctly assigned and mapped to user systems.

---

## 1. 🗺️ Drive Mappings Overview

Drive Mappings allow administrators to assign network drives to users or groups based on Group Policy, ensuring that users have access to shared resources upon login.

📸 **Group Policy Management Console Showing Drive Mappings Policy Under the ITSecurity OU**

<img width="1920" height="909" alt="Group Policy Management Console Showing Drive Mappings Policy Under the ITSecurity OU" src="https://github.com/user-attachments/assets/263cbd1a-7a0b-4eb0-b27b-6e06ba78d26f" /><br /> 

📸 **GPMC Showing the Map Network Drives Policy GPO Linked to the Employees OU**

<img width="1920" height="909" alt="GPMC Showing the Map Network Drives Policy GPO Linked to the Employees OU" src="https://github.com/user-attachments/assets/285d255a-483e-482c-aca3-2ec505b2eca6" />

---

## 2. 🔗Configuring Group Policy Preferences for Drive Mappings

Drive mappings can be configured through Group Policy Preferences, providing additional flexibility and options compared to traditional Group Policy settings. This includes options for creating, updating, or deleting mapped drives.

📸 **Drive Mappings Overview**

![Drive Maps GPP Window1](https://github.com/user-attachments/assets/61128a0a-70ee-4c77-b84a-f7b1e5cc4787)

![Drive Maps GPP Window 2](https://github.com/user-attachments/assets/ba62deeb-5cc5-452c-a6d0-39d53b2a3ed5)

---

## 3. 👨‍💻 Configuring Drive Mapping via Group Policy

The Drive Mappings setting within Group Policy allows administrators to assign network drives to specific user groups or Organizational Units (OUs).

📸 **Configuring Drive Mapping via Group Policy**

<img width="1920" height="909" alt="Configuring Drive Mapping via Group Policy" src="https://github.com/user-attachments/assets/56e961b9-0b54-4f59-b4fc-144968f4f301" /><br /> 

<img width="1920" height="909" alt="Configuring Drive Mapping via Group Policy 1" src="https://github.com/user-attachments/assets/641b3f2c-3d80-4a35-a3e1-171fa3263f1e" />

---

## 4. ➕ Drive Mapping Actions: Create, Update, or Delete

The Action setting allows administrators to specify whether a drive mapping should be created, updated, or deleted. This is useful for maintaining or removing mappings as users' needs evolve.

📸 **Drive Mapping Actions: Create, Update, or Delete**

![Drive Mapping Settings Window Showing Path, Label, and Drive Letter2](https://github.com/user-attachments/assets/ae7248b5-bad8-44e5-b71d-04d7a6bbae9a)

![Drive Mapping Settings Window Showing Path, Label, and Drive Letter 3](https://github.com/user-attachments/assets/e0d2097b-5fcc-4301-9866-52747f64f014)

---

## 5. 🔧 Configuring Drive Mapping to Use Specific Conditions

Drive mappings can be configured to be applied based on conditions, such as the user’s location, operating system version, or group membership, providing targeted and flexible network drive assignments.

📸 **Configuring Drive Mapping to Use Specific Conditions**

<img width="1920" height="909" alt="Shared Folder Path for ITSecurity Shared Drive" src="https://github.com/user-attachments/assets/67f8f0b5-ab11-4e63-9150-c2d8d80d0601" /><br /> 

<img width="1920" height="909" alt="Shared Folder Path for ITSecurity Shared Drive 1" src="https://github.com/user-attachments/assets/3198de3c-8f93-453c-9045-c678f8b0a8f8" /><br />

![Share settings for Server Share Drive Mapping S](https://github.com/user-attachments/assets/739d6e73-2b7c-4779-b3d9-895de2d9539b)

![Share settings for Server Share Drive Mapping S 1](https://github.com/user-attachments/assets/863ffc53-007f-4d18-8f87-abc3c694016f)

---

## 6. 🗄️ Setting Drive Letter and Network Path

When configuring a drive mapping, specify the Drive Letter (e.g., Z: & S:) and the Network Path (e.g., `\\WINSERVER2025\ITSecurity Shared Drive` & `\\WINSERVER2025\DepartmentalShares`), ensuring that the correct path is available for users.

📸 **Setting Drive Letter and Network Path**

![Drive Mapping Settings Window Showing Path, Label, and Drive Letter2](https://github.com/user-attachments/assets/ae7248b5-bad8-44e5-b71d-04d7a6bbae9a)

![Drive Mapping Settings Window Showing Path, Label, and Drive Letter 3](https://github.com/user-attachments/assets/e0d2097b-5fcc-4301-9866-52747f64f014)

## 7. ⚙️ Configuring Reconnection Settings

The Reconnect option ensures that the network drive is automatically reconnected each time the user logs in, providing seamless access to shared resources.

📸 **Configuring Reconnection Settings**

![Drive Mapping Settings Window Showing Path, Label, and Drive Letter2](https://github.com/user-attachments/assets/ae7248b5-bad8-44e5-b71d-04d7a6bbae9a)

![Drive Mapping Settings Window Showing Path, Label, and Drive Letter 3](https://github.com/user-attachments/assets/e0d2097b-5fcc-4301-9866-52747f64f014)

---

## 8. 👥 Setting Drive Mapping for Specific User Groups

Drive mappings can be set for specific user groups or Organizational Units (OUs) to ensure that only users who belong to certain groups have access to particular network drives.

📸 **Setting Drive Mapping for Specific User Groups**

![Item-Level Targeting Configurations 4](https://github.com/user-attachments/assets/114f48fa-1674-4b98-b1d2-4467af19df51)

![Item-Level Targeting Configurations 6](https://github.com/user-attachments/assets/20b3c11d-63d9-4bc4-ada3-1f3c5dded96e)

![Item-Level Targeting Configurations 9](https://github.com/user-attachments/assets/7bd01cd7-6f9b-4fb9-9d03-7a18fa1fa37b)

![Item-Level Targeting Configurations 8](https://github.com/user-attachments/assets/cb8e0af6-dd74-4db3-ba4d-0334ab82912a)

---

## 9. 🔗 Applying Drive Mappings Using Security Filtering

Use Security Filtering to apply drive mappings only to specific users or groups, providing granular control over who receives which mapped drives.

📸 **Applying Drive Mappings Using Security Filtering**

<img width="1920" height="909" alt="Applying Drive Mappings Using Security Filtering" src="https://github.com/user-attachments/assets/4f5241b9-e6ab-4b5a-b8e6-06a40f82f83a" /><br />

<img width="1920" height="909" alt="Applying Map Network Drives Policy Using Security Filtering" src="https://github.com/user-attachments/assets/bac52056-ad9d-4f76-bd4c-834aff553f51" />

---

## 10. ✅ Verifying Drive Mapping on Client Machines

Once configured, verify that the drive mappings are applied correctly by checking the This PC window or using the net use command.

📸 **Verifying Drive Mapping on `AD-Win11-01` for `Tech User 1`**

<img width="1920" height="909" alt="File Explorer Showing The Mapped Z Drive for `AD-Win11-01`" src="https://github.com/user-attachments/assets/b441f8a6-0bfe-4cd9-b24e-84f23a3dbdba" /><br /> 

📸 **Verifying Drive Mapping on `AD-Win11-02` for `Tech User 2`**

<img width="1920" height="909" alt="File Explorer Showing The Mapped Z Drive for `AD-Win11-02`" src="https://github.com/user-attachments/assets/bd213b59-bc4e-49d1-b869-0a9f91bcc56c" /><br /> 

📸 **Verifying Drive Mapping on `AD-Win11-01` for `lguzha`**

<img width="1920" height="909" alt="Verifying Drive Mapping on `AD-Win11-01` for `lguzha`" src="https://github.com/user-attachments/assets/50e53c93-c8da-4ca8-b362-3da0b6edefd4" /><br /> 

📸 **Verifying Drive Mapping on `AD-Win11-01` for `mguzha`**

<img width="1920" height="909" alt="Verifying Drive Mapping on `AD-Win11-01` for `mguzha`" src="https://github.com/user-attachments/assets/59622ff1-c57c-4e1f-aee1-7330028f4214" /><br /> 

📸 **Verifying Drive Mapping on `AD-Win11-01` using `net use` for `Tech User 1`**

<img width="1920" height="909" alt="Net Use Command on `AD-WIN11-01` for `Tech User 1`" src="https://github.com/user-attachments/assets/16cc85cc-f588-4991-a64d-88b4f119c44d" /><br /> 

📸 **Verifying Drive Mapping on `AD-Win11-02` using `net use` for `Tech User 2`**

<img width="1920" height="909" alt="Net Use Command on `AD-WIN11-02` for `Tech User 2`" src="https://github.com/user-attachments/assets/588c63ae-b003-4c35-916b-d28f385e9f79" /><br /> 

📸 **Verifying Drive Mapping on `AD-Win11-01` using `net use` for `lguzha`**

<img width="1920" height="909" alt="Verifying Drive Mapping on `AD-Win11-01` using `net use` for `lguzha`" src="https://github.com/user-attachments/assets/2629d3c2-8360-4cc0-987e-226b10ba654a" /><br /> 

📸 **Verifying Drive Mapping on `AD-Win11-02` using `net use` for `mguzha`**

<img width="1920" height="909" alt="Verifying Drive Mapping on `AD-Win11-02` using `net use` for `mguzha`" src="https://github.com/user-attachments/assets/f11815e7-b34e-4c61-9e34-5b33953b4985" />

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
