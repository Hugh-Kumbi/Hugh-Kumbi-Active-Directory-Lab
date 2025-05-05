# 🛡️ Active Directory Group Policy Deployment Project

## 📘 Project Overview
This document outlines the implementation of a comprehensive Group Policy strategy for a Windows Server 2025 Active Directory environment with Windows 11 client computers. The goal is to establish a secure, manageable, and high-performance domain environment.

---

## 🖥️ Environment Specifications
### Domain Information
- **Domain Name**: `hughdomain.local`
- **Primary Domain Controller**: `WIN-D2PQBCI88JQ`
- **Operating System**: Windows Server 2025 (OS Version: 10.0.26100)
- **Site Name**: `Default-First-Site-Name`

---

## 🗂️ Organizational Unit (OU) Structure

📸 **OU Structure in Active Directory Users and Computers**

![OU Structure in Active Directory Users and Computers](screenshots/ou-structure.png)

```
hughdomain.local
├── Domain Controllers
├── Employees
├── Groups
├── ITSupportComputers
├── Tech
│ ├── Accounting
│ ├── HR
│ ├── IT
│ ├── IT Computers
│ ├── IT Security
│ └── IT Support
├── Marketing
└── Users
```

---

## 📜 Applied Group Policies

📸 **Group Policy Management Console - GPO List**

![Group Policy Management Console - GPO List](screenshots/gpmc-gpo-list.png)

### 1. Default Domain Policy

📸 **Default Domain Policy Settings** 

![Default Domain Policy Settings](https://github.com/user-attachments/assets/9aaa87c0-86d7-4d21-9c92-bac9c49246a2)

![Default Domain Policy Settings 1](https://github.com/user-attachments/assets/e65f50af-42be-4891-8126-90428d0037be)

![Default Domain Policy Settings 2](https://github.com/user-attachments/assets/5422c8b5-da57-40c7-b0f9-16ee72faa32d)

- **Scope**: Domain-wide
- **Purpose**: Base security settings for all domain objects
- **Key Settings**: Password policies, account lockout policies, Kerberos settings

### 2. Default Domain Controllers Policy

📸 **Domain Controllers Policy Settings**

![Domain Controllers Policy Settings](https://github.com/user-attachments/assets/ac014281-9e62-4094-a981-6407b272df8f)

![Domain Controllers Policy Settings 1](https://github.com/user-attachments/assets/acc24ad8-6113-4179-97b6-28dece0c6522)

![Domain Controllers Policy Settings 2](https://github.com/user-attachments/assets/b13966bb-b069-4bf8-8894-3d8fdbaa6d65)

- **Scope**: Domain Controllers OU
- **Purpose**: Secure authentication servers
- **Key Settings**: User rights assignments, security options, audit policies

### 3. Windows Firewall Settings Policy

📸 **Windows Firewall GPO Settings**

![Windows Firewall GPO Settings](https://github.com/user-attachments/assets/ac917249-25d1-4678-8972-f35fea310b91)

![Windows Firewall GPO Settings 1](https://github.com/user-attachments/assets/2982e38f-d73a-4377-bf3a-4bc2099f2013)

![Windows Firewall GPO Settings 2](https://github.com/user-attachments/assets/d2449593-b4c2-462c-9d17-7b4e81e1855b)

![Windows Firewall GPO Settings 3](https://github.com/user-attachments/assets/922f47b2-e39a-4c73-b1d9-e62fe5b82105)

![Windows Firewall GPO Settings 4](https://github.com/user-attachments/assets/a8ced314-1865-47e5-be8d-7416e40515b2)

![Windows Firewall GPO Settings 5](https://github.com/user-attachments/assets/28102bef-a40a-41e2-ac3a-e48444bbe1b2)

![Windows Firewall GPO Settings 6](https://github.com/user-attachments/assets/b26c22c5-b937-486d-ae42-b935ef58b597)

![Windows Firewall GPO Settings 7](https://github.com/user-attachments/assets/8a606efe-8744-45e6-b0e5-14851bef7355)

![Windows Firewall GPO Settings 8](https://github.com/user-attachments/assets/8ba5a134-22d3-4211-805b-111a292c573a)

- **Scope**: Domain-wide (focused on DCs)
- **Purpose**: Enforce firewall configurations
- **Key Settings**: Firewall enabled, port rules, logging

### 4. Win11 Security Policy

📸 **Windows 11 Security Policy Settings**

![Windows 11 Security Policy Settings](https://github.com/user-attachments/assets/a84540e5-a165-4a99-a2fa-e082ec06d46b)

![Windows 11 Security Policy Settings 1](https://github.com/user-attachments/assets/ce700c1e-2e63-4cd7-bc95-33e197f9f143)

![Windows 11 Security Policy Settings 2](https://github.com/user-attachments/assets/edcd97e8-8326-40fc-a591-f08cf720f4b1)

![Windows 11 Security Policy Settings 3](https://github.com/user-attachments/assets/c1d6cc12-c670-4bdd-a5f7-812f99465490)

![Windows 11 Security Policy Settings 4](https://github.com/user-attachments/assets/09442dd5-4627-4c07-b771-3e5a92ac91c2)

![Windows 11 Security Policy Settings 5](https://github.com/user-attachments/assets/2e051cf5-fc23-4e8e-ad5c-da089f513dbd)

- **Scope**: Windows 11 workstations
- **Purpose**: Harden client endpoints
- **Key Settings**: Exploit protection, Credential Guard, AppLocker

### 5. Windows Defender Settings Policy

📸 **Windows Defender Policy Configuration**

![Windows Defender Policy Configuration](https://github.com/user-attachments/assets/bdf16b4c-ef6e-4cb3-ba73-01e90880448c)

![Windows Defender Policy Configuration 1](https://github.com/user-attachments/assets/98c3c2ac-c360-42a2-ad9f-3193dc6512f1)

![Windows Defender Policy Configuration 2](https://github.com/user-attachments/assets/c999a0bf-f267-4166-801a-5540ae8285f1)

- **Scope**: All computers
- **Purpose**: Antivirus and threat protection
- **Key Settings**: Real-time protection, cloud protection, scans

### 6. Network Security Settings Policy

📸 **Network Security GPO Settings**

![Network Security GPO Settings](https://github.com/user-attachments/assets/1dcb2d60-b128-43ab-9c6e-f38a21d72149)

![Network Security GPO Settings 1](https://github.com/user-attachments/assets/2862f9fb-067f-43fe-9e8e-3c5463092dcc)

![Network Security GPO Settings 2](https://github.com/user-attachments/assets/8cb223f5-3390-4ea6-8c99-52e7ce126fad)

- **Scope**: All computers
- **Purpose**: Secure communication protocols
- **Key Settings**: SMB/LDAP signing, TLS configurations

### 7. Restricted Groups Policy

📸 **Restricted Groups Configuration**

![Restricted Groups Policy](https://github.com/user-attachments/assets/79ae5617-c6c1-4ff8-ae48-a173feb8d179)

![Restricted Groups Policy 1](https://github.com/user-attachments/assets/2711c893-e041-4006-b0a1-05528e5e5a38)

- **Scope**: DCs and IT Security computers
- **Purpose**: Manage group membership
- **Key Settings**: Enforced privileged group control

### 8. IPsec Authentication Policy

📸 **IPsec Policy Settings**

![IPsec Policy Settings](https://github.com/user-attachments/assets/85505f69-af0e-4cc8-b0e0-66bdac833a06)

![IPsec Policy Settings 1](https://github.com/user-attachments/assets/60f7f5eb-0445-4479-8084-7689494aec29)

![IPsec Policy Settings 2](https://github.com/user-attachments/assets/ec98372d-0600-4932-9afd-b25ab24fc61f)

- **Scope**: Secure communication channels
- **Purpose**: Encrypt sensitive traffic
- **Key Settings**: IPsec rules, encryption, authentication

### 9. Map Network Drives Policies

📸 **Drive Mapping Policy**

![Drive Mapping Policy](https://github.com/user-attachments/assets/4908581f-1bd2-4216-8283-2bc9efeabc40)

![Drive Mapping Policy 1](https://github.com/user-attachments/assets/074cce5f-c86b-4cf3-9def-8d4a86d4d6fa)

![Drive Mapping Policy 2](https://github.com/user-attachments/assets/2c043a6f-5d48-4cc4-a05a-a5786ede9ca3)

![Map Network Drives Policy](https://github.com/user-attachments/assets/c41fa089-611e-45ea-83f3-1c6d62f92827)

![Map Network Drives Policy 1](https://github.com/user-attachments/assets/25b7969b-ac58-4f79-b9ea-4d58ddd10cf3)

![Map Network Drives Policy 2](https://github.com/user-attachments/assets/dff93057-da6f-4af6-8fe9-cc6868d871fc)

- **Scope**: User configuration
- **Purpose**: Drive mapping automation
- **Key Settings**: Department/home folder mappings

---

## 👥 Security Group Utilization

📸 **Security Groups in Active Directory**

![Security Groups in Active Directory](screenshots/security-groups.png)

- `Domain Users`: Default access control
- `Schema Admins`: Schema management
- `Enterprise Admins`: Full domain/forest rights
- `BUILTIN\Administrators`: Local admin rights
- `Group Policy Creator Owners`: GPO delegation

---

## 🔧 Technical Implementation Details

📸 **GPResult from Client Machine**

![GPResult from Client Machine](screenshots/gpresult-client.png)

### Group Policy Processing

- **Mode**: Normal
- **Last Applied**: May 3, 2025, 9:20:24 PM
- **Slow Link Threshold**: 500 kbps
- **Policy Source**: `WIN-D2PQBCI88JQ.hughdomain.local`

### Computer Configuration

📸 **Computer Configuration Settings**

![Computer Configuration Settings](screenshots/computer-configuration.png)

#### Application Policies
- AppLocker enforcement
- Controlled installations

#### System Policies
- Startup/shutdown scripts
- Disk quotas
- User profile settings

#### Security Settings
- Advanced audit policies
- Security options
- Firewall rules

### User Configuration

📸 **User Configuration Settings**

![User Configuration Settings](screenshots/user-configuration.png)

#### Preference Items
- Drive and printer mappings
- Registry modifications

#### Administrative Templates
- Start menu and desktop policies
- Control Panel restrictions

---

## 📅 Implementation Methodology

### 1. Planning Phase

📸 **Planning Documentation Screenshot**

![Planning Documentation Screenshot](screenshots/planning-phase-docs.png)

- OU structure and security group planning
- Policy categorization

### 2. Development Phase

📸 **Group Policy Testing in Lab**

![Group Policy Testing in Lab](screenshots/lab-testing-gpo.png)

- Lab setup and policy testing
- Documentation drafting

### 3. Deployment Phase

📸 **Production GPO Deployment**

![Production GPO Deployment](screenshots/gpo-deployment-production.png)

- Test group rollout
- Staggered production deployment
- Performance monitoring

### 4. Maintenance Phase

📸 **Ongoing Maintenance Logs**

![Ongoing Maintenance Logs](screenshots/gpo-maintenance-logs.png)

- Ongoing policy review and refinement
- Documentation updates

---

## 🎯 Group Policy Filtering

📸 **WMI Filter Setup Screenshot**

![WMI Filter Setup Screenshot](screenshots/wmi-filter-setup.png)

### Security Filtering
- Example: Windows Defender policy limited to select groups

### WMI Filtering
- OS version targeting
- Hardware-based deployment

### Block Inheritance
- Used in sensitive OUs with enforced policies

---

## 🔐 Security Considerations

### Principle of Least Privilege

📸 **Least Privilege Group Membership Screenshot**

![Least Privilege Group Membership Screenshot](screenshots/least-privilege-settings.png)

- Rights assignment based on role
- Limited admin privileges
- Secure service account policies

### Application Control

📸 **AppLocker Configuration**

![AppLocker Configuration](screenshots/applocker-configuration.png)

- Managed installs
- Blocked executable directories
- Script control

---

## 📊 Audit and Compliance

### Event Logging

📸 **Advanced Audit Policy Settings**

![Advanced Audit Policy Settings](screenshots/audit-policy-settings.png)

📸 **SIEM Integration Sample**

![SIEM Integration Sample](screenshots/siem-integration.png)

- Advanced audit policies
- Security log collection
- SIEM integration

### Compliance Monitoring
- GPResult analysis
- Baseline validation
- Alerting on policy deviations

---

## 🛠️ Maintenance Procedures

### Policy Review
- Quarterly full reviews
- Monthly security updates

### GPO Backups

📸 **GPO Backup Procedure**

![GPO Backup Procedure](screenshots/gpo-backup.png)

- Daily automated
- Weekly manual validation
- Offsite storage

### Performance Monitoring

📸 **Performance Monitoring Tools**

![Performance Monitoring Tools](screenshots/gpo-performance-monitoring.png)

- GPO processing time
- Slow link review
- Extension load analysis

---

## 🧪 Troubleshooting Methodology

### Diagnostic Tools

📸 **Troubleshooting Using gpresult**

![Troubleshooting Using gpresult](screenshots/troubleshooting-gpresult.png)

📸 **Event Viewer Logs**

![Event Viewer Logs](screenshots/event-viewer-logs.png)

- `gpresult /r`
- Group Policy Modeling
- Event Viewer

### Common Issues
- Inheritance conflicts
- WMI filter mismatches
- Extension errors

---

## 🚀 Conclusion and Future Enhancements

This Group Policy deployment lays the foundation for secure, scalable, and manageable Active Directory operations.

📸 **Summary and Future Planning**

![Summary and Future Planning](screenshots/future-enhancements.png)

### 🔒 Future Enhancements
- Zero Trust architecture integration
- Application Guard deployment
- Credential protection upgrades

### ☁️ Cloud Integration
- Hybrid Azure AD setup
- Intune co-management
- Cloud-hosted GPO extensions

### 🤖 Automation Enhancements
- PowerShell-based automation
- Continuous testing workflows
- AI-assisted optimization

---

✅ **This project showcases practical expertise in enterprise Active Directory design, Group Policy deployment, and IT security best practices.**
