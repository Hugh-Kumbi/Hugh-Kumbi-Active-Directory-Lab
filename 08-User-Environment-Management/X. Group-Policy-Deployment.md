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

### 🏢 1. Default Domain Policy

- **Scope**: Domain-wide
- **Purpose**: Base security settings for all domain objects
- **Key Settings**: Password policies, account lockout policies, Kerberos settings

📸 **Default Domain Policy Settings** 

<img width="1920" height="909" alt="Default Domain Policy Settings 1" src="https://github.com/user-attachments/assets/2ae2c367-0a1e-442c-b861-e98cef274d6a" /><br />

<img width="1920" height="909" alt="Default Domain Policy Settings 2" src="https://github.com/user-attachments/assets/510fc24e-09a9-4237-a7d6-25ded1cfaba2" /><br />

<img width="1920" height="909" alt="Default Domain Policy Settings 3" src="https://github.com/user-attachments/assets/87a8224c-9bb8-42b0-b2e7-a13429c55a13" />

---

### 🖥️ 2. Default Domain Controllers Policy

- **Scope**: Domain Controllers OU
- **Purpose**: Secure authentication servers
- **Key Settings**: User rights assignments, security options, audit policies

📸 **Domain Controllers Policy Settings**

<img width="1920" height="909" alt="Domain Controllers Policy Settings" src="https://github.com/user-attachments/assets/8820cfbf-249e-47fc-9d20-b43c5e62feb1" /><br />

<img width="1920" height="909" alt="Domain Controllers Policy Settings 1" src="https://github.com/user-attachments/assets/900691de-01b3-4e4f-a59f-57ad27d03804" /><br />

<img width="1920" height="909" alt="Domain Controllers Policy Settings 2" src="https://github.com/user-attachments/assets/dcae2b36-7e76-410f-b57c-2610cf043a9f" /><br />

<img width="1920" height="909" alt="Domain Controllers Policy Settings 3" src="https://github.com/user-attachments/assets/a4dfe72e-3e9c-4ab0-b914-04b2d1c72dc2" />

---

### 🔥 3. Windows Firewall Settings Policy

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

### 🪟 4. Win11 Security Policy

- **Scope**: Windows 11 workstations
- **Purpose**: Harden client endpoints
- **Key Settings**: Exploit protection, Credential Guard, AppLocker

📸 **Windows 11 Security Policy Settings**

<img width="1920" height="909" alt="Windows 11 Security Policy Settings" src="https://github.com/user-attachments/assets/772b3de6-64da-40ea-b8ea-e445b4c03716" /><br />

<img width="1920" height="909" alt="Windows 11 Security Policy Settings 1" src="https://github.com/user-attachments/assets/3cb71039-971f-4858-af2d-397d04f30def" />

---

### 🧰 5. Windows Defender Settings Policy

- **Scope**: All computers
- **Purpose**: Antivirus and threat protection
- **Key Settings**: Real-time protection, cloud protection, scans

📸 **Windows Defender Policy Configuration**

<img width="1920" height="909" alt="Windows Defender Policy Configuration" src="https://github.com/user-attachments/assets/894a0b36-be11-4eef-92b5-5872225a38c4" /><br />

<img width="1920" height="909" alt="Windows Defender Policy Configuration 1" src="https://github.com/user-attachments/assets/ffcae157-2e55-443c-9409-e524a5243e55" />

---

### 🌐 6. Network Security Settings Policy

- **Scope**: All computers
- **Purpose**: Secure communication protocols
- **Key Settings**: SMB/LDAP signing, TLS configurations

📸 **Network Security GPO Settings**

<img width="1920" height="909" alt="Network Security GPO Settings" src="https://github.com/user-attachments/assets/49b00fca-89d0-4a8e-af23-c67af95601af" /><br />

<img width="1920" height="909" alt="Network Security GPO Settings 1" src="https://github.com/user-attachments/assets/f5f14b0b-2fbe-4822-8d44-34ea98b3f019" />

---

### 👥 7. Restricted Groups Policy

- **Scope**: DCs and IT Security computers
- **Purpose**: Manage group membership
- **Key Settings**: Enforced privileged group control

📸 **Restricted Groups Configuration**

<img width="1920" height="909" alt="Restricted Groups Configuration" src="https://github.com/user-attachments/assets/7508362c-631b-4d91-b630-c0a578355dad" /><br />

<img width="1920" height="909" alt="Restricted Groups Configuration 1" src="https://github.com/user-attachments/assets/afb2e443-95b2-4a03-a1c7-bc60ea40b3a2" />

---

### 🛰️ 8. IPsec Authentication Policy

- **Scope**: Secure communication channels
- **Purpose**: Encrypt sensitive traffic
- **Key Settings**: IPsec rules, encryption, authentication

📸 **IPsec Policy Settings**

<img width="4400" height="2083" alt="IPsec Policy Settings" src="https://github.com/user-attachments/assets/da6f0e6c-8437-4a69-b75c-20bfcef44e20" /><br />

<img width="4400" height="2083" alt="Picture2" src="https://github.com/user-attachments/assets/11097d17-f269-43f0-b7f7-a5c1863d3819" /><br />

<img width="4400" height="2083" alt="Picture3" src="https://github.com/user-attachments/assets/7d5db566-bd03-4893-929e-b07ee9dd9518" />

---

### 🗂️ 9. Map Network Drives Policies

- **Scope**: User configuration
- **Purpose**: Drive mapping automation
- **Key Settings**: Department/home folder mappings

📸 **Drive Mapping Policy**

<img width="1920" height="909" alt="Drive Mapping Policy" src="https://github.com/user-attachments/assets/70f7f3b6-7166-401f-aa02-35d3ec103f54" /><br />

<img width="1920" height="909" alt="Drive Mapping Policy 1" src="https://github.com/user-attachments/assets/cfc3a468-63e7-4566-a925-d753cfc9bd11" /><br />

<img width="1920" height="909" alt="Drive Mapping Policy 2" src="https://github.com/user-attachments/assets/57c440f7-8c62-4591-8a25-e562879cd967" /><br />

<img width="1920" height="909" alt="Drive Mapping Policy 3" src="https://github.com/user-attachments/assets/ffc29626-86f7-4b83-9368-09c34b8d46ab" /><br />

<img width="1920" height="909" alt="Drive Mapping Policy 4" src="https://github.com/user-attachments/assets/90f0aa6d-0437-4ec2-b025-5a731a5eb8d6" /><br />

<img width="1920" height="909" alt="Drive Mapping Policy 5" src="https://github.com/user-attachments/assets/24636522-e904-41ac-aa18-471ddacba492" />

---

## 👥 Security Group Utilization

- `Domain Users`: Default access control
- `Schema Admins`: Schema management
- `Enterprise Admins`: Full domain/forest rights
- `BUILTIN\Administrators`: Local admin rights
- `Group Policy Creator Owners`: GPO delegation

📸 **Security Groups in Active Directory**

<img width="1920" height="909" alt="OU Structure in Active Directory Users and Computers" src="https://github.com/user-attachments/assets/5eb83b38-bfb2-44c9-84c1-c6d2f4ecf05d" />

---

## 🔧 Technical Implementation Details

### ⚙️ Group Policy Processing

- **Mode**: Normal
- **Last Applied**: September 30, 2025 at 6:12:31 PM & September ‎30, ‎2025 at 7:21:44 PM
- **Slow Link Threshold**: 500 kbps
- **Policy Source**: `WinServer2025.hughdomain.local`

📸 **`gpresult` from `AD-WIN11-01`**

<img width="1920" height="909" alt="Final `gpresult` from `AD-WIN11-01`" src="https://github.com/user-attachments/assets/25c17be7-a9f8-4bfb-9c8f-6e0b3ba2e669" /><br />

<img width="1920" height="909" alt="Final `gpresult` from `AD-WIN11-01` 1" src="https://github.com/user-attachments/assets/bbca3623-b5e1-47a1-8a28-5d312737440f" /><br />

<img width="1920" height="909" alt="Final `gpresult` from `AD-WIN11-01` 2" src="https://github.com/user-attachments/assets/dee163d0-848a-43ec-aeb5-26b5265906d8" /><br />

📸 **`gpresult` from `AD-WIN11-02`**

<img width="1920" height="909" alt="Final `gpresult` from `AD-WIN11-02`" src="https://github.com/user-attachments/assets/57ff8f06-8bce-4ae1-94ff-99739ce7f96d" /><br />

<img width="1920" height="909" alt="Final `gpresult` from `AD-WIN11-02` 1" src="https://github.com/user-attachments/assets/5f8bbebb-11ce-4c77-b4ea-4f125206d049" /><br />

<img width="1920" height="909" alt="Final `gpresult` from `AD-WIN11-02` 2" src="https://github.com/user-attachments/assets/30326a53-b6c8-48d3-bfe3-847ae005d35c" />

---

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

<img width="1920" height="909" alt="Computer Configuration Settings" src="https://github.com/user-attachments/assets/7d4ed616-b08b-4bec-a384-d70776fc12ab" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 1" src="https://github.com/user-attachments/assets/135d1e44-a64a-4e40-9502-50d30e996c99" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 2" src="https://github.com/user-attachments/assets/cc771fb8-3bc8-4abe-9daf-177e8324920d" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 3" src="https://github.com/user-attachments/assets/16cdb0eb-39f7-4b6e-8eb4-4810bcf208d2" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 4" src="https://github.com/user-attachments/assets/45c74c49-c282-466c-a632-01d1816402eb" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 5" src="https://github.com/user-attachments/assets/2af8ca49-e15f-4fd8-b0c5-b073d67a55ce" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 6" src="https://github.com/user-attachments/assets/a0075feb-f7a1-40c6-b06c-55dd5bef107d" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 7" src="https://github.com/user-attachments/assets/91fd305f-96b7-4c86-bd48-c85e32b031aa" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 8" src="https://github.com/user-attachments/assets/745acde0-3823-41aa-b304-06b2eaa81954" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 9" src="https://github.com/user-attachments/assets/e8011518-8e26-41c9-a014-4ebc9a53db7e" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 10" src="https://github.com/user-attachments/assets/b6dec855-45db-4bb5-9a81-fa684e0bcc2b" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 11" src="https://github.com/user-attachments/assets/c9091c7d-863e-40f9-addd-87f520ec3882" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 12" src="https://github.com/user-attachments/assets/9f81bc74-ae0e-4a61-b2a0-3c2dcfb8e9b0" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 13" src="https://github.com/user-attachments/assets/a2491c81-22c2-427d-8931-708798a03e8b" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 14" src="https://github.com/user-attachments/assets/e7f2bca0-dbd5-485d-8de3-9575d94c7e5b" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 15" src="https://github.com/user-attachments/assets/2a5eb0b5-224f-45d4-9a86-d06bef40be73" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 16" src="https://github.com/user-attachments/assets/7114619e-2c97-4706-9e0d-3dbe590fe308" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 17" src="https://github.com/user-attachments/assets/76eafa3b-28d3-4bea-b7e4-04e133f48fb5" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 18" src="https://github.com/user-attachments/assets/9ecd545b-f27e-49c4-8a5d-ecc8ea429abd" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 19" src="https://github.com/user-attachments/assets/d1b53176-fd6c-49d6-bfda-5102dbd12ac7" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 20" src="https://github.com/user-attachments/assets/7e216e09-379e-4e50-80fc-ec2b4f5327da" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 21" src="https://github.com/user-attachments/assets/76d7dc03-8cca-4431-8daf-0b3b3f377401" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 22" src="https://github.com/user-attachments/assets/7e27dfdc-81c8-4e87-9f24-ef56641c9e28" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 23" src="https://github.com/user-attachments/assets/33392e9f-dfbb-47f5-98e2-2e4d88c78f88" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 24" src="https://github.com/user-attachments/assets/a23773f6-eb6a-48a2-aea0-3b7f43a0ddc6" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 25" src="https://github.com/user-attachments/assets/243ab98e-3c39-48d4-9536-d2ad889cb3a8" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 26" src="https://github.com/user-attachments/assets/b9980432-0d4f-4553-aaf1-a1022960b220" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 27" src="https://github.com/user-attachments/assets/10f53db5-318a-4a7c-83fe-176190900b8f" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 28" src="https://github.com/user-attachments/assets/fa895cf9-0b19-45d8-bd71-81c5d9d3cb13" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 29" src="https://github.com/user-attachments/assets/95b2dcbb-1dee-4471-9833-8cec6180f2dc" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 30" src="https://github.com/user-attachments/assets/db1bf58d-4237-49c9-942d-122588431045" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 31" src="https://github.com/user-attachments/assets/35cca9d6-8d5b-44da-a4d5-e26292f37e21" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 32" src="https://github.com/user-attachments/assets/4ca6e3b2-1ac9-4f23-99cd-dad2934bdcc9" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 33" src="https://github.com/user-attachments/assets/b6876029-c1cb-4fd4-9de4-28f44c85d62b" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 34" src="https://github.com/user-attachments/assets/80b1a3da-15c5-4d1b-8d3d-b9d9959f788b" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 35" src="https://github.com/user-attachments/assets/71d0299a-011c-423c-9cc7-0144b33c8100" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 36" src="https://github.com/user-attachments/assets/9e36b3e0-bb7c-48bc-b373-4507edad23bf" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 37" src="https://github.com/user-attachments/assets/7a4deed2-fd25-48ef-bfce-5e5f678f5ed5" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 38" src="https://github.com/user-attachments/assets/47607875-a213-484f-97ba-3323a3eca367" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 39" src="https://github.com/user-attachments/assets/812ac25c-f7c1-4858-9da0-8d08191cfe76" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 40" src="https://github.com/user-attachments/assets/60215c7b-4cb9-44d7-9b1a-db88c9cc2ad7" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 41" src="https://github.com/user-attachments/assets/00508fe4-ae5a-4591-a74a-ca23ab6902e0" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 42" src="https://github.com/user-attachments/assets/60dae0a8-4795-4d55-b6c5-c2c2cad23a1f" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 43" src="https://github.com/user-attachments/assets/f41cb659-1a73-4678-b6e8-9ae22a77428d" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 44" src="https://github.com/user-attachments/assets/8b34abc6-2485-42b0-9fef-0f81909b3e92" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 45" src="https://github.com/user-attachments/assets/f59cb5b0-7013-4dbd-af0d-ba2d9cafa21e" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 46" src="https://github.com/user-attachments/assets/10a5ed60-8346-4cc1-a50c-99e4695c1fbd" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 47" src="https://github.com/user-attachments/assets/456b27ca-d14e-4ed2-9fb5-ef9fedc84025" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 48" src="https://github.com/user-attachments/assets/d783acf6-4a83-47e5-89a8-62ed6c75e1d2" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 49" src="https://github.com/user-attachments/assets/17538d11-e443-4859-8113-c4885cc4fc41" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 50" src="https://github.com/user-attachments/assets/c8b5f05f-e98e-4bef-937c-3ddd7e36a91b" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 51" src="https://github.com/user-attachments/assets/205875c9-6ed3-4f73-b8b9-d82b2136e791" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 52" src="https://github.com/user-attachments/assets/c152cbd6-34c0-4b4d-94d2-05052699c582" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 53" src="https://github.com/user-attachments/assets/ec9d1e26-a195-46e2-b8fa-e776b83c860c" /><br />

<img width="1920" height="909" alt="Computer Configuration Settings 54" src="https://github.com/user-attachments/assets/ed136f5e-343e-48c7-97cd-fe0875fbef47" />

---

### 👤 User Configuration

#### 🛍️ Preference Items
- Drive and printer mappings
- Registry modifications

#### 🗂️ Administrative Templates
- Start menu and desktop policies
- Control Panel restrictions

📸 **User Configuration Settings**

<img width="1920" height="909" alt="User Configuration Settings" src="https://github.com/user-attachments/assets/1bcafeec-36cb-482b-80cb-d4e4e0769848" /><br />

<img width="1920" height="909" alt="User Configuration Settings 1" src="https://github.com/user-attachments/assets/dc6684d0-e388-4d84-82fa-d1ae9ceb043f" /><br />

<img width="1920" height="909" alt="User Configuration Settings 2" src="https://github.com/user-attachments/assets/d9287356-bb97-4ee2-a1eb-c7f7320e8fd8" /><br />

<img width="1920" height="909" alt="User Configuration Settings 3" src="https://github.com/user-attachments/assets/0a8e5656-f16c-499e-b2e1-d469b1cd9551" /><br />

<img width="1920" height="909" alt="User Configuration Settings 4" src="https://github.com/user-attachments/assets/8eaf420f-551d-45fe-a2b6-c3ab0a7b9962" /><br />

<img width="1920" height="909" alt="User Configuration Settings 5" src="https://github.com/user-attachments/assets/4dadffe8-aeb9-4a41-a999-564bb064fcb2" /><br />

<img width="1920" height="909" alt="User Configuration Settings 6" src="https://github.com/user-attachments/assets/ab904a04-9c84-4e0b-87d7-0a6b65c65f89" /><br />

<img width="1920" height="909" alt="User Configuration Settings 7" src="https://github.com/user-attachments/assets/a69e35ed-539d-4cf7-b08e-ff7cf337432e" /><br />

<img width="1920" height="909" alt="User Configuration Settings 8" src="https://github.com/user-attachments/assets/b36e6587-09b0-4798-bdbb-be5240d28e64" /><br />

<img width="1920" height="909" alt="User Configuration Settings 9" src="https://github.com/user-attachments/assets/a153a13a-1908-4b92-b8c7-6131a52122c4" /><br />

<img width="1920" height="909" alt="User Configuration Settings 10" src="https://github.com/user-attachments/assets/4f77badf-8575-437b-af14-05c64114a07f" /><br />

<img width="1920" height="909" alt="User Configuration Settings 11" src="https://github.com/user-attachments/assets/76c96dd6-748a-4911-83b5-e50b2702e1d6" /><br />

<img width="1920" height="909" alt="User Configuration Settings 12" src="https://github.com/user-attachments/assets/7eca6351-a365-47e1-9b45-fac0f1553b02" />

---

## 📅 Implementation Methodology

### 🗓️ 1. Planning Phase
- OU structure and security group planning
- Policy categorization

### 📈 2. Development Phase
- Lab setup and policy testing
- Documentation drafting

### 🚀 3. Deployment Phase
- Test group rollout
- Staggered production deployment
- Performance monitoring

### 🔩 4. Maintenance Phase
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

📸 **Least Privilege Group Membership**

<img width="1920" height="909" alt="Least Privilege Group Membership" src="https://github.com/user-attachments/assets/372360f7-d886-4d04-92be-a7540b878bb8" /><br />

<img width="1920" height="909" alt="Least Privilege Group Membership 1" src="https://github.com/user-attachments/assets/cd597290-0578-403d-b079-a17fe2cfa961" /><br />

<img width="1920" height="909" alt="Least Privilege Group Membership 2" src="https://github.com/user-attachments/assets/bc13415b-8c68-4e58-bfff-cb15de2765ec" /><br />

<img width="1920" height="909" alt="Least Privilege Group Membership 3" src="https://github.com/user-attachments/assets/fb6cc41c-65e7-49ee-b085-eb2369648f22" /><br />

<img width="1920" height="909" alt="Least Privilege Group Membership 4" src="https://github.com/user-attachments/assets/2cb01ad8-20e4-45fc-b730-06e9135cbc97" /><br />

<img width="1920" height="909" alt="Least Privilege Group Membership 5" src="https://github.com/user-attachments/assets/4a1d1b76-0a1b-41c6-a509-d3327c887d07" /><br />

<img width="1920" height="909" alt="Least Privilege Group Membership 6" src="https://github.com/user-attachments/assets/922b0e96-5a5b-403a-8828-22b3c197119c" /><br />

<img width="1920" height="909" alt="Least Privilege Group Membership 7" src="https://github.com/user-attachments/assets/0cb15346-94c4-4ae4-9f75-0ffd39fee3f9" /><br />

<img width="1920" height="909" alt="Least Privilege Group Membership 8" src="https://github.com/user-attachments/assets/e97bd5c5-c647-43aa-affe-87fee9d38bf5" />

---

### 📱 Application Control

- Managed installs
- Blocked executable directories
- Script control

📸 **AppLocker Configuration**

<img width="1920" height="909" alt="AppLocker Configuration" src="https://github.com/user-attachments/assets/5cfb7e7e-f66b-4d8a-9b3e-fffe9b4679a2" /><br />

<img width="1920" height="909" alt="AppLocker Configuration 1" src="https://github.com/user-attachments/assets/8ec74868-9bc6-412d-9fc7-092750fdd05e" />

---

## 📊 Compliance Monitoring

- GPResult analysis
- Baseline validation
- Alerting on policy deviations

## 🛠️ Maintenance Procedures

### 🔍 Policy Review

- Quarterly full reviews
- Monthly security updates

### 💾 GPO Backups

- Daily automated
- Weekly manual validation
- Offsite storage

📸 **GPO Backup Procedure**

<img width="1920" height="909" alt="Confirmation of GPO Backup Completion" src="https://github.com/user-attachments/assets/cf8800b7-6fde-4e43-a139-82adf2d0b32d" /><br />

<img width="1920" height="909" alt="GPO Backup Procedure" src="https://github.com/user-attachments/assets/506aed2d-eb89-4bf1-852c-345b2af36b39" /><br />

<img width="1920" height="909" alt="GPO Backup Procedure 1" src="https://github.com/user-attachments/assets/fa032574-7d27-47c2-a616-7e8a9da7cd04" /><br />

<img width="1920" height="909" alt="GPO Backup Procedure 2" src="https://github.com/user-attachments/assets/efd45035-bb19-43e7-a65f-31b8af077d6b" /><br />

<img width="1920" height="909" alt="GPO Backup Procedure 3" src="https://github.com/user-attachments/assets/2688b597-00a1-4e82-88ad-48f156f0003f" /><br />

<img width="1920" height="909" alt="GPO Backup Procedure 4" src="https://github.com/user-attachments/assets/f3aafdee-5a70-43fb-87b5-5c47c3a5d23a" /><br />

<img width="1920" height="909" alt="Verify GPO Backup Integrity 5" src="https://github.com/user-attachments/assets/1c276ca8-4f97-4ab8-a67c-d52a2d4db917" /><br />

<img width="1920" height="909" alt="Verify GPO Backup Integrity 101" src="https://github.com/user-attachments/assets/9c2a2b86-17be-48da-9b70-63cc317a2b68" />

---

### ⏱️ Performance Monitoring

- GPO processing time
- Slow link review
- Extension load analysis

📸 **GPO Processing Time Monitoring**

<img width="1920" height="909" alt="GPO Processing Time Monitoring" src="https://github.com/user-attachments/assets/884b4e42-b032-48bd-85f7-c88d97c5a43a" /><br />

<img width="1920" height="909" alt="GPO Processing Time Monitoring 1" src="https://github.com/user-attachments/assets/687fd12d-b4f1-4087-adf6-25ce3bc3e711" /><br />

<img width="1920" height="909" alt="GPO Processing Time Monitoring 2" src="https://github.com/user-attachments/assets/65090e27-5ecd-4f85-87b7-535bb3eb3cca" /><br />

📸 **Slow Link Review Monitoring**

<img width="1920" height="909" alt="Slow Link Review Monitoring" src="https://github.com/user-attachments/assets/661ad577-aa8e-4c40-851f-053543d22d1a" /><br />

<img width="1920" height="909" alt="Slow Link Review Monitoring 1" src="https://github.com/user-attachments/assets/f230bbf6-bdb2-48a4-ac46-4b34bc1bd465" /><br />

<img width="1920" height="909" alt="Slow Link Review Monitoring 2" src="https://github.com/user-attachments/assets/c18ab239-f519-4944-b4f4-b0180718d79f" /><br />

<img width="1920" height="909" alt="Slow Link Review Monitoring 3" src="https://github.com/user-attachments/assets/ec50be13-4800-4164-bea4-92e60730adc3" /><br />

📸 **Extension load analysis Monitoring**

<img width="1920" height="909" alt="Extension load analysis Monitoring" src="https://github.com/user-attachments/assets/9d6ac707-8bcc-4b02-97f6-099ea209e5a5" />

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

📸 **Troubleshooting Using `gpresult`**

<img width="1920" height="909" alt="Troubleshooting Using `gpresult`" src="https://github.com/user-attachments/assets/e38dd093-cd92-44ca-9529-5074673378cf" /><br />

<img width="1920" height="909" alt="Troubleshooting Using `gpresult` 1" src="https://github.com/user-attachments/assets/3d511c00-8ba4-4d40-a538-3b1c90e3edde" /><br />

<img width="1920" height="909" alt="Troubleshooting Using `gpresult` 2" src="https://github.com/user-attachments/assets/018cd124-46a0-428a-bc93-1582dc9b0c76" /><br />

📸 **Event Viewer Logs**

<img width="1920" height="909" alt="Event Viewer Logs" src="https://github.com/user-attachments/assets/c033af7b-98bf-4f48-a8dc-30da1d3ac526" />

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

---

## 📁 10. Screenshot Storage

Each image corresponds to a step described in:<br /> 
📂 [`06-Screenshots/XXVI. Group-Policy-Deployment`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/tree/main/06-Screenshots/XXVI.%20Group-Policy-Deployment)
