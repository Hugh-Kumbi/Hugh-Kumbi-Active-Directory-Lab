# 🔐 Password Policy GPO

## 🎯 1. Objective

To enhance account security by enforcing strong password policies across all domain users.

---

## 🛠️ 2. GPO Details

- **GPO Name:** Password Policy
- **Scope:** Applied at the domain level to ensure all users comply.

---

## ⚙️ 3. Settings Implemented

| Setting                                         | Value                   |
|-------------------------------------------------|-------------------------|
| **Enforce password history**                    | 24 passwords remembered |
| **Maximum password age**                        | 90 days                 |
| **Minimum password age**                        | 1 day                   |
| **Minimum password length**                     | 12 characters           |
| **Password must meet complexity requirements**  | Enabled                 |
| **Store passwords using reversible encryption** | Disabled                |

**📸 Password Policy Showing Each Setting with Its Configured Value**

![Password Policy Showing Each Setting with Its Configured Value](https://github.com/user-attachments/assets/9c13030a-018e-4ac8-8873-0991bfb40001)

---

## ✅ 4. Verification

- Used `gpresult /H report.html` to confirm the policy was applied.
- Attempted to change password to weak formats to confirm rejection.

---

## 📁 5. Screenshot Storage

All screenshots related to this section should be stored in:
📂 [`06-Screenshots/Password-Policy/Password-Policy-Settings.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/VII.%20Password-Policy/Password-Policy-Settings.md)
