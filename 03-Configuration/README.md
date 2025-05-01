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

These steps are detailed in the `I. Active-Directory-Setup.md` file.

---

## 🌐 2. DNS Setup

### 📝 Description

Proper DNS configuration is critical for the functionality of Active Directory, as it relies heavily on DNS for domain controller location and service discovery.

### 🛠️ Steps Performed

- **DNS Role Verification:** Ensured the DNS Server role was installed during AD DS setup.
- **Forward Lookup Zone Creation:** Created a forward lookup zone corresponding to the domain name.
- **Reverse Lookup Zone Creation:** Established a reverse lookup zone for IP address to name resolution.
- **DNS Records Verification:** Confirmed the creation of essential DNS records, including SRV and A records for domain controllers.

These configurations are outlined in the `II. DNS-Setup.md` file.

---

## 🛡️ 3. Group Policy Configurations

## 📝 Description

Implemented foundational GPOs to enforce security settings and standardize configurations across the domain.

### 🛠️ Policies Implemented

- **Password Policy:** Enforced complexity requirements and minimum length.
- **Account Lockout Policy:** Defined thresholds for account lockouts to mitigate brute-force attacks.
- **Audit Policy:** Enabled auditing of logon events, account management, and system events.
- **User Rights Assignment:** Configured rights such as logon locally and access this computer from the network.
- **Security Options:** Adjusted settings to enhance the security posture of domain-joined systems.

These policies are detailed in the `III. GPO-Configurations.md` file.

---

## 📂 Files Included

- `I. Active-Directory-Setup.md`: Step-by-step guide for installing and configuring Active Directory Domain Services.
- `II. DNS-Setup.md`: Instructions for setting up and verifying DNS configurations essential for AD functionality.
- `III. GPO-Configurations.md`: Details on implementing baseline Group Policy Objects for security and standardization.
- `README.md`: This documentation file summarizing the configuration steps and their significance.

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
