# 🚫 Account Lockout Policy GPO

## 🎯 Objective

To prevent brute-force logon attempts by locking user accounts after a set number of invalid login attempts.

---

## 🛠️ 1. GPO Details

- **GPO Name:** Win11 Security Policy
- **Scope:** Domain-wide

---

## ⚙️ 2. Settings Implemented
| Setting                                 | Value        |
|-----------------------------------------|--------------|
| Account lockout duration                | 30 minutes   |
| Account lockout threshold               | 5 attempts   |
| Reset lockout counter after             | 30 minutes   |

## 📸 Screenshot

![Each Individual Setting With Values Applied](https://github.com/user-attachments/assets/3ff81187-e9ee-475f-a78e-d6c1345069df)

---

## ✅ 3. Verification

- Tested with dummy user accounts and incorrect passwords to ensure lockout.
- Confirmed via Event Viewer logs and GPO Management Console.

## 📁 4. Screenshot Storage

Screenshots for this section should be saved in:  
📂 [`06-Screenshots/Account-Lockout-Policy/Account-Lockout-Settings/Account-Lockout-Settings.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/VIII.%20Account-Lockout-Policy/Account-Lockout-Settings.md)
