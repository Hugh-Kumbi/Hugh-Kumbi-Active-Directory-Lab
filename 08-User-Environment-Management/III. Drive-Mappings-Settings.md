# 🔗 Drive Mappings Policy

This document explains how I configured **drive mappings via Group Policy** to provide users with seamless access to shared resources on the domain.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Drive Mappings Policy  
- **Linked To:** IT Security OU

📸 **Group Policy Management Console Showing Drive Mappings Policy Under the IT Security OU**

![Group Policy Management Console Showing Drive Mappings Policy Under the IT Security OU](https://github.com/user-attachments/assets/2a711d83-a70b-4fe9-be23-000953b22462)

---

## 🛠️ 2. Policy Settings

I used the **Group Policy Preferences** feature for drive mappings:

  📂 `User Configuration > Preferences > Windows Settings > Folder Redirection > Drive Maps`

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

![Shared Foler Path for ITSecurity Shared Drive](https://github.com/user-attachments/assets/69a6a790-d060-4360-ab9d-0af02ccabb9f)

![Shared Foler Path for ITSecurity Shared Drive 1](https://github.com/user-attachments/assets/b1ac7aa2-8141-49db-b290-a3c9886ec59b)

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

![File Explorer Showing The Mapped Z Drive for `AD-Win11-01`](https://github.com/user-attachments/assets/120c758a-5056-4518-bf14-311594966b16)

📸 **File Explorer Showing The Mapped Z Drive for `AD-Win11-02`**

![File Explorer Showing The Mapped Z Drive for `AD-Win11-02`](https://github.com/user-attachments/assets/46349b79-466b-4e7c-b967-896ed85d6975)

📸 **Properties Of The Mapped Drive for `AD-WIN11-01`**

![File Explorer Showing The Mapped Z Drive for `AD-Win11-01`](https://github.com/user-attachments/assets/42094619-c937-4782-9d9e-a8393f834434)

📸 **Properties Of The Mapped Drive for `AD-WIN11-02`**

![Properties of the Mapped Drive for `AD-WIN11-02`](https://github.com/user-attachments/assets/4062e92d-2d41-43c6-ac8d-3044abf5799e)

---

## 🗂️ 5. Screenshot Storage

Save all related screenshots in:  
📂 [`06-Screenshots/Drive-Mappings/Drive-Mappings/Drive-Map-Settings.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/XII.%20Drive-Mappings/I.%20Drive-Map-Settings.md)
