# 🔐 Password Policy GPO

## 🎯 1. Objective

To enhance account security by enforcing strong password policies across all domain users.

---

## 🛠️ 2. GPO Details

- **GPO Name:** Win11 Security Policy
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

**📸 Password Policy Showing Each Setting With Its Configured Value**

![Each Setting With Its Configured Value](https://github.com/user-attachments/assets/4938bd3a-8efd-421a-9a8c-82eaf0f54a4f)

---

## ✅ 4. Verification

- Used `gpresult /H report.html` to confirm the policy was applied.
- Attempted to change password to weak formats to confirm rejection.

---

## 📁 5. Screenshot Storage

All screenshots related to this section should be stored in:
📂 [`06-Screenshots/Password-Policy/Password-Policy-Settings.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/VII.%20Password-Policy/Password-Policy-Settings.md)
