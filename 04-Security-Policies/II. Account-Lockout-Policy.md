# 🚫 Account Lockout Policy (Domain GPO)

This document outlines the **Account Lockout Policy** configured in the domain to limit repeated invalid login attempts. This policy adds a critical layer of defense against password-guessing and brute-force attacks.

---

## 📛 1. GPO Name

- **GPO Name:** Account Lockout Policy  
- **Linked To:** hughdomain.local (domain root)

Created and applied via the **Group Policy Management Console (GPMC)**, this GPO was designed to lock accounts temporarily after multiple failed login attempts.

📸 **GPMC Showing The Account Lockout Policy GPO And Its Link to The Domain**

![GPMC Showing The Account Lockout Policy GPO And Its Link to The Domain](https://github.com/user-attachments/assets/de8ce8fa-ae37-4bbb-8cc6-faf17c429b2c)

---

## ⚙️ 2. Policy Settings

Configured in:

  📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Account Policies > Account Lockout Policy`

| Setting                                     | Value         |
|---------------------------------------------|---------------|
| **Account lockout duration**                | 30 minutes    |
| **Account lockout threshold**               | 5 attempts    |
| **Allow Administrator account lockout**     | Disabled      |
| **Reset account lockout counter after**     | 10 minutes    |

These settings ensure that accounts are temporarily disabled after five failed logon attempts, making it more difficult for attackers to guess passwords.

📸 **Group Policy Editor Window Showing the Account Lockout Policy Path**

![Group Policy Editor Window Showing the Account Lockout Policy Path](https://github.com/user-attachments/assets/6653c503-86e7-464d-9cdf-86636220644d)

---

## 📌 3. Purpose and Justification

### 🔐 Why These Settings?

- **Lockout threshold** protects against brute-force attacks by blocking accounts after several failed attempts.
- **Lockout duration** gives time for security teams to investigate.
- **Reset counter** balances usability and protection by allowing recovery after inactivity.

These configurations align with enterprise security policies and common audit standards.

---

## ✅ 4. Testing and Validation

- Simulated five incorrect logins on a test account.
- Verified the account was locked.
- Checked Event Viewer logs for lockout entries under:

  📂 `Event Viewer > Windows Logs > Security`

- Used `net user TechUser2` to confirm lockout status.

📸 **User Account Management Account Lockout**

![User Account Management Account Lockout](https://github.com/user-attachments/assets/aff939a4-6185-42ff-94e4-3ea5a53b3375)

📸 **Command Prompt Showing Account Status After Lockout**

![Command Prompt Showing Account Status After Lockout](https://github.com/user-attachments/assets/a9887b88-df20-4cfe-a5a6-feb654d5d21a)

📸 **Win11 Client Showing Account Lockout Policy Succedssfully Implemented for `TechUser2`**

![Account Lockout Policy Succedssfully Implemented for `TechUser2`](https://github.com/user-attachments/assets/79f911c0-f3ba-4c0a-b235-03a5b091136a)

---

## 📁 5. Screenshot Storage

Screenshots for this section should be saved in:  
📂 [`06-Screenshots/Account-Lockout-Policy.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/VIII.%20Account-Lockout-Policy/README.md)
