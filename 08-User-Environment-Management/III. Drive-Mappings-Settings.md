# 🔗 Drive Mappings Policy

This document explains how I configured **drive mappings via Group Policy** to provide users with seamless access to shared resources on the domain.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Drive Mappings Policy  
- **Linked To:** ITSecurity OU

📸 **Group Policy Management Console Showing Drive Mappings Policy Under the ITSecurity OU**

<img width="1920" height="909" alt="Group Policy Management Console Showing Drive Mappings Policy Under the ITSecurity OU" src="https://github.com/user-attachments/assets/263cbd1a-7a0b-4eb0-b27b-6e06ba78d26f" />

---

## 🛠️ 2. Policy Settings

I used the **Group Policy Preferences** feature for drive mappings:

  📂 `User Configuration > Preferences > Windows Settings > Drive Maps`

### ➕ New Mapped Drive:

- **Action:** Create  
- **Location:** `\\WINSERVER2025\ITSecurity Shared Drive`  
- **Label as:** Shared Drive  
- **Drive Letter:** Z:  
- **Reconnect:** Enabled  
- **Use:** Update  
- **Item-level Targeting:** Enabled to apply based on group membership i.e., only for the IT-Security Group

📸 **Drive Mapping Settings Window Showing Path, Label, and Drive Letter**

![Drive Mapping Settings Window Showing Path, Label, and Drive Letter2](https://github.com/user-attachments/assets/ae7248b5-bad8-44e5-b71d-04d7a6bbae9a)

📸 **Item-Level Targeting Configurations**

![Item-Level Targeting Configurations 4](https://github.com/user-attachments/assets/114f48fa-1674-4b98-b1d2-4467af19df51)

![Item-Level Targeting Configurations 6](https://github.com/user-attachments/assets/20b3c11d-63d9-4bc4-ada3-1f3c5dded96e)

📸 **Drive Maps GPP Window**

![Drive Maps GPP Window1](https://github.com/user-attachments/assets/61128a0a-70ee-4c77-b84a-f7b1e5cc4787)

📸 **Shared Folder Path for ITSecurity Shared Drive**

<img width="1920" height="909" alt="Shared Folder Path for ITSecurity Shared Drive" src="https://github.com/user-attachments/assets/67f8f0b5-ab11-4e63-9150-c2d8d80d0601" /><br /> 

<img width="1920" height="909" alt="Shared Folder Path for ITSecurity Shared Drive 1" src="https://github.com/user-attachments/assets/3198de3c-8f93-453c-9045-c678f8b0a8f8" />

---

## 🎯 3. Objectives and Benefits

- Provide consistent, mapped access to shared folders across all domain-joined devices.
- Simplify navigation to shared files and improve team collaboration.
- Use **item-level targeting** to ensure only the IT Security group gets access.

This configuration eliminated the need for manual drive mapping and allowed better control over resource access.

---

## 🧪 4. Testing and Validation

To test the setup:
1. Logged in as a domain user from the IT Security group.
2. Confirmed that the **Z:** drive appeared under “This PC”.
3. Verified access to the contents in the shared folder.

📸 **File Explorer Showing The Mapped Z Drive for `AD-Win11-01`**

<img width="1920" height="909" alt="File Explorer Showing The Mapped Z Drive for `AD-Win11-01`" src="https://github.com/user-attachments/assets/b441f8a6-0bfe-4cd9-b24e-84f23a3dbdba" /><br /> 

📸 **File Explorer Showing The Mapped Z Drive for `AD-Win11-02`**

<img width="1920" height="909" alt="File Explorer Showing The Mapped Z Drive for `AD-Win11-02`" src="https://github.com/user-attachments/assets/bd213b59-bc4e-49d1-b869-0a9f91bcc56c" /><br /> 

📸 **Properties Of The Mapped Drive for `AD-WIN11-01`**

<img width="1920" height="909" alt="Properties Of The Mapped Drive for `AD-Win11-01`" src="https://github.com/user-attachments/assets/d1721bf0-ad12-422e-b03b-a60b3cf7aed1" /><br /> 

📸 **Properties Of The Mapped Drive for `AD-WIN11-02`**

<img width="1920" height="909" alt="Properties Of The Mapped Drive for `AD-Win11-02`" src="https://github.com/user-attachments/assets/82911b5e-a0e2-4a3c-80d6-c4ec55669e38" />

---

## 🗂️ 5. Screenshot Storage

Save all related screenshots in:<br /> 
📂 [`06-Screenshots/XXI. Drive-Mappings-Settings`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/tree/main/06-Screenshots/XXI.%20Drive-Mappings-Settings)
