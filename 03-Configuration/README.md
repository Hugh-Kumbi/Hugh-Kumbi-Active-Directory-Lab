# ⚙️ Active Directory Configuration

## 📘 Overview

This section of the Active Directory Lab focuses on the foundational setup and configuration of Active Directory (AD) services. It encompasses the installation and configuration of Active Directory Domain Services (AD DS), Domain Name System (DNS) settings, and the implementation of essential Group Policy Objects (GPOs) to establish a secure and well-structured domain environment.

---

## 🏗️ 1. Active Directory Setup

### 📝 Description

The initial step involves installing the AD DS role and promoting the server to a domain controller, thereby establishing the core of the Active Directory infrastructure.

## 🛠️ Steps Performed

- **Install AD DS Role:** Utilized Server Manager to add the Active Directory Domain Services role.
- **Promote to Domain Controller:** Configured the server as a new domain controller in a new forest.
- **Domain Configuration:** Set the Fully Qualified Domain Name (FQDN) for the new domain.
- **DNS Server Installation:** Opted to install the DNS Server role alongside AD DS.
- **Directory Services Restore Mode (DSRM) Password:** Defined a secure DSRM password for recovery purposes.

These steps are detailed in the [`I. Active-Directory-Setup.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/03-Configuration/I.%20Active-Directory-Setup.md) file.

---

## 🌐 2. DNS Setup

### 📝 Description

Proper DNS configuration is critical for the functionality of Active Directory, as it relies heavily on DNS for domain controller location and service discovery.

### 🛠️ Steps Performed

- **DNS Role Verification:** Ensured the DNS Server role was installed during AD DS setup.
- **Forward Lookup Zone Creation:** Created a forward lookup zone corresponding to the domain name.
- **Reverse Lookup Zone Creation:** Established a reverse lookup zone for IP address to name resolution.
- **DNS Records Verification:** Confirmed the creation of essential DNS records, including SRV and A records for domain controllers.

These configurations are outlined in the [`II. DNS-Setup.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/03-Configuration/II.%20DNS-Setup.md) file.

---

## 🛡️ 3. Group Policy Configurations

## 📝 Description

This section documents the various Group Policy Objects (GPOs) I implemented in the lab environment to enforce security baselines, enhance user experience, and manage system behavior across all domain-joined machines.

### 🛠️ ✅ Security and System Hardening Policies

- **Password Policy:** Enforced complexity requirements and minimum length.
- **Account Lockout Policy:** Defined thresholds for account lockouts to mitigate brute-force attacks.
- **Audit Policy:** Enabled auditing of logon events, account management, and system events.
- **User Rights Assignment:** Configured rights such as logon locally and access this computer from the network.
- **Security Options:** Adjusted settings to enhance the security posture of domain-joined systems.

## 🔒 Custom Group Policies Implemented

### 🧩 Description of Custom Group Policies Implemented

The custom Group Policies implemented in this lab environment were designed to enforce organizational standards, streamline user experience, and mitigate potential security threats. These policies cover a broad range of system and user configurations, including software restrictions (e.g., blocking VLC), enhanced browser settings, desktop environment personalization, USB access control, firewall and antivirus configurations, and scripted automation for startup/shutdown and user sessions. Each policy was tailored to reflect real-world enterprise needs, ensuring that domain-joined systems are secure, manageable, and consistent across the organization. Where applicable, these policies align with cybersecurity best practices and regulatory compliance frameworks.

- **Account Lockout Policy**

- **Audit Policy**

- **Auto Enrollment for Computer Certificate Policy**

- **Auto Enrollment Certificate for ITSecurity Users Policy**

- **BitLocker DRA Deployment Policy**

- **BitLocker Encryption Policy**
  
- **Block VLC Media Player - AppLocker**

- **Browser Security Settings Policy**

- **Control Panel Restrictions**

- **Default Domain Controller Policy**

- **Default Domain Policy**

- **Deploy HughDomain-WinServer2025 Certificate Policy**

- **Desktop Wallpaper Policy**

- **Disabling Unnecessary Windows Services Policy**

- **Drive Mappings Policy**

- **Folder Redirection Policy**

- **IPsec Authentication Policy**

- **Local Administrator Restrictions Policy**

- **Logon-Logoff Scripts Policy**

- **Map Network Drives Policy**

- **Network Security Settings Policy**

- **Password Policy**

- **Restricted Groups Policy**

- **Root CA Distribution Policy**

- **Security Scripts Policy**

- **Software Deployment Google Chrome Policy**

- **Start Menu and Taskbar Settings Policy**

- **Startup/Shutdown Scripts Policy**

- **Temp_Cleaned_DC_Policy**

- **USB Restriction Policy**

- **User Folder Redirection Policy**

- **Win11 Security Policy**

- **Windows Defender Settings Policy**

- **Windows Firewall Settings Policy**

Each policy above was configured to meet specific security or operational objectives within the Active Directory domain. Detailed documentation for individual policies can be found within the corresponding folders in the [`III. GPO-Configurations.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/03-Configuration/VII.%20GPO-Configurations.md) file.

---

## 📂 Files Included

- [`I. Active-Directory-Setup.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/03-Configuration/I.%20Active-Directory-Setup.md): Step-by-step guide for installing and configuring Active Directory Domain Services.
- [`II. DNS-Setup.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/03-Configuration/II.%20DNS-Setup.md): Instructions for setting up and verifying DNS configurations essential for AD functionality.
- [`III. GPO-Configurations.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/03-Configuration/VII.%20GPO-Configurations.md): Details on implementing baseline Group Policy Objects for security and standardization.
- [`README.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/03-Configuration/README.md): This documentation file summarizing the configuration steps and their significance.

---

## ✅ Outcome

By completing these configurations:
- **Established a Functional Domain:** Set up a new Active Directory domain with a domain controller.
- **Ensured Reliable Name Resolution:** Configured DNS to support AD operations and client-server communications.
- **Enforced Security Policies:** Implemented GPOs to maintain a secure and consistent environment across all domain-joined systems.

---

## 📚 References

[Best Practices for Securing Active Directory](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/plan/security-best-practices/best-practices-for-securing-active-directory)

[Group Policy Overview for Windows Server](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/group-policy/group-policy-overview)

[Active Directory Security Best Practices](https://www.semperis.com/blog/active-directory-security/active-directory-security-best-practices-checklist/)
