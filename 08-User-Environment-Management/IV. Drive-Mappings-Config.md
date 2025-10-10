# 💽 Drive Mappings via Group Policy

This section outlines how I configured shared drive mappings using Group Policy Preferences. Mapping network drives helps streamline access to shared resources and enforces consistency across user environments.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Map Network Drives Policy  
- **Linked To:** Employees OU

📸 **GPMC Showing the Map Network Drives Policy GPO Linked to the Employees OU**

<img width="1920" height="909" alt="GPMC Showing the Map Network Drives Policy GPO Linked to the Employees OU" src="https://github.com/user-attachments/assets/285d255a-483e-482c-aca3-2ec505b2eca6" />

---

## 🛠️ 2. Policy Configuration Steps

1. Opened Group Policy Management Editor.  

2. Navigated to:  
   `User Configuration > Preferences > Windows Settings > Drive Maps`

3. Right-clicked and selected **New > Mapped Drive**  

4. Configured the following settings:
   - **Action:** Create  
   - **Location:** `\\WINSERVER2025\DepartmentalShares`  
   - **Drive Letter:** `S:`  
   - **Reconnect:** Enabled  
   - **Label as:** Departmental Shared Drive  
   - **Use:** Update or Replace depending on policy needs

5. Under the **Common** tab:
   - Enabled **Item-level targeting** to apply the mapping to specific users or security groups.

📸 **Drive Mapping Settings Window Showing Path, Label, and Drive Letter**

![Drive Mapping Settings Window Showing Path, Label, and Drive Letter 3](https://github.com/user-attachments/assets/e0d2097b-5fcc-4301-9866-52747f64f014)

📸 **Item-Level Targeting Configurations**

![Item-Level Targeting Configurations 9](https://github.com/user-attachments/assets/7bd01cd7-6f9b-4fb9-9d03-7a18fa1fa37b)

![Item-Level Targeting Configurations 8](https://github.com/user-attachments/assets/cb8e0af6-dd74-4db3-ba4d-0334ab82912a)

📸 **Drive Maps GPP Window**

![Drive Maps GPP Window 2](https://github.com/user-attachments/assets/ba62deeb-5cc5-452c-a6d0-39d53b2a3ed5)

---

## 🔐 3. Share Permissions

- **Shared Folder Path:** `C:\DepartmentalShares`  
- **Network Share Name:** `\\WINSERVER2025\DepartmentalShares`

- **Share Permissions:**
  - Domain Users: Full Control

- **NTFS Permissions:**
  - Read/Write for necessary users or groups

📸 **NTFS Permission Settings Drive Maps S**

![NTFS Permission Settings Drive Maps S](https://github.com/user-attachments/assets/d09840f9-d778-4c99-a859-6a0e14444bef)

![NTFS Permission Settings Drive Maps S 1](https://github.com/user-attachments/assets/3baa037e-d85b-4841-a006-d0565c9b84d1)

📸 **Share Settings for Server Share Drive Mapping S**

![Share settings for Server Share Drive Mapping S](https://github.com/user-attachments/assets/739d6e73-2b7c-4779-b3d9-895de2d9539b)

![Share settings for Server Share Drive Mapping S 1](https://github.com/user-attachments/assets/863ffc53-007f-4d18-8f87-abc3c694016f)

---

## ✅ 4. Testing and Results

1. Logged in as a domain user on a Windows 11 client.  
2. Opened **File Explorer** and verified that drive `S:` was mapped to `\\WINSERVER2025\DepartmentalShares\UserInfo`.  
3. Created a test file to confirm write access.

📸 **File Explorer Showing The mapped S Drive on `AD-WIN11-01` for `mguzha`**

![File Explorer Showing The mapped S Drive on `AD-WIN11-01` for `mguzha`](https://github.com/user-attachments/assets/95c47420-35b4-4ac0-a6e3-a4f12da3bbbc)

📸 **File Saved Successfully in the Shared Folder on `AD-WIN11-01` for `mguzha`**

![File Saved Successfully in the Shared Folder on `AD-WIN11-01` for `mguzha`](https://github.com/user-attachments/assets/1de6ab1a-1906-4094-9ee6-e3e3b84f31ea)

![File Saved Successfully in the Shared Folder on `AD-WIN11-01` for `TechUser1` 1](https://github.com/user-attachments/assets/0222a592-b0e8-452c-a8e2-ba5165fd1611)

📸 **File Explorer Showing The mapped S Drive on `AD-WIN11-02` for `lguzha`**

![File Explorer Showing The mapped S Drive on `AD-WIN11-02` for `lguzha`](https://github.com/user-attachments/assets/858c213d-5bb3-459a-b78d-6aa888b2b63a)

![File Saved Successfully in the Shared Folder on `AD-WIN11-01` for `lguzha` 1](https://github.com/user-attachments/assets/cf5629b6-2314-4e48-8cc5-a08fc194bf77)

📸 **File Saved Successfully in the Shared Folder on `AD-WIN11-02` for `lguzha`**

![File Saved Successfully in the Shared Folder on `AD-WIN11-02` for `lguzha`](https://github.com/user-attachments/assets/3f271f26-2083-4d8e-825c-def9934f7380)

📸 **File Explorer Showing The mapped S Drive on `AD-WIN11-01` for `TechUser1`**

![File Explorer Showing The mapped S Drive on `AD-WIN11-01` for `TechUser1`](https://github.com/user-attachments/assets/c6f9896a-98f7-4ffc-a38b-4d76ec77e041)

📸 **File Saved Successfully in the Shared Folder on `AD-WIN11-01` for `TechUser1`**

![File Saved Successfully in the Shared Folder on `AD-WIN11-01` for `TechUser1`](https://github.com/user-attachments/assets/11f5c65d-9bbd-43d9-a312-8d8d96c56b6f)

![File Saved Successfully in the Shared Folder on `AD-WIN11-01` for `TechUser1` 1](https://github.com/user-attachments/assets/f8a21bda-1c59-460a-8596-8e4d043d1307)

📸 **File Explorer Showing The mapped S Drive on `AD-WIN11-02` for `TechUser2`**

![File Explorer Showing The mapped S Drive on `AD-WIN11-02` for `TechUser2`](https://github.com/user-attachments/assets/d7e62823-f6c3-4e67-8352-12d79b1ea10d)

📸 **File Saved Successfully in the Shared Folder on `AD-WIN11-02` for `TechUser2`**

![File Saved Successfully in the Shared Folder on `AD-WIN11-02` for `TechUser2`](https://github.com/user-attachments/assets/92b9e282-1dd6-44d6-aed5-a59d8b912637)

![File Saved Successfully in the Shared Folder on `AD-WIN11-02` for `TechUser2` 1](https://github.com/user-attachments/assets/e3ec3225-ccf7-472a-8647-f400d9e003b7)

---

## 🗂️ 5. Screenshot Storage

Store all related images in:<br /> 
📂 [`06-Screenshots/XXI. Drive-Mappings-Settings`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/tree/main/06-Screenshots/XXI.%20Drive-Mappings-Settings)
