# 🛡️ Security Policies

## 📘 Overview

This section of the Active Directory Lab focuses on implementing essential security policies through Group Policy Objects (GPOs) to enhance the security posture of the domain environment. It encompasses configurations for password policies, account lockout mechanisms, audit policies, user rights assignments, Windows Defender settings, and restrictions on local administrator accounts to ensure robust protection against unauthorized access and to maintain compliance with security best practices.

---

## 🔑 1. Password Policy

### 📝 Description

Established stringent password requirements to enforce strong authentication practices across all domain users.

### 🛠️ Group Policy Settings Applied

- **Minimum Password Length:** 12 characters

- **Password Complexity:** Enabled (requires a mix of uppercase, lowercase, numbers, and special characters)

- **Maximum Password Age:** 90 days

- **Minimum Password Age:** 30 day

- **Enforce Password History:** Remember last 24 passwords

- **Store Passwords Using Reversible Encryption:** Disabled

These settings are configured under:

  📂 `Computer Configuration → Windows Settings → Security Settings → Account Policies → Password Policy`

Detailed configurations can be found in the [`I. Password Policy.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/04-Security-Policies/I.%20Password%20Policy.md) file.

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
  
Detailed configurations can be found in the [`II. Account-Lockout-Policy.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/04-Security-Policies/II.%20Account-Lockout-Policy.md) file.

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

- **Audit Process Tracking:** Success

- **Audit System Events:** Success and Failure

These settings are configured under:

  📂 `Computer Configuration → Windows Settings → Security Settings → Local Policies → Audit Policy`
  
Detailed configurations can be found in the [`III. Audit-Policy.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/04-Security-Policies/III.%20Audit-Policy.md) file.

---

## 👥 4. User Rights Assignment

### 📝 Description

Defined specific user rights to control the actions that users and groups can perform on domain-joined systems.

### 🛠️ Group Policy Settings Applied

- **Log on locally:** Assigned to administrators and domain users

- **Access this computer from the network:** Restricted to necessary groups

- **Deny logon locally:** Applied to unauthorized users

- **Shut down the system:** Limited to administrators

These settings are configured under:

  📂 `Computer Configuration → Windows Settings → Security Settings → Local Policies → User Rights Assignment`
  
Detailed configurations can be found in the [`IV. User-Rights-Assignment.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/04-Security-Policies/IV.%20User-Rights-Assignment.md) file.

---

## 🛡️ 5. Windows Defender Policies

### 📝 Description

Configured Windows Defender settings to enhance malware protection and system security.

### 🛠️ Group Policy Settings Applied

- **Real-time Protection:** Enabled

- **Cloud-delivered Protection:** Enabled

- **Automatic Sample Submission:** Enabled

- **Exclusions:** Defined specific folders and file types to exclude

- **Scheduled Scans:** Configured regular full system scans

These settings are configured under:

  📂 `Computer Configuration → Administrative Templates → Windows Components → Microsoft Defender Antivirus`
  
Detailed configurations can be found in the [`V. Windows-Defender-Policies.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/04-Security-Policies/V.%20Windows-Defender-Policies.md) file.

---

## 🔒 6. Local Administrator Restrictions

### 📝 Description

Implemented restrictions on local administrator accounts to prevent unauthorized elevation of privileges and enhance security.

### 🛠️ Group Policy Settings Applied

- **Deny access to this computer from the network:** Applied to local administrator accounts

- **Deny log on through Remote Desktop Services:** Restricted for local administrators

- **Rename administrator account:** Changed default administrator account name

- **Disable local administrator account:** Disabled where not required

These settings are configured under:

  📂 `Computer Configuration → Windows Settings → Security Settings → Local Policies → User Rights Assignment`
  
Detailed configurations can be found in the [`VI. Local-Administrator-Restrictions.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/04-Security-Policies/VI.%20Local-Administrator-Restrictions.md) file.

---

## 📂 Files Included

- [`I. Password Policy.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/04-Security-Policies/I.%20Password%20Policy.md): Detailed configurations for enforcing strong password policies.
- [`II. Account-Lockout-Policy.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/04-Security-Policies/II.%20Account-Lockout-Policy.md): Settings to prevent unauthorized access through account lockouts.
- [`III. Audit-Policy.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/04-Security-Policies/III.%20Audit-Policy.md): Configurations for auditing and monitoring critical security events.
- [`IV. User-Rights-Assignment.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/04-Security-Policies/IV.%20User-Rights-Assignment.md): Assignments of specific user rights to control user actions.
- [`V. Windows-Defender-Policies.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/04-Security-Policies/V.%20Windows-Defender-Policies.md): Settings to enhance system protection using Windows Defender.
- [`VI. Local-Administrator-Restrictions.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/04-Security-Policies/VI.%20Local-Administrator-Restrictions.md): Restrictions applied to local administrator accounts.
- [`README.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/04-Security-Policies/README.md): This documentation file summarizing the implemented security policies.

---

## ✅ Outcome

By applying these security policies:
- **Enhanced Authentication Security:** Enforced strong password requirements to prevent unauthorized access.
- **Protection Against Brute-Force Attacks:** Implemented account lockout mechanisms to deter repeated unauthorized login attempts.
- **Improved Monitoring and Compliance:** Established comprehensive auditing to monitor security events and ensure compliance with security standards.
- **Controlled User Privileges:** Defined user rights to limit actions to authorized personnel only.
- **Strengthened Malware Defense:** Configured Windows Defender settings to provide robust protection against threats.
- **Restricted Unauthorized Access:** Applied restrictions to local administrator accounts to prevent privilege escalation.

---

## 📚 References

[Best Practices for Securing Active Directory](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/plan/security-best-practices/best-practices-for-securing-active-directory)

[Configure Group Policies to Set Security](https://learn.microsoft.com/en-us/troubleshoot/windows-server/group-policy/configure-group-policies-set-security)

[Active Directory Security Best Practices - Netwrix](https://blog.netwrix.com/2023/05/04/active-directory-security-groups/)

[Group Policy Overview for Windows Server](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/group-policy/group-policy-overview)
