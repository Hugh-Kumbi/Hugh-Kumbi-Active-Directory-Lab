# 🚫 Account Lockout Policy (Domain GPO)

This document outlines the **Account Lockout Policy** configured in the domain to limit repeated invalid login attempts. This policy adds a critical layer of defense against password-guessing and brute-force attacks.

---

## 📛 1. GPO Name

- **GPO Name:** Account Lockout Policy  
- **Linked To:** hughdomain.local (domain root)

Created and applied via the **Group Policy Management Console (GPMC)**, this GPO was designed to lock accounts temporarily after multiple failed login attempts.

📸 **Screenshot:**
- GPMC showing the "Account Lockout Policy" GPO and its link to the domain

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
- Group Policy Editor showing the Account Lockout Policy path  
- Each individual setting with values applied

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

- Used `net user username /domain` to confirm lockout status.

📸 **Screenshot:**
- Lockout entry in Event Viewer
- Command prompt showing account status after lockout

---

## 📁 Screenshot Storage

Screenshots for this section should be saved in:  
📂 `06-Screenshots/Account-Lockout-Policy/`

To include images in this Markdown:

```md
![Account Lockout Settings](../../06-Screenshots/Account-Lockout-Policy/account-lockout-settings.png)
