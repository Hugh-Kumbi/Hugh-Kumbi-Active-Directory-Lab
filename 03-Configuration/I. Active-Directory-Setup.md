# 🏢 Active Directory Setup

This section outlines how I configured **Active Directory Domain Services (AD DS)** on the Windows Server 2025 Domain Controller and organized the domain structure using **Organizational Units (OUs)**, **users**, and **security groups**.

---

## 🧱 1. Domain Creation

After installing the AD DS role on the server, I promoted it to a Domain Controller with the following settings:

- **Domain Name:** hughdomain.local  
- **NetBIOS Name:** HUGHDOMAIN  
- **Forest Functional Level:** Windows Server 2025  
- **Domain Functional Level:** Windows Server 2025  
- **DNS Server Role:** Installed and configured  
- **Global Catalog:** Enabled  
- **Directory Services Restore Mode (DSRM) Password:** Set securely  

📸 **Server Manager Summary Before Installation**

![Promoting Server to Domain Controller 5](https://github.com/user-attachments/assets/c6728cf2-d631-48f2-a867-65a3a0276cc1)

📸 **Domain Promotion Wizard Final Confirmation Screen**

![Domain Promotion Wizard Final Confirmation Screen](https://github.com/user-attachments/assets/a546e169-0eac-4ee6-85bf-0b825d36210c)

📸 **Command Prompt with Ipconfig all Showing Domain Suffix**

![Command Prompt With Ipconfig all Showing Domain Suffix](https://github.com/user-attachments/assets/57373b59-666c-48ae-81fe-155efae12f53)

---

## 🗂️ 2. Organizational Unit (OU) Structure

I created the following OUs to organize domain objects:

```
hughdomain.local
├── AdminAccounts
├── Builtin
├── Computers
├── Domain Controllers
├── Employees
  ├── Accounting
  ├── Customer Support 
  ├── Finance 
  ├── Human Resources 
  ├── IT
    ├── ITSecurity
    ├── ITSupport
  ├── Legal 
  ├── Marketing
  ├── Operations
  ├── Product Management
  ├── Research
  ├── Sales
├── ForeignSecurityPrincipals
├── Groups
├── Managed Service Accounts
├── MeiVaultComputers
├── MeiVaultServers
├── ServiceAccounts
├── Users
````
Each department OU will be used for GPO targeting and permission management.

📸 **Active Directory Users and Computers (ADUC) Showing OU Structure**

<img width="1920" height="909" alt="Active Directory Users and Computers (ADUC) Showing OU Structure1" src="https://github.com/user-attachments/assets/5d0ed0ed-c889-4dd1-8823-736d404f4b75" />

---

## 👤 3. User Account Creation

Using both the **ADUC GUI** and **PowerShell**, I created domain user accounts:

### Example Users:
| Username            | Full Name        | Department       | OU Placement      |
|---------------------|------------------|------------------|-------------------|
| **BUAdmin1**        | Backup Admin     | Admins           | Admins            |
| **BUAdmin2**        | Backup Admin1    | Admins           | Admins            |
| **lguzha**          | Lana Guzha       | IT               | IT Support        |
| **mguzha**          | Mei Guzha        | IT               | IT Support        |
| **TechUser1**       | Tech User1       | IT               | IT Security       |
| **TechUser2**       | Tech User2       | IT               | IT Security       |

Passwords were set to expire and require change on first login (except admin accounts).

📸 **New User Creation Wizard in ADUC for Mei Guzha**

<img width="1920" height="909" alt="New User Creation Wizard in ADUC for Mei Guzha" src="https://github.com/user-attachments/assets/40bcfe3d-53fc-4a3a-8228-9de1d2a50301" /><br />

📸 **New User Creation Wizard in ADUC for Lana Guzha**

<img width="1920" height="909" alt="New User Creation Wizard in ADUC for Lana Guzha" src="https://github.com/user-attachments/assets/0f62ff2c-42a5-437e-b8d7-f3de214683ad" /><br />

📸 **New User Creation Wizard in ADUC for Tech User1**

<img width="1920" height="909" alt="New User Creation Wizard in ADUC for Tech User1" src="https://github.com/user-attachments/assets/d29be4ee-a9bd-466c-8966-4635c6d7c894" /><br />

📸 **New User Creation Wizard in ADUC for Tech User2**

<img width="1920" height="909" alt="New User Creation Wizard in ADUC for Tech User2" src="https://github.com/user-attachments/assets/a5535c30-b06c-4ea4-b3b3-75dcb93dc5c3" /><br />

📸 **1500 Users Creation Using PowerShell Script**
  
<img width="1920" height="909" alt="1500 Users Creation Using PowerShell Script" src="https://github.com/user-attachments/assets/18ed5bfa-9d2c-49be-8691-d968c44b093c" /><br />

<img width="1920" height="909" alt="1500 Users Creation Using PowerShell Script 1" src="https://github.com/user-attachments/assets/7a80ea6c-0989-4eaf-b51a-4595c063be04" /><br />

<img width="1920" height="909" alt="1500 Users Creation Using PowerShell Script 2" src="https://github.com/user-attachments/assets/a6a98e45-7ca5-4ca6-8a4b-a57398d5f979" /><br />

<img width="1920" height="909" alt="1500 Users Creation Using PowerShell Script 3" src="https://github.com/user-attachments/assets/77b637f3-e853-4c0e-9763-627cd1a5c9db" /><br />

<img width="1920" height="909" alt="1500 Users Creation Using PowerShell Script 4" src="https://github.com/user-attachments/assets/705dc79c-e2e0-448a-af09-36f40d737298" /><br />

📸 **1500 Users Creation Confirmation**

<img width="1920" height="909" alt="1500 Users Creation Using PowerShell Script 5" src="https://github.com/user-attachments/assets/6ad17580-4509-48e4-a8b1-9c7e922f9a6d" /><br />

📸 **Users Created in ADUC Confirmation**

[![Users Created in ADUC Confirmation](https://img.youtube.com/vi/9uszmZNl5tM/0.jpg)](https://www.youtube.com/watch?v=9uszmZNl5tM)

---

## 👥 4. Group Creation and Nesting

I created security groups for access control and GPO scoping:

### Examples:
| Group Name                           | Type     | Scope  | Description                                       |
|--------------------------------------|----------|--------|---------------------------------------------------|
| **Administrators**                   | User     |        | Built-in; Admin privileges                        |
| **BUAdmin1**                         | User     |        | Admin privileges                                  |
| **BUAdmin2**                         | User     |        | Admin privileges                                  |
| **CustomerSupport-managers**         | Security | Global | Granted local admin on customer support PCs       |
| **Domain Admins**                    | Security | Global | Built-in; Admin privileges                        |
| **Accounting-Managers**              | Security | Global | Granted local admin on accounting PCs             |
| **CustomerSupport-Managers**         | Security | Global | Granted local admin on customer support PCs       |
| **Finance-Managers**                 | Security | Global | Granted local admin on finance PCs                |
| **Human Resources-Managers**         | Security | Global | Granted local admin on human resources PCs        |
| **IT-Managers**                      | Security | Global | Granted local admin on IT management PCs          |
| **ITSecurity-Managers**              | Security | Global | Granted local admin on IT security PCs                     |
| **ITSupport-Managers**               | Security | Global | Granted local admin on IT support PCs             |
| **Legal-Managers**                   | Security | Global | Granted local admin on legal PCs                  |
| **Marketing-Managers**               | Security | Global | Granted local admin on marketing PCs              |
| **Operations-Managers**              | Security | Global | Granted local admin on operations PCs             |
| **ProductManagement-Managers**       | Security | Global | Granted local admin on product Management PCs     |
| **Research-Managers**                | Security | Global | Granted local admin on research & Development PCs |
| **Sales-Managers**                   | Security | Global | Granted local admin on sales PCs                  |

🔁 Group nesting was applied where relevant (e.g., IT-Support inside IT-Managers).

## 🏢 Properties Window Showing Group Membership

📸 **Administrators Group Membership**

<img width="1920" height="909" alt="Administrator Groups Membership" src="https://github.com/user-attachments/assets/21761d52-ac3e-4603-a374-98d956a9d09f" /><br />

📸 **Domain Administrators Groups Membership**

<img width="1920" height="909" alt="Domain Administrators Group Membership" src="https://github.com/user-attachments/assets/ef2c00b3-9649-4be7-b461-a6aa4a090fc6" /><br />

📸 **Enterprise Administrators Groups Membership**

<img width="1920" height="909" alt="Enterprise Administrators Group Membership" src="https://github.com/user-attachments/assets/d1062929-f6c2-4403-a5db-1d3a87986588" /><br />

📸 **Accounting Managers Membership**

<img width="1920" height="909" alt="Accounting Managers Membership" src="https://github.com/user-attachments/assets/d025394d-6424-4d76-a8e0-ebea532e36cb" /><br />

📸 **CustomerSupport Managers Membership**

<img width="1920" height="909" alt="CustomerSupport Managers Membership" src="https://github.com/user-attachments/assets/6931f596-b8d3-4596-8d24-df7844b5b5e0" /><br />

📸 **Finance Managers Membership**

<img width="1920" height="909" alt="Finance Managers Membership" src="https://github.com/user-attachments/assets/3c34f08f-672f-4590-9224-9d543c90b080" /><br />

📸 **Human Resources Managers Membership**

<img width="1920" height="909" alt="Human Resources Managers Membership" src="https://github.com/user-attachments/assets/956d9e04-f349-44f4-a2e6-750992814e49" /><br />

📸 **IT Managers Membership**

<img width="1920" height="909" alt="IT Managers Membership" src="https://github.com/user-attachments/assets/26df0a5e-789c-4147-9f79-c49d155705f1" /><br />

📸 **IT Security Membership**

<img width="1920" height="909" alt="IT Security Managers Membership" src="https://github.com/user-attachments/assets/6ded392e-9b9e-4dfc-bd13-5e4547cdc748" /><br />

📸 **IT Support Membership**

<img width="1920" height="909" alt="IT Support Managers Membership" src="https://github.com/user-attachments/assets/cc286ad6-01fd-48b5-9ac7-6a8702c8b530" /><br />

📸 **Legal Managers Membership**

<img width="1920" height="909" alt="Legal Managers Membership" src="https://github.com/user-attachments/assets/4dfa1fa9-3fdf-49b9-88b3-4f68fc4046fb" /><br />

📸 **Marketing Managers Membership**

<img width="1920" height="909" alt="Marketing Managers Membership" src="https://github.com/user-attachments/assets/27e4146b-b3ca-44cf-9abb-c357c7d09a6d" /><br />

📸 **Operations Managers Membership**

<img width="1920" height="909" alt="Operations Managers Membership" src="https://github.com/user-attachments/assets/782c9696-ae09-456c-ac36-eb607df0a2a0" /><br />

📸 **Product Management Managers Membership**

<img width="1920" height="909" alt="Product Managers Membership" src="https://github.com/user-attachments/assets/6533b3d0-4cd0-422e-8c07-ffa8ecb3431b" /><br />

📸 **Research Managers Membership**

<img width="1920" height="909" alt="Research Managers Membership" src="https://github.com/user-attachments/assets/afe52544-e566-4499-b211-5d77734c48f4" /><br />

📸 **Sales Managers Membership**

<img width="1920" height="909" alt="Sales Managers Membership" src="https://github.com/user-attachments/assets/ab8575f6-208c-4cd4-b01b-7a80c77224bf" /><br />

---

## 🧪 5. Validation & Testing

To confirm everything worked:

- Logged in as a domain user on a Windows 11 client  
- Verified group memberships and access rights  
- Ran `gpresult /r` to ensure correct GPO application  
- Ensured all created objects appeared correctly in ADUC

📸 **Login Screen Showing Domain User for `AD-WIN11-01`**

![Login Screen Showing Domain User for AD-WIN11-01](https://github.com/user-attachments/assets/0bc7e673-9b66-45c8-aeec-09678c7076f4)

📸 **Output From `whoami` Command for `AD-WIN11-01`**

![Output From whoami Command for `AD-WIN11-01](https://github.com/user-attachments/assets/028472e8-4048-4d0e-9be9-13069ca425ab)

📸 **Output From `gpresult` Command for `AD-WIN11-01`**

![Output From gpresult Command for AD-WIN11-01](https://github.com/user-attachments/assets/1f63b1dc-52ec-4913-9e2a-b11c4a455109)

![Output From gpresult Command for AD-WIN11-01 1](https://github.com/user-attachments/assets/b52e482c-cd8a-47cd-a5eb-638d9abee787)
 
📸 **Login Screen Showing Domain User for `AD-WIN11-02`**

![Login Screen Showing Domain User for AD-WIN11-02](https://github.com/user-attachments/assets/e0b5123f-e3d2-4858-855d-e1b3eb70aa28)

📸 **Output From `whoami` Command for `AD-WIN11-02`**

![Output From whoami Command for `AD-WIN11-02](https://github.com/user-attachments/assets/30cd62c0-77ca-4091-b74c-fc5ae0adf6ba)

📸 **Output From `gpresult` Command for `AD-WIN11-02`**

![Output From gpresult Command for AD-WIN11-02](https://github.com/user-attachments/assets/d7c53c8d-9977-4165-9594-ad4d9ac1f839)

![Output From gpresult Command for AD-WIN11-02 1](https://github.com/user-attachments/assets/8a76d089-c683-4859-8674-7665a45e2681)

---

## 📁 6. Screenshot Storage

All screenshots for this section should be placed in:  
📂 [`06-Screenshots/IV. Active-Directory-Setup`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/IV.%20Active-Directory-Setup/README.md)
