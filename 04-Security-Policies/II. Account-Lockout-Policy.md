# 🚫 Account Lockout Policy (Domain GPO)

This document outlines the **Account Lockout Policy** configured in the domain to limit repeated invalid login attempts. This policy adds a critical layer of defense against password-guessing and brute-force attacks.

---

## 📛 1. GPO Name

- **GPO Name:** Win11 Security Policy  
- **Linked To:** hughdomain.local (domain root)

Created and applied via the **Group Policy Management Console (GPMC)**, this GPO was designed to lock accounts temporarily after multiple failed login attempts.

📸 **Screenshot:**
![GPMC Showing The Account Lockout Policy GPO And Its Link To The Domain](https://github.com/user-attachments/assets/d62b5148-6c62-4236-8ee9-07b583a6c247)

---

## ⚙️ 2. Policy Settings

Configured in:

📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Account Policies > Account Lockout Policy`

| Setting                                 | Value         |
|-----------------------------------------|---------------|
| Account lockout duration                | 30 minutes    |
| Account lockout threshold               | 5 attempts    |
| Reset account lockout counter after     | 30 minutes    |

These settings ensure that accounts are temporarily disabled after five failed logon attempts, making it more difficult for attackers to guess passwords.

📸 **Screenshot:**
![Group Policy Editor Window Showing the Password Policy Path](https://github.com/user-attachments/assets/1ce841d1-5c09-4be7-9196-b48c0d8c84ae)

![Group Policy Editor showing the Account Lockout Policy path](https://github.com/user-attachments/assets/4188be8c-cfb9-407d-be3b-a3e3de9aabed)

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

📸 **Screenshot:**
![User Account Management Account Lockout](https://github.com/user-attachments/assets/9f5cd4f7-2ba3-4899-9ffd-d512b7128da0)

![Command Prompt Showing Account Status After Lockout](https://github.com/user-attachments/assets/b18b8a48-9b44-4f11-948d-fab810b29be2)

---

## 📁 Screenshot Storage

Screenshots for this section should be saved in:  
📂 [`06-Screenshots/Account-Lockout-Policy/Account-Lockout-Settings/Account-Lockout-Settings.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/VIII.%20Account-Lockout-Policy/Account-Lockout-Settings.md)
