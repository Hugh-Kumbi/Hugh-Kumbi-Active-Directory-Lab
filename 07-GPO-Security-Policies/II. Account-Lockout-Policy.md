# 🚫 Account Lockout Policy GPO

## 🎯 1. Objective

To prevent brute-force logon attempts by locking user accounts after a set number of invalid login attempts.

---

## 🛠️ 2. GPO Details

- **GPO Name:** Account Lockout Policy
- **Scope:** Applied at the domain level.

---

## ⚙️ 3. Settings Implemented

| Setting                                     | Value         |
|---------------------------------------------|---------------|
| **Account lockout duration**                | 30 minutes    |
| **Account lockout threshold**               | 5 attempts    |
| **Allow Administrator account lockout**     | Disabled      |
| **Reset account lockout counter after**     | 10 minutes    |

**📸 Account Lockout Policy Showing Each Individual Setting With Values Applied**

![Account Lockout Policy Showing Each Individual Setting With Values Applied](https://github.com/user-attachments/assets/6653c503-86e7-464d-9cdf-86636220644d)

---

## ✅ 4. Verification

- Tested with dummy user accounts and incorrect passwords to ensure lockout.
- Confirmed via Event Viewer logs and GPO Management Console.

---

## 📁 5. Screenshot Storage

Screenshots for this section should be saved in:<br />  
📂 [`06-Screenshots/Account-Lockout-Policy/Account-Lockout-Settings/Account-Lockout-Settings.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/VIII.%20Account-Lockout-Policy/Account-Lockout-Settings.md)
