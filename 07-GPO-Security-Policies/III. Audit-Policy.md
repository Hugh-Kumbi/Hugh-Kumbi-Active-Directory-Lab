# 🔍 Audit Policy GPO

## 🎯 1. Objective
To track and monitor critical security events such as logons, account management, and policy changes.

---

## 🛠️ 2. GPO Details
- **GPO Name:** Audit Policy
- **Scope:** Domain-wide

---

## 🔎 3. Categories Audited

| Category                   | Subcategory                         | Audit Type        |
|----------------------------|-------------------------------------|-------------------|
| **Account Logon**          | Credential Validation               | Success, Failure  |
| **Account Management**     | User Account Management             | Success, Failure  |
| **Detailed Tracking**      | Process Creation                    | Success           |
| **Logon/Logoff**           | Logon                               | Success, Failure  |
| **Object Access**          | File System                         | Success, Failure  |
| **Policy Change**          | Audit Policy Change                 | Success, Failure  |
| **Privilege Use**          | Sensitive Privilege Use             | Success, Failure  |
| **System**                 | Security System Extension           | Success, Failure  |

## 📸 Screenshot
![Advanced Audit Policy Configuration Window](https://github.com/user-attachments/assets/8e17d6d2-3340-4b6e-985e-61d71588b74b)

---

## ✅ 4. Verification
- Monitored **Security logs** in Event Viewer for expected audit events.
- Ran test logons and account changes to generate events.

---

## 📁 5. Screenshot Storage

Screenshots for this section should be saved in:  
📂 [`06-Screenshots/Audit-Policy/Audit-Policy/Audit-Policy-Settings`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/VIII.%20Audit-Policy/Audit-Policy-Settings.md)
