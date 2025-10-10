# 🔧 Control Panel & Settings Restrictions

This section explains how I implemented **Control Panel and Settings Restrictions** via Group Policy to prevent standard users from accessing system settings. This increases security and reduces the risk of misconfiguration or unauthorized system changes.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Control Panel & Settings Restrictions Policy 
- **Linked To:** Tech OU

📸 **Group Policy Management Console Showing the Control Panel Restrictions GPO and Link**

![Group Policy Management Console Showing the Control Panel Restrictions GPO and Link](https://github.com/user-attachments/assets/9f7a372f-5339-4a94-a02f-c16f371df616)

---

## 🛠️ 2. Policy Configuration Steps

1. Navigated to:  
   📂 `User Configuration > Policies > Administrative Templates > Control Panel`

2. Enabled the policy:  
   `Prohibit access to Control Panel and PC settings`

📸 **Policy Setting - Prohibit Access to Control Panel**

![Policy Setting - Prohibit Access to Control Panel](https://github.com/user-attachments/assets/46c89f91-bcc2-41e7-a160-f71dc1950c97)

3. Additionally verified these related settings:
   - Enabled the Hide specified Control Panel items policy 
   
   📸 **Control Panel Restrictions Showing Only Specified Control Panel Items**
   
![Control Panel Restrictions Showing Only Specified Control Panel Items](https://github.com/user-attachments/assets/7d15f348-6cb5-43c5-a0c4-17d428e02947)
   
   - Enabled the Show only specified Control Panel items policy.

  📸 **Control Panel Restrictions Showing Disallowed Control Panel Items**
  
![Control Panel Restrictions Showing Disallowed Control Panel Items](https://github.com/user-attachments/assets/b183592b-ca64-47e5-8647-75ee2bfc1cd3)

---

## 🚫 3. User Experience

After applying the policy, users:
- Receive an error message when attempting to open Control Panel or Windows Settings.
- Are unable to make changes to system configurations.

📸 **Control Panel Access Blocked Message on `AD-WIN11-01`**

![Control Panel Access Blocked Message on `AD-WIN11-01`](https://github.com/user-attachments/assets/765325a6-e270-47d6-84e5-ede7eda3395b)

![Control Panel Access Blocked Message  `AD-WIN11-01` 1](https://github.com/user-attachments/assets/ec4b24ea-d9ba-4ca6-aea6-c7f48f81c009)

📸 **Control Panel Access Blocked Message on `AD-WIN11-02`**

![Control Panel Access Blocked Message on `AD-WIN11-02`](https://github.com/user-attachments/assets/4e1e0324-2d7b-45e9-ace7-75e98779cc39)

![Control Panel Access Blocked Message on `AD-WIN11-02` 1](https://github.com/user-attachments/assets/1d2f810d-12fa-4195-afb9-440ee1748b30)

---

## ✅ 4. Testing and Results

To verify the policy:
1. Logged into a domain-joined Windows 11 client as a standard user.
2. Attempted to open Control Panel and Settings.
3. Verified that both were blocked successfully.

📸 **Settings Access Blocked Message on `AD-WIN11-01`**

![Settings Access Blocked Message  `AD-WIN11-01`](https://github.com/user-attachments/assets/2f3b7852-7515-47c2-9a2c-f29371a6362f)

![Settings Access Blocked Message  `AD-WIN11-01` 1](https://github.com/user-attachments/assets/22378dd1-b5a3-4867-aefc-dd41fcd90d1a)

📸 **Settings Access Blocked Message on `AD-WIN11-02`**

![Settings Access Blocked Message on `AD-WIN11-02`](https://github.com/user-attachments/assets/45378cdc-b8a4-40c0-8c59-f49e4356b9c6)

![Settings Access Blocked Message on `AD-WIN11-02` 1](https://github.com/user-attachments/assets/8beca6ad-6e56-4534-8e90-e0ee1df28d27)

---

## 🗂️ 5. Screenshot Storage

All images related to this section are stored in:<br /> 
📂 [`06-Screenshots/XXII. Control Panel Restrictions Policy`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/tree/main/06-Screenshots/XXII.%20Control%20Panel%20Restrictions%20Policy)
