# 🔗 Drive Mappings Policy

This document explains how I configured **drive mappings via Group Policy** to provide users with seamless access to shared resources on the domain.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Drive Mappings Policy  
- **Linked To:** hughdomain.local

📸 **Screenshot:**
![Group Policy Management Console Showing Drive Mappings Policy Under The Correct OU](https://github.com/user-attachments/assets/f2585604-6be3-4e48-abda-158d16f17783)

---

## 🛠️ 2. Policy Settings

I used the **Group Policy Preferences** feature for drive mappings:

📂 `User Configuration > Preferences > Windows Settings > Drive Maps`

### ➕ New Mapped Drive:

- **Action:** Create  
- **Location:** `\\WIN-D2PQBCI88JQ\DepartmentShares`  
- **Label as:** Shared Drive  
- **Drive Letter:** Z:  
- **Reconnect:** Enabled  
- **Use:** Update  
- **Item-level Targeting:** Enabled to apply based on group membership i.e., only for the Tech Users Group

📸 **Screenshot:**
![Drive Maps GPP Window](https://github.com/user-attachments/assets/b7332443-b9d1-4772-9a6f-9c728003c753)

![Shared Folder Path and Drive Letter Configuration 10](https://github.com/user-attachments/assets/c0f01b56-6415-46b5-a765-f050936565ca)

![Shared Folder Path and Drive Letter Configuration 1](https://github.com/user-attachments/assets/ffea3ee2-ebd7-4d95-a2ee-09a6800a7d70)

![Shared Folder Path and Drive Letter Configuration 2](https://github.com/user-attachments/assets/fd839620-9d66-475c-894b-11303a8819b4)

![Shared Folder Path and Drive Letter Configuration 21](https://github.com/user-attachments/assets/856426ce-df8b-4c25-8c53-29e9385fd006)

![Shared Folder Path and Drive Letter Configuration 3](https://github.com/user-attachments/assets/44ebbfd0-9476-42fe-9005-7d99f1fc4d57)

![Shared Folder Path and Drive Letter Configuration 31](https://github.com/user-attachments/assets/3cc04899-fd49-4407-aa01-0a1df9718434)

![Item-Level Targeting Condition](https://github.com/user-attachments/assets/e1c1f6e3-1671-4138-8e4a-2f9e27de2fac)

---

## 🎯 3. Objectives and Benefits

- Provide consistent, mapped access to shared folders across all domain-joined devices.
- Simplify navigation to shared files and improve team collaboration.
- Use **item-level targeting** to ensure only specific users/groups get access.

This configuration eliminated the need for manual drive mapping and allowed better control over resource access.

---

## 🧪 4. Testing and Validation

To test the setup:

1. Logged in as a domain user from the targeted group.
2. Confirmed that the **Z:** drive appeared under “This PC”.
3. Verified access to the contents in the shared folder.

📸 **Screenshot:**
![File Explorer Showing The Mapped Z Drive (2)](https://github.com/user-attachments/assets/add0c1c1-4ff5-4a42-8265-bba1e4385648)

![Properties Of The Mapped Drive](https://github.com/user-attachments/assets/9287615a-91f1-4dfb-aa37-ba44e053f333)

---

## 🗂️ 5. Screenshot Storage

Save all related screenshots in:  
📂 [`06-Screenshots/Drive-Mappings/Drive-Mappings/Drive-Map-Settings.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/XII.%20Drive-Mappings/Drive-Map-Settings.md)
