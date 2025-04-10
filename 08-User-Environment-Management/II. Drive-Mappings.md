# 🔗 Drive Mappings Policy

This document explains how I configured **drive mappings via Group Policy** to provide users with seamless access to shared resources on the domain.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Drive Mappings Policy  
- **Linked To:** hughdomain.local or relevant user OU

📸 **Screenshot:**
- Group Policy Management Console showing “Drive Mappings Policy” under the correct OU

---

## 🛠️ 2. Policy Settings

I used the **Group Policy Preferences** feature for drive mappings:

📂 `User Configuration > Preferences > Windows Settings > Drive Maps`

### ➕ New Mapped Drive:

- **Action:** Create  
- **Location:** `\\Server\Share`  
- **Label as:** Shared Drive  
- **Drive Letter:** S:  
- **Reconnect:** Enabled  
- **Use:** Update  
- **Item-level Targeting:** Enabled to apply based on group membership (e.g., only for Marketing Group)

📸 **Screenshot:**
- Drive Maps GPP window  
- Shared folder path and drive letter configuration  
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
- File Explorer showing the mapped S: drive  
- Properties of the mapped drive

---

## 🗂️ 5. Screenshot Storage

Save all related screenshots in:  
📂 [`06-Screenshots/Drive-Mappings/Drive-Mappings/drive-map-settings`]
