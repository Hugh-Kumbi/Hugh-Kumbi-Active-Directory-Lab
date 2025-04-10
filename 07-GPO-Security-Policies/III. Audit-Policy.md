# 🔍 Audit Policy GPO

## 🎯 Objective
To track and monitor critical security events such as logons, account management, and policy changes.

## 🛠️ GPO Details
- **GPO Name:** Domain Audit Policy
- **Scope:** Domain Controllers and critical servers

## 🔎 Categories Audited
| Category               | Subcategory                        | Audit Type        |
|------------------------|-------------------------------------|-------------------|
| Account Logon          | Credential Validation               | Success, Failure  |
| Account Management     | User Account Management             | Success, Failure  |
| Detailed Tracking      | Process Creation                    | Success           |
| Logon/Logoff           | Logon                               | Success, Failure  |
| Object Access          | File System                         | Success, Failure  |
| Policy Change          | Audit Policy Change                 | Success, Failure  |
| Privilege Use          | Sensitive Privilege Use             | Success, Failure  |
| System                 | Security System Extension           | Success, Failure  |

## 📸 Screenshot
![Audit Policy GPO](../../06-Screenshots/Security-Policies/audit-policy-settings.png)

## ✅ Verification
- Monitored **Security logs** in Event Viewer for expected audit events.
- Ran test logons and account changes to generate events.
