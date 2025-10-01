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

<img width="1920" height="909" alt="Group Policy Management Console - GPO List" src="https://github.com/user-attachments/assets/08d61629-2c81-4cc4-bdd5-992cd4c9faff" />

### 1. Default Domain Policy

- **Scope**: Domain-wide
- **Purpose**: Base security settings for all domain objects
- **Key Settings**: Password policies, account lockout policies, Kerberos settings

📸 **Default Domain Policy Settings** 

<img width="1920" height="909" alt="Default Domain Policy Settings 1" src="https://github.com/user-attachments/assets/2ae2c367-0a1e-442c-b861-e98cef274d6a" /><br />

<img width="1920" height="909" alt="Default Domain Policy Settings 2" src="https://github.com/user-attachments/assets/510fc24e-09a9-4237-a7d6-25ded1cfaba2" /><br />

<img width="1920" height="909" alt="Default Domain Policy Settings 3" src="https://github.com/user-attachments/assets/87a8224c-9bb8-42b0-b2e7-a13429c55a13" />

---

### 2. Default Domain Controllers Policy

- **Scope**: Domain Controllers OU
- **Purpose**: Secure authentication servers
- **Key Settings**: User rights assignments, security options, audit policies

📸 **Domain Controllers Policy Settings**

<img width="1920" height="909" alt="Domain Controllers Policy Settings" src="https://github.com/user-attachments/assets/8820cfbf-249e-47fc-9d20-b43c5e62feb1" /><br />

<img width="1920" height="909" alt="Domain Controllers Policy Settings 1" src="https://github.com/user-attachments/assets/900691de-01b3-4e4f-a59f-57ad27d03804" /><br />

<img width="1920" height="909" alt="Domain Controllers Policy Settings 2" src="https://github.com/user-attachments/assets/dcae2b36-7e76-410f-b57c-2610cf043a9f" /><br />

<img width="1920" height="909" alt="Domain Controllers Policy Settings 3" src="https://github.com/user-attachments/assets/a4dfe72e-3e9c-4ab0-b914-04b2d1c72dc2" />

---

### 3. Windows Firewall Settings Policy

- **Scope**: Domain-wide (focused on DCs)
- **Purpose**: Enforce firewall configurations
- **Key Settings**: Firewall enabled, port rules, logging

📸 **Windows Firewall GPO Settings**

<img width="1920" height="909" alt="Windows Firewall GPO Settings" src="https://github.com/user-attachments/assets/b79e113d-3a20-43fa-ab6e-52ad9ca59c9a" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 1" src="https://github.com/user-attachments/assets/10c2748a-6793-4e3c-b121-167216ab25f3" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 2" src="https://github.com/user-attachments/assets/c7ff9243-421d-4b32-99ff-c953d952d883" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 3" src="https://github.com/user-attachments/assets/852052c6-874f-4d2e-8932-ddbcb1e1f043" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 4" src="https://github.com/user-attachments/assets/403d75e4-b7f2-442a-9d6f-372c05deddf2" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 5" src="https://github.com/user-attachments/assets/53bb2379-3f1f-42b4-9dee-d9eb077e9cf8" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 6" src="https://github.com/user-attachments/assets/95f4bf54-dd83-402e-867d-fb8b6476b482" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 7" src="https://github.com/user-attachments/assets/2edce584-d64d-43b7-b73f-f3926e3364f7" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 8" src="https://github.com/user-attachments/assets/42bdc624-c79f-4acd-9327-c6c45a7e062f" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 9" src="https://github.com/user-attachments/assets/2bea7827-8fd7-4323-bd8f-2b875698f882" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 10" src="https://github.com/user-attachments/assets/da2348bd-d68b-4eb9-b810-3990724bf144" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 11" src="https://github.com/user-attachments/assets/59a21a26-d7f9-4d8c-b1de-a3578e772710" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 12" src="https://github.com/user-attachments/assets/9a008583-f1d0-4855-8bea-e2e323999bc2" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 13" src="https://github.com/user-attachments/assets/3d724da6-f800-40e1-be12-de96f39e2c01" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 14" src="https://github.com/user-attachments/assets/15d42640-0c17-4ee3-aa4b-9a559b5dc2fb" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 15" src="https://github.com/user-attachments/assets/a641e343-a780-4118-b632-cd9672d6da6f" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 16" src="https://github.com/user-attachments/assets/4d1373fc-ca1c-483b-8e08-bab4979783aa" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 17" src="https://github.com/user-attachments/assets/d2b21234-48a4-459d-bbe7-b20b2f034d5f" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 18" src="https://github.com/user-attachments/assets/bfef6b04-5d86-4f41-9551-237dd183c6b2" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 19" src="https://github.com/user-attachments/assets/e15960d1-5a08-4888-bf4c-4fb9cdaaef50" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 20" src="https://github.com/user-attachments/assets/340c2f54-7735-41cb-b8a9-44d8c474020b" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 21" src="https://github.com/user-attachments/assets/f05e24b4-2bd7-4f1d-acd3-904402daf08d" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 22" src="https://github.com/user-attachments/assets/a04fe178-592f-4723-8df0-eb0b76496c75" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 23" src="https://github.com/user-attachments/assets/0b2e23a0-1a91-4f67-b97d-272e54b08d66" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 24" src="https://github.com/user-attachments/assets/98934a35-d33b-45fb-b7d1-ccc40394e195" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 25" src="https://github.com/user-attachments/assets/998f3b1a-a943-4b61-a7d8-c564b8960b82" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 26" src="https://github.com/user-attachments/assets/3ef81811-a607-4edd-83ba-d94fc97b5c3b" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 27" src="https://github.com/user-attachments/assets/8995214f-9dfe-4ae5-a048-2ddf6aead0d1" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 28" src="https://github.com/user-attachments/assets/2e9e68ac-0288-43e9-9b47-828cd24d2432" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 29" src="https://github.com/user-attachments/assets/4358978f-a973-42c1-a357-b6ee7064d297" /><br />

<img width="1920" height="909" alt="Windows Firewall GPO Settings 30" src="https://github.com/user-attachments/assets/db7012fa-09e9-42e3-9e31-2ac252d8f661" />

---

### 4. Win11 Security Policy

- **Scope**: Windows 11 workstations
- **Purpose**: Harden client endpoints
- **Key Settings**: Exploit protection, Credential Guard, AppLocker

📸 **Windows 11 Security Policy Settings**

<img width="1920" height="909" alt="Windows 11 Security Policy Settings" src="https://github.com/user-attachments/assets/772b3de6-64da-40ea-b8ea-e445b4c03716" /><br />

<img width="1920" height="909" alt="Windows 11 Security Policy Settings 1" src="https://github.com/user-attachments/assets/3cb71039-971f-4858-af2d-397d04f30def" />

---

### 5. Windows Defender Settings Policy

- **Scope**: All computers
- **Purpose**: Antivirus and threat protection
- **Key Settings**: Real-time protection, cloud protection, scans

📸 **Windows Defender Policy Configuration**

<img width="1920" height="909" alt="Windows Defender Policy Configuration" src="https://github.com/user-attachments/assets/894a0b36-be11-4eef-92b5-5872225a38c4" /><br />

<img width="1920" height="909" alt="Windows Defender Policy Configuration 1" src="https://github.com/user-attachments/assets/ffcae157-2e55-443c-9409-e524a5243e55" />

---

### 6. Network Security Settings Policy

- **Scope**: All computers
- **Purpose**: Secure communication protocols
- **Key Settings**: SMB/LDAP signing, TLS configurations

📸 **Network Security GPO Settings**

<img width="1920" height="909" alt="Network Security GPO Settings" src="https://github.com/user-attachments/assets/49b00fca-89d0-4a8e-af23-c67af95601af" /><br />

<img width="1920" height="909" alt="Network Security GPO Settings 1" src="https://github.com/user-attachments/assets/f5f14b0b-2fbe-4822-8d44-34ea98b3f019" />

---

### 7. Restricted Groups Policy

- **Scope**: DCs and IT Security computers
- **Purpose**: Manage group membership
- **Key Settings**: Enforced privileged group control

📸 **Restricted Groups Configuration**

<img width="1920" height="909" alt="Restricted Groups Configuration" src="https://github.com/user-attachments/assets/7508362c-631b-4d91-b630-c0a578355dad" /><br />

<img width="1920" height="909" alt="Restricted Groups Configuration 1" src="https://github.com/user-attachments/assets/afb2e443-95b2-4a03-a1c7-bc60ea40b3a2" />

---

### 8. IPsec Authentication Policy

- **Scope**: Secure communication channels
- **Purpose**: Encrypt sensitive traffic
- **Key Settings**: IPsec rules, encryption, authentication

📸 **IPsec Policy Settings**

<img width="4400" height="2083" alt="IPsec Policy Settings" src="https://github.com/user-attachments/assets/da6f0e6c-8437-4a69-b75c-20bfcef44e20" /><br />

<img width="4400" height="2083" alt="Picture2" src="https://github.com/user-attachments/assets/11097d17-f269-43f0-b7f7-a5c1863d3819" /><br />

<img width="4400" height="2083" alt="Picture3" src="https://github.com/user-attachments/assets/7d5db566-bd03-4893-929e-b07ee9dd9518" />

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
