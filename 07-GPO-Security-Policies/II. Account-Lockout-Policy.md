# 🚫 Account Lockout Policy GPO

## 🎯 Objective
To prevent brute-force logon attempts by locking user accounts after a set number of invalid login attempts.

## 🛠️ GPO Details
- **GPO Name:** Account Lockout Policy
- **Scope:** Domain-wide

## ⚙️ Settings Implemented
| Setting                                 | Value        |
|-----------------------------------------|--------------|
| Account lockout duration                | 30 minutes   |
| Account lockout threshold               | 5 attempts   |
| Reset lockout counter after             | 30 minutes   |

## 📸 Screenshot
![Account Lockout Policy GPO](../../06-Screenshots/Security-Policies/account-lockout-settings.png)

## ✅ Verification
- Tested with dummy user accounts and incorrect passwords to ensure lockout.
- Confirmed via Event Viewer logs and GPO Management Console.
