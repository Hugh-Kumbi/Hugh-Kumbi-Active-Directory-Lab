# 🔧 Drive Mappings Settings

Having configured the **Drive Mappings policy** within Group Policy, I can confirm that the designated network drives are now being correctly and consistently assigned to the targeted users and groups upon login.

The settings were straightforward to implement, allowing me to define the drive letters, network paths, and security group filtering to ensure the mappings are applied as intended across the user base.

---

## 1. 🗺️ Drive Mappings Overview

Having now deployed the Drive Mappings policy, I can confirm it successfully assigns the required network drives to users based on their group membership. This ensures all users have immediate and consistent access to their designated shared resources as soon as they log in.

📸 **Group Policy Management Console Showing Drive Mappings Policy under the ITSecurity OU**

<img width="1920" height="909" alt="Group Policy Management Console Showing Drive Mappings Policy Under the ITSecurity OU" src="https://github.com/user-attachments/assets/263cbd1a-7a0b-4eb0-b27b-6e06ba78d26f" /><br /> 

📸 **GPMC Showing the Map Network Drives Policy GPO Linked to the Employees OU**

<img width="1920" height="909" alt="GPMC Showing the Map Network Drives Policy GPO Linked to the Employees OU" src="https://github.com/user-attachments/assets/285d255a-483e-482c-aca3-2ec505b2eca6" />

---

## 2. 🔗Configuring Group Policy Preferences for Drive Mappings

Having completed the configuration, I utilized Group Policy Preferences for the drive mappings, which provided the superior flexibility needed. This allowed me to define precise actions—such as creating new mappings, updating existing ones, and replacing outdated connections—ensuring a clean and consistent state for all user drive connections.

📸 **Drive Mappings Overview**

![Drive Maps GPP Window1](https://github.com/user-attachments/assets/61128a0a-70ee-4c77-b84a-f7b1e5cc4787)

![Drive Maps GPP Window 2](https://github.com/user-attachments/assets/ba62deeb-5cc5-452c-a6d0-39d53b2a3ed5)

---

## 3. 👨‍💻 Configuring Drive Mapping via Group Policy

Having configured the Drive Mappings within Group Policy, I successfully assigned the required network drives by linking the policy to specific Organizational Units. This ensures that users in those OUs now have their designated drives mapped automatically upon login.

📸 **Configuring Drive Mapping via Group Policy**

<img width="1920" height="909" alt="Configuring Drive Mapping via Group Policy" src="https://github.com/user-attachments/assets/56e961b9-0b54-4f59-b4fc-144968f4f301" /><br /> 

<img width="1920" height="909" alt="Configuring Drive Mapping via Group Policy 1" src="https://github.com/user-attachments/assets/641b3f2c-3d80-4a35-a3e1-171fa3263f1e" />

---

## 4. ➕ Drive Mapping Actions: Create, Update, or Delete

By configuring the **Action** setting, I was able to precisely control the lifecycle of each network drive. For new requirements, I set the action to **Create**. For existing drives that needed their paths modified, I used **Update**. Finally, to retire old or unused drives, I applied the **Delete** action, which successfully removed them from user profiles.

📸 **Drive Mapping Actions: Create, Update, or Delete**

![Drive Mapping Settings Window Showing Path, Label, and Drive Letter2](https://github.com/user-attachments/assets/ae7248b5-bad8-44e5-b71d-04d7a6bbae9a)

![Drive Mapping Settings Window Showing Path, Label, and Drive Letter 3](https://github.com/user-attachments/assets/e0d2097b-5fcc-4301-9866-52747f64f014)

---

## 5. 🔧 Configuring Drive Mapping to Use Specific Conditions

Having deployed the policy, I leveraged the item-level targeting options to apply drive mappings based on specific conditions. This allowed me to, for instance, map a department-specific drive only for users in the "IT" security group, and a software repository drive only for devices running Windows 11, ensuring a highly targeted and flexible configuration.

📸 **Configuring Drive Mapping to Use Specific Conditions**

<img width="1920" height="909" alt="Shared Folder Path for ITSecurity Shared Drive" src="https://github.com/user-attachments/assets/67f8f0b5-ab11-4e63-9150-c2d8d80d0601" /><br /> 

<img width="1920" height="909" alt="Shared Folder Path for ITSecurity Shared Drive 1" src="https://github.com/user-attachments/assets/3198de3c-8f93-453c-9045-c678f8b0a8f8" /><br />

![Share settings for Server Share Drive Mapping S](https://github.com/user-attachments/assets/739d6e73-2b7c-4779-b3d9-895de2d9539b)

![Share settings for Server Share Drive Mapping S 1](https://github.com/user-attachments/assets/863ffc53-007f-4d18-8f87-abc3c694016f)

---

## 6. 🗄️ Setting Drive Letter and Network Path

For each mapped drive, I specified the exact **Drive Letter** and corresponding **Network Path**. For example, I mapped drive `S:` to `\\WINSERVER2025\ITSecurity Shared Drive` for the security team, and drive `Z:` to `\\WINSERVER2025\DepartmentalShares` for general department use. I first verified that each network path was accessible and had the correct permissions before finalizing the policy.

📸 **Setting Drive Letter and Network Path**

![Drive Mapping Settings Window Showing Path, Label, and Drive Letter2](https://github.com/user-attachments/assets/ae7248b5-bad8-44e5-b71d-04d7a6bbae9a)

![Drive Mapping Settings Window Showing Path, Label, and Drive Letter 3](https://github.com/user-attachments/assets/e0d2097b-5fcc-4301-9866-52747f64f014)

## 7. ⚙️ Configuring Reconnection Settings

Having enabled the **Reconnect** option for each mapped drive, I have confirmed that the connections are now automatically restored for users at every login. This provides seamless, persistent access to their shared network resources without any manual intervention required.

📸 **Configuring Reconnection Settings**

![Drive Mapping Settings Window Showing Path, Label, and Drive Letter2](https://github.com/user-attachments/assets/ae7248b5-bad8-44e5-b71d-04d7a6bbae9a)

![Drive Mapping Settings Window Showing Path, Label, and Drive Letter 3](https://github.com/user-attachments/assets/e0d2097b-5fcc-4301-9866-52747f64f014)

---

## 8. 👥 Setting Drive Mapping for Specific User Groups

By linking the Group Policy Object to specific Organizational Units and applying security group filtering, I successfully targeted the drive mappings. This ensured that only authorized users in the "IT" OU, for example, received their dedicated departmental drive, while the other groups received theirs, maintaining strict access control.

📸 **Setting Drive Mapping for Specific User Groups**

![Item-Level Targeting Configurations 4](https://github.com/user-attachments/assets/114f48fa-1674-4b98-b1d2-4467af19df51)

![Item-Level Targeting Configurations 6](https://github.com/user-attachments/assets/20b3c11d-63d9-4bc4-ada3-1f3c5dded96e)

![Item-Level Targeting Configurations 9](https://github.com/user-attachments/assets/7bd01cd7-6f9b-4fb9-9d03-7a18fa1fa37b)

![Item-Level Targeting Configurations 8](https://github.com/user-attachments/assets/cb8e0af6-dd74-4db3-ba4d-0334ab82912a)

---

## 9. 🔗 Applying Drive Mappings Using Security Filtering

Having completed the configuration, I used **Security Filtering** on the GPO to apply the drive mappings with precision. By specifying the relevant security groups (e.g., "ITSecurity"), I ensured that only authorized users and computers receive the intended mapped drives, providing the granular control we required.

📸 **Applying Drive Mappings Using Security Filtering**

<img width="1920" height="909" alt="Applying Drive Mappings Using Security Filtering" src="https://github.com/user-attachments/assets/4f5241b9-e6ab-4b5a-b8e6-06a40f82f83a" /><br />

<img width="1920" height="909" alt="Applying Map Network Drives Policy Using Security Filtering" src="https://github.com/user-attachments/assets/bac52056-ad9d-4f76-bd4c-834aff553f51" />

---

## 10. ✅ Verifying Drive Mapping on Client Machines

Following the configuration, I verified the drive mappings were applied correctly by having test users log in. A quick check in their **This PC** window confirmed the presence of the new network drives (e.g., S: and Z:), and running the `net use` command from the command line provided a successful command-line confirmation of the persistent connections.

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

Following the policy configuration, I executed the `gpupdate /force` command on the client machines. This successfully refreshed the Group Policy settings, ensuring the new and updated drive mappings were applied immediately without requiring a user logout.

📸 **Command Line Results from `gpupdate`  on `AD-WIN11-01`**

<img width="1920" height="909" alt="Command Line Showing gpupdate Output for `AD-WIN11-01`" src="https://github.com/user-attachments/assets/5a74153c-7540-4c85-98a4-7bb0cd8ab944" /><br /> 

📸 **Command Line Results from `gpupdate` on `AD-WIN11-02`**

<img width="1920" height="909" alt="GPUPDATE After Implementing Security Scripts Enforcement Policy" src="https://github.com/user-attachments/assets/26b36d63-ea65-4064-a331-8cc436e5ac98" />

---

## 12. 🖥️ Command Line Results From `gpresult`

After the policy refresh, I used the `gpresult /r` and `gpresult /h` commands to generate detailed reports. The output confirmed that the correct Drive Mapping policy was being applied to the user, verifying that the intended network drives were successfully mapped.

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

All screenshots for this section can be found in:<br /> 
📂 [`08-User-Environment-Management/III. Drive-Mappings-Settings.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/08-User-Environment-Management/III.%20Drive-Mappings-Settings.md)<br /> 
📂 [`08-User-Environment-Management/IV. Drive-Mappings-Config.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/08-User-Environment-Management/IV.%20Drive-Mappings-Config.md)
