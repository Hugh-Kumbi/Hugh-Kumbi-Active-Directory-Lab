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

## 11. 🖥️ Command Line Results from `gpupdate`

Use the gpupdate command to refresh Group Policy settings on client machines, ensuring that drive mappings are updated.

📸 **Command Line Results from `gpupdate`  on `AD-WIN11-01`**

<img width="1920" height="909" alt="Command Line Showing gpupdate Output for `AD-WIN11-01`" src="https://github.com/user-attachments/assets/5a74153c-7540-4c85-98a4-7bb0cd8ab944" /><br /> 

📸 **Command Line Results from `gpupdate` on `AD-WIN11-02`**

<img width="1920" height="909" alt="GPUPDATE After Implementing Security Scripts Enforcement Policy" src="https://github.com/user-attachments/assets/26b36d63-ea65-4064-a331-8cc436e5ac98" />

---

## 12. 🖥️ Command Line Results From `gpresult`

Verify the drive mappings using the gpresult command, ensuring that the correct network drives are being mapped for the user.

📸 **Command Line Results From `gpresult` on `AD-WIN11-01`**

<img width="1920" height="909" alt="Command Line Results From `gpresult` on `AD-WIN11-01`" src="https://github.com/user-attachments/assets/4f8397ff-d55a-4d00-b2e0-36167ab29d49" /><br /> 

<img width="1920" height="909" alt="Command Line Results From `gpresult` on `AD-WIN11-01` 1" src="https://github.com/user-attachments/assets/16362ab8-c154-47da-b8fd-e7cd43fcd7c4" /><br /> 

<img width="1920" height="909" alt="Command Line Results From `gpresult` on `AD-WIN11-01` 2" src="https://github.com/user-attachments/assets/a6cca68f-4069-426a-b39b-cdd98d9bee43" /><br /> 

📸 **Command Line Results From `gpresult` on `AD-WIN11-02`**

<img width="1920" height="909" alt="Command Line Results From `gpresult` on `AD-WIN11-02`" src="https://github.com/user-attachments/assets/89950ee9-5ca4-4763-8417-1fca6e4b4ac6" /><br /> 

<img width="1920" height="909" alt="Command Line Results From `gpresult` on `AD-WIN11-02` 1" src="https://github.com/user-attachments/assets/f46b29dc-e50c-4066-92eb-5b3beb5a732f" /><br /> 

<img width="1920" height="909" alt="Command Line Results From `gpresult` on `AD-WIN11-02` 2" src="https://github.com/user-attachments/assets/641abae8-a61d-4151-a354-439ac05c10a6" />

---

## 🗂️ 13. Screenshot Storage

Store all related images in:<br /> 
📂 [`08-User-Environment-Management/III. Drive-Mappings-Settings.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/08-User-Environment-Management/III.%20Drive-Mappings-Settings.md)
📂 [`08-User-Environment-Management/IV. Drive-Mappings-Config.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/08-User-Environment-Management/IV.%20Drive-Mappings-Config.md)
