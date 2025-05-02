# 🔐 GPO Security Policies

## 📘 Overview

This section of the Active Directory Lab focuses on implementing essential security policies through Group Policy Objects (GPOs) to enhance the security posture of the domain environment. It encompasses configurations for password policies, account lockout mechanisms, and audit policies to ensure robust protection against unauthorized access and to maintain compliance with security best practices.

---

## 🔑 1. Password Policy

### 📝 Description

Established stringent password requirements to enforce strong authentication practices across all domain users.

### 🛠️ Group Policy Settings Applied

- **Minimum Password Length:** 12 characters

- **Password Complexity:** Enabled (requires a mix of uppercase, lowercase, numbers, and special characters)

- **Maximum Password Age:** 90 days

- **Minimum Password Age:** 1 day

- **Enforce Password History:** Remember last 24 passwords

- **Store Passwords Using Reversible Encryption:** Disabled

These settings are configured under:

  📂 `Computer Configuration → Windows Settings → Security Settings → Account Policies → Password Policy`

Detailed configurations can be found in the `I. Password Policy.md` file.

---

## 🚫 2. Account Lockout Policy

### 📝 Description

Implemented account lockout settings to deter brute-force attacks and unauthorized access attempts.

### 🛠️ Group Policy Settings Applied

- **Account Lockout Threshold:** 5 invalid login attempts

- **Account Lockout Duration:** 15 minutes

- **Reset Account Lockout Counter After:** 15 minutes

These settings are configured under:

  📂 `Computer Configuration → Windows Settings → Security Settings → Account Policies → Account Lockout Policy`
  
Detailed configurations can be found in the `II. Account-Lockout-Policy.md` file.

---

## 🕵️ 3. Audit Policy

### 📝 Description

Configured audit policies to monitor and record critical security-related events, aiding in the detection of potential security breaches and ensuring accountability.

### 🛠️ Group Policy Settings Applied

- **Audit Logon Events:** Success and Failure

- **Audit Account Logon Events:** Success and Failure

- **Audit Account Management:** Success and Failure

- **Audit Directory Service Access:** Success and Failure

- **Audit Policy Change:** Success and Failure

- **Audit Privilege Use:** Success and Failure

- **Audit Process Tracking:** Success and Failure

- **Audit System Events:** Success and Failure

These settings are configured under:

  📂 `Computer Configuration → Windows Settings → Security Settings → Local Policies → Audit Policy`
  
Detailed configurations can be found in the `III. Audit-Policy.md` file.

---

## 📂 Files Included

- `I. Password Policy.md`: Detailed configurations for enforcing strong password policies.
- `II. Account-Lockout-Policy.md`: Settings to prevent unauthorized access through account lockouts.
- `III. Audit-Policy.md`: Configurations for auditing and monitoring critical security events.
- `README.md`: This documentation file summarizing the implemented security policies.

---

## ✅ Outcome

By applying these security policies:
- **Enhanced Authentication Security:** Enforced strong password requirements to prevent unauthorized access.
- **Protection Against Brute-Force Attacks:** Implemented account lockout mechanisms to deter repeated unauthorized login attempts.
- **Improved Monitoring and Compliance:** Established comprehensive auditing to monitor security events and ensure compliance with security standards.
- **Controlled User Privileges:** Defined user rights to limit actions to authorized personnel only.

---

## 📚 References

[Best Practices for Securing Active Directory](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/plan/security-best-practices/best-practices-for-securing-active-directory)

[Group Policy Overview](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/group-policy/group-policy-overview)

[Configure Group Policies to Set Security](https://learn.microsoft.com/en-us/troubleshoot/windows-server/group-policy/configure-group-policies-set-security)
