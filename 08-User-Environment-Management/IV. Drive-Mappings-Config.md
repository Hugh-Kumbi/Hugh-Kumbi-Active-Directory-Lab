# 💽 Drive Mappings via Group Policy

This section outlines how I configured shared drive mappings using Group Policy Preferences. Mapping network drives helps streamline access to shared resources and enforces consistency across user environments.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Drive Mappings Policy  
- **Linked To:** Tech OU

📸 **GPMC Showing The Drive Mappings GPO Linked To The Tech OU**

![GPMC Showing The Drive Mappings GPO Linked To The Tech OU](https://github.com/user-attachments/assets/fe001a9d-547e-4d17-aa27-ee2636c0386d)

---

## 🛠️ 2. Policy Configuration Steps

1. Opened Group Policy Management Editor.  
2. Navigated to:  
   `User Configuration > Preferences > Windows Settings > Drive Maps`
3. Right-clicked and selected **New > Mapped Drive**  
4. Configured the following settings:
   - **Action:** Create  
   - **Location:** `\\WIN-D2PQBCI88JQ\Shares`  
   - **Drive Letter:** `S:`  
   - **Reconnect:** Enabled  
   - **Label as:** Shared Drive  
   - **Use:** Update or Replace depending on policy needs
5. Under the **Common** tab:
   - Enabled **Item-level targeting** to apply the mapping to specific users or security groups.

📸 **Drive Mapping Settings Window Showing Path, Label, and Drive Letter**

![Drive Mapping Settings Window Showing Path, Label, and Drive Letter](https://github.com/user-attachments/assets/6ffe13fd-8e6b-49f7-bd7c-7aa75ee898a9)

📸 **Item-Level Targeting Configurations**

![Item-Level Targeting Configuration](https://github.com/user-attachments/assets/bb4208c6-e570-4770-82b6-6d1d0f44e93b)

![Item-Level Targeting Configuration](https://github.com/user-attachments/assets/5d274933-a3d3-45a8-bbdd-5ba6d0ebdbbf)

---

## 🔐 3. Share Permissions

- **Shared Folder Path:** `C:\Shares\UserInfo`  
- **Network Share Name:** `\\WIN-D2PQBCI88JQ\Shares\UserInfo`

- **Share Permissions:**
  - Domain Users: Full Control

- **NTFS Permissions:**
  - Read/Write for necessary users or groups

📸 **NTFS Permission Settings Drive Maps S**

![NTFS Permission Settings Drive Maps S](https://github.com/user-attachments/assets/41681c23-ce77-4393-b344-81911b20c5ea)

📸 **Share settings for Server Share Drive Mapping S**

![Share settings for Server Share Drive Mapping S](https://github.com/user-attachments/assets/1a66274a-f41e-4285-a5bf-58475ed22a19)

---

## ✅ 4. Testing and Results

1. Logged in as a domain user on a Windows 11 client.  
2. Opened **File Explorer** and verified that drive `S:` was mapped to `\\Server\Share`.  
3. Created a test file to confirm write access.

📸 **File Explorer Showing The mapped S Drive**

![File Explorer Showing The mapped S Drive](https://github.com/user-attachments/assets/d25558c6-198a-46d7-9db2-e98fe00a6510)

📸 **File Savedn Successfully in The Shared Folder**

![File Savedn Successfully In The Shared Folder](https://github.com/user-attachments/assets/cbf325c1-ec0b-4a19-8db8-75074426585c)

---

## 🗂️ 5. Screenshot Storage

Store all related images in:  
📂 [`06-Screenshots/Drive-Mappings/Drive-Map-Config`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/XII.%20Drive-Mappings/II.%20Drive-Mappings-Config.md)
