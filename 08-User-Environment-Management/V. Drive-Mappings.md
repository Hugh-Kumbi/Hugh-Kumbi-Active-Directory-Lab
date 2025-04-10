# 💽 Drive Mappings via Group Policy

This section outlines how I configured shared drive mappings using Group Policy Preferences. Mapping network drives helps streamline access to shared resources and enforces consistency across user environments.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Drive Mappings Policy  
- **Linked To:** Organizational Unit (OU) where the users are located

📸 **Screenshot:**
- GPMC showing the Drive Mappings GPO linked to the correct OU

---

## 🛠️ 2. Policy Configuration Steps

1. Opened Group Policy Management Editor.  
2. Navigated to:  
   `User Configuration > Preferences > Windows Settings > Drive Maps`

3. Right-clicked and selected **New > Mapped Drive**  
4. Configured the following settings:

   - **Action:** Create  
   - **Location:** `\\Server\Share`  
   - **Drive Letter:** `S:`  
   - **Reconnect:** Enabled  
   - **Label as:** Shared Drive  
   - **Use:** Update or Replace depending on policy needs

5. Under the **Common** tab:
   - Enabled **Item-level targeting** to apply the mapping to specific users or security groups.

📸 **Screenshot:**
- Drive Mapping settings window showing path, label, and drive letter  
- Item-level targeting configuration

---

## 🔐 3. Share Permissions

- **Shared Folder Path:** `C:\Shares\Share`  
- **Network Share Name:** `\\Server\Share`

- **Share Permissions:**
  - Domain Users: Full Control

- **NTFS Permissions:**
  - Read/Write for necessary users or groups

📸 **Screenshot:**
- NTFS permission settings  
- Share settings for `\\Server\Share`

---

## ✅ 4. Testing and Results

1. Logged in as a domain user on a Windows 11 client.  
2. Opened **File Explorer** and verified that drive `S:` was mapped to `\\Server\Share`.  
3. Created a test file to confirm write access.

📸 **Screenshot:**
- File Explorer showing the mapped S: drive  
- File saved successfully in the shared folder

---

## 🗂️ 5. Screenshot Storage

Store all related images in:  
📂 [`06-Screenshots/Drive-Mappings/Drive-Map-Config`]()
