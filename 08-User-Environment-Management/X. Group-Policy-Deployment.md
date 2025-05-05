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

![Default Domain Policy Settings](screenshots/default-domain-policy-settings.png)

- **Scope**: Domain-wide
- **Purpose**: Base security settings for all domain objects
- **Key Settings**: Password policies, account lockout policies, Kerberos settings

### 2. Default Domain Controllers Policy

📸 **Domain Controllers Policy Settings**

![Domain Controllers Policy Settings](screenshots/domain-controllers-policy.png)

- **Scope**: Domain Controllers OU
- **Purpose**: Secure authentication servers
- **Key Settings**: User rights assignments, security options, audit policies

### 3. Windows Firewall Settings Policy

📸 **Windows Firewall GPO Settings**

![Windows Firewall GPO Settings](screenshots/firewall-policy-settings.png)

- **Scope**: Domain-wide (focused on DCs)
- **Purpose**: Enforce firewall configurations
- **Key Settings**: Firewall enabled, port rules, logging

### 4. Win11 Security Policy

📸 **Windows 11 Security Policy Settings**

![Windows 11 Security Policy Settings](screenshots/win11-security-policy.png)

- **Scope**: Windows 11 workstations
- **Purpose**: Harden client endpoints
- **Key Settings**: Exploit protection, Credential Guard, AppLocker

### 5. Windows Defender Settings Policy

📸 **Windows Defender Policy Configuration**

![Windows Defender Policy Configuration](screenshots/windows-defender-policy.png)

- **Scope**: All computers
- **Purpose**: Antivirus and threat protection
- **Key Settings**: Real-time protection, cloud protection, scans

### 6. Network Security Settings Policy

📸 **Network Security GPO Settings**

![Network Security GPO Settings](screenshots/network-security-settings.png)

- **Scope**: All computers
- **Purpose**: Secure communication protocols
- **Key Settings**: SMB/LDAP signing, TLS configurations

### 7. Restricted Groups Policy

📸 **Restricted Groups Configuration**

![Restricted Groups Configuration](screenshots/restricted-groups-policy.png)

- **Scope**: DCs and IT Security computers
- **Purpose**: Manage group membership
- **Key Settings**: Enforced privileged group control

### 8. IPsec Authentication Policy

📸 **IPsec Policy Settings**

![IPsec Policy Settings](screenshots/ipsec-policy-settings.png)

- **Scope**: Secure communication channels
- **Purpose**: Encrypt sensitive traffic
- **Key Settings**: IPsec rules, encryption, authentication

### 9. Map Network Drives Policy

📸 **Drive Mapping Policy**

![Drive Mapping Policy](screenshots/map-network-drives-policy.png)

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
