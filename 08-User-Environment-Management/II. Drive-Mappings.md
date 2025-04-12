# 🔗 Drive Mappings Policy

This document explains how I configured **drive mappings via Group Policy** to provide users with seamless access to shared resources on the domain.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Drive Mappings Policy  
- **Linked To:** hughdomain.local or relevant user OU

📸 **Screenshot:**
![Group Policy Management Console Showing Drive Mappings Policy Under The Correct OU](https://github.com/user-attachments/assets/f2585604-6be3-4e48-abda-158d16f17783)

---

## 🛠️ 2. Policy Settings

I used the **Group Policy Preferences** feature for drive mappings:

📂 `User Configuration > Preferences > Windows Settings > Drive Maps`

### ➕ New Mapped Drive:

- **Action:** Create  
- **Location:** `\\Server\Share`  
- **Label as:** Shared Drive  
- **Drive Letter:** Z:  
- **Reconnect:** Enabled  
- **Use:** Update  
- **Item-level Targeting:** Enabled to apply based on group membership (e.g., only for Marketing Group)

📸 **Screenshot:**
![Drive Maps GPP Window](https://github.com/user-attachments/assets/b7332443-b9d1-4772-9a6f-9c728003c753)

![Shared Folder Path and Drive Letter Configuration 10](https://github.com/user-attachments/assets/c0f01b56-6415-46b5-a765-f050936565ca)

![Shared Folder Path and Drive Letter Configuration 1](https://github.com/user-attachments/assets/ffea3ee2-ebd7-4d95-a2ee-09a6800a7d70)

![Shared Folder Path and Drive Letter Configuration 2](https://github.com/user-attachments/assets/fd839620-9d66-475c-894b-11303a8819b4)

![Shared Folder Path and Drive Letter Configuration 21](https://github.com/user-attachments/assets/856426ce-df8b-4c25-8c53-29e9385fd006)

![Shared Folder Path and Drive Letter Configuration 3](https://github.com/user-attachments/assets/44ebbfd0-9476-42fe-9005-7d99f1fc4d57)

![Shared Folder Path and Drive Letter Configuration 31](https://github.com/user-attachments/assets/3cc04899-fd49-4407-aa01-0a1df9718434)

- Item-level targeting condition

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
2. Confirmed that the **S:** drive appeared under “This PC”.
3. Verified access to the contents in the shared folder.

📸 **Screenshot:**
- File Explorer showing the mapped Z: drive  
- Properties of the mapped drive

---

## 🗂️ 5. Screenshot Storage

Save all related screenshots in:  
📂 [`06-Screenshots/Drive-Mappings/Drive-Mappings/drive-map-settings`]
