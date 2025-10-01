# 🛡️ Active Directory Group Policy Deployment Project

## 📘 Project Overview
This document outlines the implementation of a comprehensive Group Policy strategy for a Windows Server 2025 Active Directory environment with Windows 11 client computers. The goal is to establish a secure, manageable, and high-performance domain environment.

---

## 🖥️ Environment Specifications
### Domain Information
- **Domain Name**: `hughdomain.local`
- **Primary Domain Controller**: `WinServer2025`
- **Operating System**: `Windows Server 2025 (OS Version: 10.0.26100)`
- **Site Name**: `Default-First-Site-Name`

---

## 🗂️ Organizational Unit (OU) Structure

```
Domains
hughdomain.local
├── AdminAccounts
├── Domain Controllers
├── Employees
│ ├── Accounting
│ ├── Customer Support
│ ├── Finance
│ ├── Human Resources
│ ├── IT
│ ├── └── ITSecurity
│ ├── └── ITSupport
│ ├── Legal
│ ├── Marketing
│ ├── Operations
│ ├── Product Management
│ ├── Research 
│ └── Sales
├── Groups
├── MeiVaultComputers
├── MeiVaultServers
├── ServiceAccounts
└── Users
```

📸 **OU Structure in Active Directory Users and Computers**

<img width="1920" height="909" alt="OU Structure in Active Directory Users and Computers" src="https://github.com/user-attachments/assets/5eb83b38-bfb2-44c9-84c1-c6d2f4ecf05d" />

---

## 📜 Applied Group Policies

📸 **Group Policy Management Console - GPO List**

![Group Policy Management Console - GPO List](https://github.com/user-attachments/assets/ba43cf79-a1ac-4541-baf4-520e3e53fea3)

### 1. Default Domain Policy

- **Scope**: Domain-wide
- **Purpose**: Base security settings for all domain objects
- **Key Settings**: Password policies, account lockout policies, Kerberos settings

📸 **Default Domain Policy Settings** 

![Default Domain Policy Settings](https://github.com/user-attachments/assets/9aaa87c0-86d7-4d21-9c92-bac9c49246a2)

![Default Domain Policy Settings 1](https://github.com/user-attachments/assets/e65f50af-42be-4891-8126-90428d0037be)

![Default Domain Policy Settings 2](https://github.com/user-attachments/assets/5422c8b5-da57-40c7-b0f9-16ee72faa32d)

### 2. Default Domain Controllers Policy

- **Scope**: Domain Controllers OU
- **Purpose**: Secure authentication servers
- **Key Settings**: User rights assignments, security options, audit policies

📸 **Domain Controllers Policy Settings**

![Domain Controllers Policy Settings](https://github.com/user-attachments/assets/ac014281-9e62-4094-a981-6407b272df8f)

![Domain Controllers Policy Settings 1](https://github.com/user-attachments/assets/acc24ad8-6113-4179-97b6-28dece0c6522)

![Domain Controllers Policy Settings 2](https://github.com/user-attachments/assets/b13966bb-b069-4bf8-8894-3d8fdbaa6d65)

### 3. Windows Firewall Settings Policy

- **Scope**: Domain-wide (focused on DCs)
- **Purpose**: Enforce firewall configurations
- **Key Settings**: Firewall enabled, port rules, logging

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

### 4. Win11 Security Policy

- **Scope**: Windows 11 workstations
- **Purpose**: Harden client endpoints
- **Key Settings**: Exploit protection, Credential Guard, AppLocker

📸 **Windows 11 Security Policy Settings**

![Windows 11 Security Policy Settings](https://github.com/user-attachments/assets/a84540e5-a165-4a99-a2fa-e082ec06d46b)

![Windows 11 Security Policy Settings 1](https://github.com/user-attachments/assets/ce700c1e-2e63-4cd7-bc95-33e197f9f143)

![Windows 11 Security Policy Settings 2](https://github.com/user-attachments/assets/edcd97e8-8326-40fc-a591-f08cf720f4b1)

![Windows 11 Security Policy Settings 3](https://github.com/user-attachments/assets/c1d6cc12-c670-4bdd-a5f7-812f99465490)

![Windows 11 Security Policy Settings 4](https://github.com/user-attachments/assets/09442dd5-4627-4c07-b771-3e5a92ac91c2)

![Windows 11 Security Policy Settings 5](https://github.com/user-attachments/assets/2e051cf5-fc23-4e8e-ad5c-da089f513dbd)

### 5. Windows Defender Settings Policy

- **Scope**: All computers
- **Purpose**: Antivirus and threat protection
- **Key Settings**: Real-time protection, cloud protection, scans

📸 **Windows Defender Policy Configuration**

![Windows Defender Policy Configuration](https://github.com/user-attachments/assets/bdf16b4c-ef6e-4cb3-ba73-01e90880448c)

![Windows Defender Policy Configuration 1](https://github.com/user-attachments/assets/98c3c2ac-c360-42a2-ad9f-3193dc6512f1)

![Windows Defender Policy Configuration 2](https://github.com/user-attachments/assets/c999a0bf-f267-4166-801a-5540ae8285f1)

### 6. Network Security Settings Policy

- **Scope**: All computers
- **Purpose**: Secure communication protocols
- **Key Settings**: SMB/LDAP signing, TLS configurations

📸 **Network Security GPO Settings**

![Network Security GPO Settings](https://github.com/user-attachments/assets/1dcb2d60-b128-43ab-9c6e-f38a21d72149)

![Network Security GPO Settings 1](https://github.com/user-attachments/assets/2862f9fb-067f-43fe-9e8e-3c5463092dcc)

![Network Security GPO Settings 2](https://github.com/user-attachments/assets/8cb223f5-3390-4ea6-8c99-52e7ce126fad)

### 7. Restricted Groups Policy

- **Scope**: DCs and IT Security computers
- **Purpose**: Manage group membership
- **Key Settings**: Enforced privileged group control

📸 **Restricted Groups Configuration**

![Restricted Groups Policy](https://github.com/user-attachments/assets/79ae5617-c6c1-4ff8-ae48-a173feb8d179)

![Restricted Groups Policy 1](https://github.com/user-attachments/assets/2711c893-e041-4006-b0a1-05528e5e5a38)

### 8. IPsec Authentication Policy

- **Scope**: Secure communication channels
- **Purpose**: Encrypt sensitive traffic
- **Key Settings**: IPsec rules, encryption, authentication

📸 **IPsec Policy Settings**

![IPsec Policy Settings](https://github.com/user-attachments/assets/85505f69-af0e-4cc8-b0e0-66bdac833a06)

![IPsec Policy Settings 1](https://github.com/user-attachments/assets/60f7f5eb-0445-4479-8084-7689494aec29)

![IPsec Policy Settings 2](https://github.com/user-attachments/assets/ec98372d-0600-4932-9afd-b25ab24fc61f)

### 9. Map Network Drives Policies

- **Scope**: User configuration
- **Purpose**: Drive mapping automation
- **Key Settings**: Department/home folder mappings

📸 **Drive Mapping Policy**

![Map Network Drives Policy](https://github.com/user-attachments/assets/c41fa089-611e-45ea-83f3-1c6d62f92827)

![Map Network Drives Policy 1](https://github.com/user-attachments/assets/25b7969b-ac58-4f79-b9ea-4d58ddd10cf3)

![Map Network Drives Policy 2](https://github.com/user-attachments/assets/dff93057-da6f-4af6-8fe9-cc6868d871fc)

![Drive Mapping Policy](https://github.com/user-attachments/assets/4908581f-1bd2-4216-8283-2bc9efeabc40)

![Drive Mapping Policy 1](https://github.com/user-attachments/assets/074cce5f-c86b-4cf3-9def-8d4a86d4d6fa)

![Drive Mapping Policy 2](https://github.com/user-attachments/assets/2c043a6f-5d48-4cc4-a05a-a5786ede9ca3)

---

## 👥 Security Group Utilization

- `Domain Users`: Default access control
- `Schema Admins`: Schema management
- `Enterprise Admins`: Full domain/forest rights
- `BUILTIN\Administrators`: Local admin rights
- `Group Policy Creator Owners`: GPO delegation

📸 **Security Groups in Active Directory**

![Security Groups in Active Directory](https://github.com/user-attachments/assets/d9b945f0-4977-48ac-b0de-2d66fb16b54b)

---

## 🔧 Technical Implementation Details

### Group Policy Processing

- **Mode**: Normal
- **Last Applied**: May 5, 2025, 2:45:30 PM
- **Slow Link Threshold**: 500 kbps
- **Policy Source**: `WIN-D2PQBCI88JQ.hughdomain.local`

📸 **GPResult from Client Machine**

![GPResult from Client Machine](https://github.com/user-attachments/assets/28eb2d27-4bce-427d-b832-06aafacd3d8d)

![GPResult from Client Machine 1](https://github.com/user-attachments/assets/0a512658-0fbd-4a84-99e2-8ba4f3cbe71d)

![GPResult from Client Machine 2](https://github.com/user-attachments/assets/a667c08c-c032-4b31-96f0-40c9ef1d9668)

### 💻 Computer Configuration

#### ⚖️ Application Policies
- AppLocker enforcement
- Controlled installations

#### 💼 System Policies
- Startup/shutdown scripts
- Disk quotas
- User profile settings

#### 🔐 Security Settings
- Advanced audit policies
- Security options
- Firewall rules

📸 **Computer Configuration Settings**

![Computer Configuration Settings On Client Machine](https://github.com/user-attachments/assets/aa654be4-c939-41c8-bc0e-f01f1d4332ad)

![Computer Configuration Settings On Client Machine 1](https://github.com/user-attachments/assets/6db814d0-7fd3-4504-9659-0790f4157f24)

![Computer Configuration Settings On Client Machine 2](https://github.com/user-attachments/assets/8dbf86c1-9511-41c2-af93-cf8c92b15969)

![Computer Configuration Settings On Client Machine 3](https://github.com/user-attachments/assets/37932f22-8052-486f-bcf9-e6856e441d54)

![Computer Configuration Settings On Client Machine 4](https://github.com/user-attachments/assets/894e157e-0edb-4cde-9f59-f2b9344912c7)

![Computer Configuration Settings On Client Machine 5](https://github.com/user-attachments/assets/f1f45fbf-8492-4f00-8559-33c214445fd0)

![Computer Configuration Settings On Client Machine 6](https://github.com/user-attachments/assets/cfbd4fd3-c532-408b-bffb-e8a013a97bb1)

![Computer Configuration Settings On Client Machine 7](https://github.com/user-attachments/assets/b46a373c-a80e-431e-a969-e5103ff52c5d)

![Computer Configuration Settings On Client Machine 8](https://github.com/user-attachments/assets/c2cde3bd-a091-4330-9f10-3516cfad4530)

![Computer Configuration Settings On Client Machine 9](https://github.com/user-attachments/assets/5e9cb427-a7bf-4af7-8893-6166b4530283)

![Computer Configuration Settings On Client Machine 10](https://github.com/user-attachments/assets/531a9f11-1b30-4a27-beb7-4ec0e0515a39)

![Computer Configuration Settings On Client Machine 11](https://github.com/user-attachments/assets/5eeed4d6-dc9b-49d4-b3f7-d1d8c688c352)

![Computer Configuration Settings On Client Machine 12](https://github.com/user-attachments/assets/e73615c8-b1f2-4e1b-afb9-6ac46cbdc7f1)

![Computer Configuration Settings On Client Machine 13](https://github.com/user-attachments/assets/a6c04758-080b-439c-a8cd-94eadab503f4)

![Computer Configuration Settings On Client Machine 14](https://github.com/user-attachments/assets/fffd8a0b-3f56-4cbc-b229-c8757d3806bb)

![Computer Configuration Settings On Client Machine 15](https://github.com/user-attachments/assets/aabfa352-8895-4368-8213-63f34d2d5aff)

![Computer Configuration Settings On Client Machine 16](https://github.com/user-attachments/assets/1e3f9948-27d9-401b-b6e6-2a7d4dd5a37a)

![Computer Configuration Settings On Client Machine 17](https://github.com/user-attachments/assets/801f67ba-99f9-4582-a813-6a92a2e75ac8)

![Computer Configuration Settings On Client Machine 18](https://github.com/user-attachments/assets/860fa969-5488-4d67-a3ac-4fcdc74c7c1d)

![Computer Configuration Settings On Client Machine 19](https://github.com/user-attachments/assets/eaed7b36-e51d-43cb-bcc3-b2aa510531e1)

![Computer Configuration Settings On Client Machine 20](https://github.com/user-attachments/assets/8750d004-95ef-4ef6-9a90-afaaf09517c3)

![Computer Configuration Settings On Client Machine 21](https://github.com/user-attachments/assets/99e0fbc6-af32-465f-94a3-847c5beabc14)

![Computer Configuration Settings On Client Machine 22](https://github.com/user-attachments/assets/216bc197-7093-4edc-b0ee-8d8dc7feda6a)

![Computer Configuration Settings On Client Machine 23](https://github.com/user-attachments/assets/217c95c7-0a2e-4395-a627-207da57fec5f)

![Computer Configuration Settings On Client Machine 24](https://github.com/user-attachments/assets/947ac508-44ae-4810-8e8f-e3e5e96f0cd2)

![Computer Configuration Settings On Client Machine 25](https://github.com/user-attachments/assets/378d8d16-b0fc-4913-b721-e071bd7fdfea)

![Computer Configuration Settings On Client Machine 26](https://github.com/user-attachments/assets/0cc5bd38-13cc-4cb0-8c93-77f87c82f6f2)

![Computer Configuration Settings On Client Machine 27](https://github.com/user-attachments/assets/6c318c12-c122-4f03-a8d8-d4dfe97d2624)

![Computer Configuration Settings On Client Machine 28](https://github.com/user-attachments/assets/eaa8045f-be88-4900-868d-ac6f5a196482)

![Computer Configuration Settings On Client Machine 29](https://github.com/user-attachments/assets/8802dc54-251e-48f5-89a3-dc3fca3ce03d)

![Computer Configuration Settings On Client Machine 30](https://github.com/user-attachments/assets/73df91c1-8bca-4328-bc72-919ff7595da4)

![Computer Configuration Settings On Client Machine 31](https://github.com/user-attachments/assets/0be92bfb-1568-4a2a-84c7-9cbc1fff4a0b)

![Computer Configuration Settings On Client Machine 32](https://github.com/user-attachments/assets/fc0d1f94-391a-48cc-b2d0-390d0a5ceef2)

![Computer Configuration Settings On Client Machine 33](https://github.com/user-attachments/assets/9582f1ea-8559-4c40-838a-195549e6be41)

![Computer Configuration Settings On Client Machine 34](https://github.com/user-attachments/assets/f0a82c55-9ff2-483a-8459-6391b941a5fc)

![Computer Configuration Settings On Client Machine 35](https://github.com/user-attachments/assets/ffb47982-0d58-4f6e-9a59-b9c78b5c6838)

![Computer Configuration Settings On Client Machine 36](https://github.com/user-attachments/assets/317393c2-e374-46c3-8d94-8670df415285)

![Computer Configuration Settings On Client Machine 37](https://github.com/user-attachments/assets/37a2bd2a-a84a-4845-b264-0174e5a5a028)

![Computer Configuration Settings On Client Machine 38](https://github.com/user-attachments/assets/5993f326-0d32-486a-a824-00b451132cda)

![Computer Configuration Settings On Client Machine 39](https://github.com/user-attachments/assets/898e4e44-5ace-4f20-8784-a99587ec6ad7)

![Computer Configuration Settings On Client Machine 40](https://github.com/user-attachments/assets/691cdb3f-5867-4793-a03a-41128f37c682)

![Computer Configuration Settings On Client Machine 41](https://github.com/user-attachments/assets/43ca570d-2c37-478d-a50f-2af4661141ed)

![Computer Configuration Settings On Client Machine 42](https://github.com/user-attachments/assets/0dbcb6ac-1198-424b-aa65-7e42795ae13f)

### 👤 User Configuration

#### 🛍️ Preference Items
- Drive and printer mappings
- Registry modifications

#### 🗂️ Administrative Templates
- Start menu and desktop policies
- Control Panel restrictions

📸 **User Configuration Settings**

![User Configuration Settings On Client Machine](https://github.com/user-attachments/assets/8625f087-b4a6-402d-9e3a-0898d5c30211)

![User Configuration Settings On Client Machine 1](https://github.com/user-attachments/assets/1d93478b-d559-4ebd-a46c-8bf21390e961)

![User Configuration Settings On Client Machine 2](https://github.com/user-attachments/assets/afd58271-297b-4eea-a0d8-02286904235e)

---

## 📅 Implementation Methodology

### 1. 🗓️ Planning Phase
- OU structure and security group planning
- Policy categorization

### 2. 📈 Development Phase
- Lab setup and policy testing
- Documentation drafting

### 3. 🚀 Deployment Phase
- Test group rollout
- Staggered production deployment
- Performance monitoring

### 4. 🔩 Maintenance Phase
- Ongoing policy review and refinement
- Documentation updates

---

## 🎯 Group Policy Filtering

### 🚨 Security Filtering
- All policies limited to Authenticated Users

### ⚙️ WMI Filtering
- None used

### 🔕 Block Inheritance
- Used in sensitive OUs with enforced policies

---

## 🔐 Security Considerations

### 👮‍♂️ Principle of Least Privilege

- Rights assignment based on role
- Limited admin privileges
- Secure service account policies

📸 **Least Privilege Group Membership Screenshot**

![Principle of Least Privilege Domain Group Memberships](https://github.com/user-attachments/assets/90bb1607-129b-4fea-acc0-e712c381138e)


### 📱Application Control

- Managed installs
- Blocked executable directories
- Script control

📸 **AppLocker Configuration**

![AppLocker Settings](https://github.com/user-attachments/assets/a56f42f1-0a05-440d-839f-f6b8d7500e25)

![AppLocker Settings 1](https://github.com/user-attachments/assets/160e86c6-74b2-4d6a-ab32-2f66685bccbf)

![AppLocker Settings 2](https://github.com/user-attachments/assets/c2c0bca9-f7b2-4bfe-9a25-b497cbc5ab73)

![AppLocker Settings 3](https://github.com/user-attachments/assets/2e70e6a3-a2aa-494e-a1fb-285c7bb1847d)

---

## 📊 Compliance Monitoring

- GPResult analysis
- Baseline validation
- Alerting on policy deviations

---

## 🛠️ Maintenance Procedures

### 🔍 Policy Review

- Quarterly full reviews
- Monthly security updates

### 💾 GPO Backups

- Daily automated
- Weekly manual validation
- Offsite storage

📸 **GPO Backup Procedure**

![Confirmation of GPO Backup Completion](https://github.com/user-attachments/assets/012ceb23-363f-4659-8f98-df20d710712e)

![Backup Directory with GPO Files](https://github.com/user-attachments/assets/4f171f47-faa1-4e30-a5a2-a6f188ed2359)

![Backup Directory with GPO Files 1](https://github.com/user-attachments/assets/c7e925fd-21c3-4442-aac5-8c26af6c4510)

### ⏱️ Performance Monitoring

- GPO processing time
- Slow link review
- Extension load analysis

📸 **GPO Processing Time Monitoring**

![Performance GPO Processing Time](https://github.com/user-attachments/assets/5fe84bac-4bed-45e1-9014-4b6d3135c1c8)

📸 **Slow Link Review Monitoring**

![Slow Link Review](https://github.com/user-attachments/assets/197dd742-45ac-4c1c-a41f-947ec1cf800a)

![Slow Link Review 1](https://github.com/user-attachments/assets/f71802f5-05af-4826-978b-e4f5e8bdcd09)

📸 **Extension load analysis Monitoring**

![Extension load analysis](https://github.com/user-attachments/assets/c59d001f-c755-4a08-946e-1f8093a507c0)

---

## 🧪 Troubleshooting Methodology

### 🧰 Diagnostic Tools

- `gpresult /r`
- Group Policy Modeling
- Event Viewer

### ❗ Common Issues

- Inheritance conflicts
- WMI filter mismatches
- Extension errors

📸 **Troubleshooting Using gpresult**

![Troubleshooting Using GPRESULT](https://github.com/user-attachments/assets/2fc7ae94-dab4-4f68-ae48-7ccfc1b503d7)

![Troubleshooting Using GPRESULT 1](https://github.com/user-attachments/assets/ee8ca309-7f82-4f19-b9c0-8fa12973cabd)

![Troubleshooting Using GPRESULT 2](https://github.com/user-attachments/assets/2ae714af-963c-4d6b-8015-e71ce22ce687)

📸 **Event Viewer Logs**

![Event Viewer Logs](https://github.com/user-attachments/assets/1f491177-63c9-469e-b850-1a41356cf400)

---

## 🚀 Conclusion and Future Enhancements

This Group Policy deployment lays the foundation for secure, scalable, and manageable Active Directory operations.

### 🔒 Future Enhancements

- Zero Trust architecture integration
- Application Guard deployment
- Credential protection upgrades

### 📊 Audit and Compliance

- Advanced audit policies
- Security log collection
- SIEM integration

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
