# Active-Directory-Lab
This repository contains detailed documentation of my Active Directory (AD) home lab setup. It covers the entire process, including installing Windows Server 2025, configuring AD, creating users, applying security policies, and testing GPOs.

# 🛡️ Active Directory Home Lab
**Author:** Hugh Chanetsa  
**Date:** [Insert Date]  
**GitHub Repository:** [Link to the repo]  
**Environment:**  
- **Domain:** hughdomain.local  
- **Server:** Windows Server 2025  
- **Clients:** Windows 11 Enterprise  

---

## 🎯 **1. Overview**
This repository documents the setup and configuration of my **Active Directory Home Lab** for learning and practicing enterprise security skills. It covers:
- Setting up a **Windows Server 2025** Domain Controller (DC).
- Joining two **Windows 11 Clients** to the domain.
- Implementing **Group Policies (GPOs)** for security hardening.
- Applying **User Environment Management** policies.
- Infrastructure protection and firewall rules.
- Troubleshooting common issues.

---

## 📁 **2. Folder Structure**
- `01-Planning` → Project goals, architecture diagram, and pre-requisites.  
- `02-Environment-Setup` → Windows Server, Windows Clients, and network configuration steps.  
- `03-Configuration` → Active Directory setup, GPOs, and DNS configurations.  
- `04-Security-Policies` → Domain security hardening and access restrictions.  
- `05-Troubleshooting` → Issues encountered and solutions applied.  
- `06-Screenshots` → Images related to the setup.  
- `07-GPO-Security-Policies` → Password, account lockout, audit, and user rights policies.  
- `08-User-Environment-Management` → Folder redirection, drive mappings, and logon scripts.  
- `09-Infrastructure-Protection` → Firewall rules, network security settings, and service restrictions.  

---

## ⚙️ **3. Environment Setup**
### 🛠️ **3.1. Windows Server 2025 Setup**
- Installed **Windows Server 2025** as the **Domain Controller**.
- Configured **Static IP Address**: `192.168.1.10`.
- Installed the **Active Directory Domain Services (AD DS)** role.
- Promoted the server to a **Domain Controller** with the domain `hughdomain.local`.
- Verified domain functionality and DNS configuration.

### 💻 **3.2. Windows 11 Client Setup**
- Installed two **Windows 11 Enterprise** clients:
  - `AD-WIN11-01`
  - `AD-WIN11-02`
- Assigned **Static IPs** and configured DNS to point to the server:
  - `AD-WIN11-01`: `192.168.1.20`
  - `AD-WIN11-02`: `192.168.1.30`
- Joined both clients to the domain.

---

## 🔒 **4. Security Configurations**
### ✅ **4.1. Group Policies Implemented**
- **USB Restrictions:** Denied access to removable storage devices.
- **RDP Restrictions:** Limited RDP access to **Domain Admins** only.
- **Account Lockout Policies:** Configured lockout thresholds and durations.
- **Password Policies:** Applied strong password policies (12+ characters, complexity enabled).
- **Local Admin Restrictions:** Denied local login for **Domain Users**.

### 🔥 **4.2. Backup Admin Account**
- Created `BackupAdmin` with **Domain Admin** privileges for redundancy.
- Ensured **both** `HUGHDOMAIN\Administrator` and `HUGHDOMAIN\BackupAdmin` accounts have local and RDP login access.

---

## 🔐 **5. GPO Security Policies**
### 🔥 **5.1. Password Policy**
- **GPO Name:** `Domain Password Policy`
- **Settings Applied:**
  - Enforce password history: `24 passwords remembered`
  - Maximum password age: `90 days`
  - Minimum password age: `1 day`
  - Minimum password length: `12 characters`
  - Password must meet complexity requirements: `Enabled`
  - Store passwords using reversible encryption: `Disabled`

### 🚫 **5.2. Account Lockout Policy**
- **GPO Name:** `Account Lockout Policy`
- **Settings Applied:**
  - Account lockout duration: `30 minutes`
  - Account lockout threshold: `5 invalid logon attempts`
  - Reset account lockout counter after: `30 minutes`

### 🔍 **5.3. Audit Policy**
- **GPO Name:** `Domain Audit Policy`
- **Categories Audited:**
  - Account Logon: Audit Credential Validation (Success/Failure)
  - Account Management: Audit User Account Management (Success/Failure)
  - Detailed Tracking: Audit Process Creation (Success)
  - Logon/Logoff: Audit Logon (Success/Failure)
  - Object Access: Audit File System (Success/Failure)
  - Policy Change: Audit Audit Policy Change (Success/Failure)
  - Privilege Use: Audit Sensitive Privilege Use (Success/Failure)
  - System: Audit Security System Extension (Success/Failure)

---

## 🛠️ **6. User Environment Management**
### 📁 **6.1. Folder Redirection**
- **GPO Name:** `Folder Redirection Policy`
- Redirected **Documents** folder for all users.
- Set "Target folder location" to:
  - `\\Server\UserDocs%username%`
- Enabled:
  - `Grant user exclusive rights`
  - `Move contents to the new location`

### 🔥 **6.2. Drive Mappings**
- **GPO Name:** `Drive Mappings Policy`
- Mapped shared drives:
  - Location: `\\Server\Share`
  - Drive Letter: `S:`
  - Enabled `Reconnect` and `Item-level targeting`

### 🔁 **6.3. Logon/Logoff Scripts**
- **GPO Name:** `Logon Scripts Policy`
- Configured PowerShell scripts to run at user logon.

---

## 🔥 **7. Infrastructure Protection**
### 🔥 **7.1. Windows Firewall Policies**
- **GPO Name:** `Windows Firewall Policy`
- Applied firewall rules:
  - **Domain Profile:** On, Block Inbound, Allow Outbound.
  - **Private Profile:** On, Block Inbound, Allow Outbound.
  - **Public Profile:** More restrictive settings.

### 🌐 **7.2. Network Security Settings**
- **GPO Name:** `Network Security Policy`
- Configured:
  - LAN Manager authentication: `NTLMv2 only`
  - Minimum session security: `128-bit encryption`
  - Signed communications: `Enabled`

### 🔥 **7.3. Disable Unnecessary Services**
- **GPO Name:** `Service Configuration Policy`
- Disabled:
  - Print Spooler (if not needed)
  - Remote Registry
  - Telnet
  - SNMP (if not needed)

---

## 🛠️ **8. Troubleshooting**
### 🔍 **Common Issues Faced**
- **Domain Trust Issues:** Resolved by re-joining Windows 11 clients to the domain.
- **RDP Authentication Issues:** Fixed by modifying GPO policies to allow domain admin RDP access.
- **USB Policy Not Applying:** Forced a GPO update with `gpupdate /force`.
- **Logon Errors:** Corrected by removing `Domain Users` from the **Deny logon policies**.

---

## ✅ **9. Conclusion**
This lab showcases my ability to:
- Deploy and configure an **Active Directory** domain environment.
- Apply **security policies** and manage access controls.
- Troubleshoot and resolve common **Active Directory issues**.
- Enhance my cybersecurity portfolio with hands-on enterprise-level skills.
