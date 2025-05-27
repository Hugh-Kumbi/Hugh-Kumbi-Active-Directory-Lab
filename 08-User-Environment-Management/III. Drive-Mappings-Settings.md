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

  📂 `User Configuration > Preferences > Windows Settings > Drive Maps`

### ➕ New Mapped Drive:

- **Action:** Create  
- **Location:** `\\WINSERVER2025\`  
- **Label as:** Shared Drive  
- **Drive Letter:** Z:  
- **Reconnect:** Enabled  
- **Use:** Update  
- **Item-level Targeting:** Enabled to apply based on group membership i.e., only for the IT Security Group

📸 **Drive Mapping Settings Window Showing Path, Label, and Drive Letter**

![Drive Mapping Settings Window Showing Path, Label, and Drive Letter](https://github.com/user-attachments/assets/2ba0dbb1-f312-48ad-b758-e563e098a379)

📸 **Item-Level Targeting Configurations**

![Item-Level Targeting Configurations](https://github.com/user-attachments/assets/1417ac25-1473-457d-a513-77bd1609d38c)

![Item-Level Targeting Configurations 1](https://github.com/user-attachments/assets/6bf0f374-cf60-4642-b5be-038a61031c99)

📸 **Drive Maps GPP Window**

![Drive Maps GPP Window](https://github.com/user-attachments/assets/ea7319d7-927b-4d73-99ca-a2ec3e4e8536)

📸 **Shared Folder Path for SecurityAudits**

![IT Security Shared Drive File in C Drive Shared](https://github.com/user-attachments/assets/c5f09569-54da-4c18-a1c8-e238817b15b8)

![IT Security Shared Drive File in C Drive Shared 1](https://github.com/user-attachments/assets/9220c5bb-4e47-491f-b43f-c74abfb62741)

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

📸 **File Explorer Showing The Mapped Z Drive**

![File Explorer Showing The Mapped Z Drive](https://github.com/user-attachments/assets/88148a57-202d-4a9a-9ca7-15d1384fa82c)

📸 **Properties Of The Mapped Drive**

![Properties Of The Mapped Drive](https://github.com/user-attachments/assets/e9b2ae01-ee44-4bb7-a857-9fbda14e30ac)

---

## 🗂️ 5. Screenshot Storage

Save all related screenshots in:  
📂 [`06-Screenshots/Drive-Mappings/Drive-Mappings/Drive-Map-Settings.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/XII.%20Drive-Mappings/I.%20Drive-Map-Settings.md)
