# 🔐 Password Policy GPO

## 🎯 Objective
To enhance account security by enforcing strong password policies across all domain users.

## 🛠️ GPO Details
- **GPO Name:** Domain Password Policy
- **Scope:** Applied at the domain level to ensure all users comply.

## ⚙️ Settings Implemented
| Setting                                  | Value                 |
|------------------------------------------|------------------------|
| Enforce password history                 | 24 passwords remembered |
| Maximum password age                     | 90 days                |
| Minimum password age                     | 1 day                  |
| Minimum password length                  | 12 characters          |
| Password must meet complexity requirements | Enabled             |
| Store passwords using reversible encryption | Disabled            |

## 📸 Screenshot
![Password Policy GPO](https://github.com/user-attachments/assets/94702822-f78a-4afc-b672-699ee5cf3e2c)

![Password Policy GPO](![Uploading Password Policy GPO.png…]()
)(../../06-Screenshots/Security-Policies/password-policy-gpo.png)

## ✅ Verification
- Used `gpresult /H report.html` to confirm the policy was applied.
- Attempted to change password to weak formats to confirm rejection.

🗂️ 5. Screenshot Storage
All related troubleshooting screenshots are saved in:
📂 [`06-Screenshots/GPO-Security-Policies/Password Policy GPO.png`]()
