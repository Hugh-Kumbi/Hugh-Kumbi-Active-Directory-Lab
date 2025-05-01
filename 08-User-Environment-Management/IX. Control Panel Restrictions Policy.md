# 🔧 Control Panel & Settings Restrictions

This section explains how I implemented **Control Panel and Settings Restrictions** via Group Policy to prevent standard users from accessing system settings. This increases security and reduces the risk of misconfiguration or unauthorized system changes.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Control Panel & Settings Restrictions Policy 
- **Linked To:** Tech OU

📸 **Group Policy Management Console Showing The Control Panel Restrictions GPO And Link**

![Control Panel Restrictions Policy Linked to Tech OU](https://github.com/user-attachments/assets/d17184d7-1008-47e5-91b4-611dbf9c2899)

---

## 🛠️ 2. Policy Configuration Steps

1. Navigated to:  
   📂 `User Configuration > Policies > Administrative Templates > Control Panel`

2. Enabled the policy:  
   `Prohibit access to Control Panel and PC settings`

📸 **Policy Setting - Prohibit Access to Control Panel**

![Control Panel Restrictions Policy Creation Editor Window Settings 1](https://github.com/user-attachments/assets/c3df2072-e33a-45bf-8d67-af8d18d744a0)

3. Additionally verified these related settings:
   - Enabled the Hide specified Control Panel items policy 
   
   📸 **Control Panel Restrictions Showing Only Specified Control Panel Items**
   
   ![Control Panel Restrictions Showing Only Specified Control Panel Items](https://github.com/user-attachments/assets/72b81a45-4fe8-44c9-877a-bbe60c637446)
   
   - Enabled the Show only specified Control Panel items policy.

  📸 **Control Panel Restrictions Showing disallowed Control Panel Items**
  
  ![Control Panel Restrictions Policy 1](https://github.com/user-attachments/assets/fa9264c7-7440-40eb-b34c-4b037c7acef2)

---

## 🚫 3. User Experience

After applying the policy, users:
- Receive an error message when attempting to open Control Panel or Windows Settings.
- Are unable to make changes to system configurations.

📸 **Control Panel Access Blocked Message**

![Control Panel Access Restriction Working](https://github.com/user-attachments/assets/871509e5-d1c3-4ad6-86bb-0667e8b7b263)

---

## ✅ 4. Testing and Results

To verify the policy:
1. Logged into a domain-joined Windows 11 client as a standard user.
2. Attempted to open Control Panel and Settings.
3. Verified that both were blocked successfully.

📸 **Settings Access Blocked Message**

![Settings Access Blocked Message](https://github.com/user-attachments/assets/9980d0de-856f-45f3-a63c-1e639aaaf65e)

---

## 🗂️ 5. Screenshot Storage

All images related to this section are stored in:
📂 [`06-Screenshots/Logon-Scripts/Logon-Logoff Script-Desktop.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/XIII.%20Logon-Logoff%20Scripts/II.%20Logon-Logoff%20Desktop.md)
