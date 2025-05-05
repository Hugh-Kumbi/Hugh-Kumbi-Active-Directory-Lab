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

## 📘 Group Policy Important Settings Guide

### 🔐 Security Baseline Settings

#### 🔑 Password Policies

**Path:**  
  📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Account Policies > Password Policy`

| Setting | Value |
|---------|-------|
| Enforce password history | 24 passwords |
| Maximum password age | 90 days |
| Minimum password length | 14 characters |
| Password complexity | Enabled |

#### 🚫 Account Lockout Policies

**Path:**  
  📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Account Policies > Account Lockout Policy`

| Setting | Value |
|---------|-------|
| Account lockout threshold | 5 attempts |
| Lockout duration | 30 minutes |

### 🛡️ Windows Defender Configuration

#### Microsoft Defender Antivirus

**Path:**  
  📂 `Computer Configuration > Policies > Administrative Templates > Windows Components > Microsoft Defender Antivirus`

Key Settings:
- Real-time protection: Enabled
- Behavior monitoring: Enabled
- Scheduled scans: Full scan weekly

#### Firewall Settings

**Path:**  
  📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Windows Defender Firewall`

| Profile | Firewall State | Inbound | Outbound |
|---------|---------------|---------|----------|
| Domain | On | Block | Allow |

### 🖥️ User Experience Settings

#### Desktop Configuration

**Path:**  
  📂 `User Configuration > Policies > Administrative Templates > Desktop`
- Enforced corporate wallpaper
- Controlled desktop icons

#### Start Menu Customization

**Path:**  
  📂 `User Configuration > Policies > Administrative Templates > Start Menu and Taskbar`
- Removed "Search the Internet" option
- Disabled user tracking

### 🔄 Windows Update Management

**Path:**  
  📂 `Computer Configuration > Policies > Administrative Templates > Windows Components > Windows Update`
- Update deployment: Semi-Annual Channel
- Quality updates: 7-day deferral
- Automatic updates: Enabled (3AM daily)

### 📦 Application Control

#### AppLocker Policies

**Path:**  
  📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Application Control Policies > AppLocker`
- Created default rules for:
  - Executables (.exe)
  - Windows Installers (.msi)
  - Scripts (.ps1, .bat)
  - Packaged Apps (AppX)

#### App Deployment Restrictions

**Path:**  
  📂 `Computer Configuration > Policies > Administrative Templates > Windows Components > App Package Deployment`
- Blocked user app installations
- Disabled special profile deployments

### 🔧 Device Management

**Path:**  
  📂 `Computer Configuration > Policies > Administrative Templates > System > Device Installation`
- Blocked installation by:
  - Device IDs (specific hardware)
  - Setup classes (disk drives, etc.)

---

## 📂 Files Included

- `I. Password Policy.md`: Detailed configurations for enforcing strong password policies.
- `II. Account-Lockout-Policy.md`: Settings to prevent unauthorized access through account lockouts.
- `III. Audit-Policy.md`: Configurations for auditing and monitoring critical security events.
- `III. GPO-Important-Settings.md`: Configurations for security baselines, ensuring corporate compliance, and optimization of user experience in a Windows enterprise environment.
- `README.md`: This documentation file summarizing the implemented security policies.

---

## ✅ Outcome

Implemented Group Policy configurations have achieved:
- **Enhanced Security Posture**: Reduced attack surface through strict password policies, application whitelisting, and device installation controls
- **Standardized User Environment**: Consistent desktop experience across all domain-joined systems with controlled customization options
- **Improved Compliance**: Meeting organizational security requirements through enforced Windows Defender configurations and update management
- **Reduced Attack Vectors**: Application control policies prevent execution of unauthorized scripts and binaries
- **Controlled Device Ecosystem**: Hardware restrictions prevent installation of unauthorized peripherals and storage devices
  
---

## 📚 References

[Best Practices for Securing Active Directory](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/plan/security-best-practices/best-practices-for-securing-active-directory)

[Group Policy Overview](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/group-policy/group-policy-overview)

[Configure Group Policies to Set Security](https://learn.microsoft.com/en-us/troubleshoot/windows-server/group-policy/configure-group-policies-set-security)

[Microsoft Security Baselines](https://learn.microsoft.com/en-us/windows/security/)

[NIST SP 800-53 Security Controls](https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final)

[CIS Windows Benchmarks](https://www.cisecurity.org/cis-benchmarks/)

[Microsoft Group Policy Documentation](https://learn.microsoft.com/en-us/windows-server/identity/group-policy/group-policy-overview)
