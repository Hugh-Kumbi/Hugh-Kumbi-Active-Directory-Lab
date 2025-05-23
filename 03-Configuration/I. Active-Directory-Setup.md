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

📸 **Command Prompt With Ipconfig All Showing Domain Suffix**

![Command Prompt With Ipconfig all Showing Domain Suffix](https://github.com/user-attachments/assets/57373b59-666c-48ae-81fe-155efae12f53)

---

## 🗂️ 2. Organizational Unit (OU) Structure

I created the following OUs to organize domain objects:

```
hughdomain.local
├── Builtin
├── Computers
├── Domain Controllers
├── Employees 
  ├── CustomerSupport 
  ├── Finance 
  ├── Human Resources 
  ├── IT
  ├── Legal 
  ├── Marketing
  ├── Operations
  ├── ProductManagement
  ├── Research
  ├── Sales
├── ForeignSecurityPrincipals
├── Managed Service Accounts
├── Users
````
Each department OU will be used for GPO targeting and permission management.

📸 **Active Directory Users and Computers (ADUC) Showing OU Structure**

![Active Directory Users and Computers (ADUC) Showing OU Structure](https://github.com/user-attachments/assets/872fc031-2545-4e65-a806-2783ac4a7d0f)

---

## 👤 3. User Account Creation

Using both the **ADUC GUI** and **PowerShell**, I created domain user accounts:

### Example Users:
| Username            | Full Name        | Department       | OU Placement      |
|---------------------|------------------|------------------|-------------------|
| **mguzha**          | Mei Guzha        | Marketing        | Marketing         |
| **BUAdmin1**        | Backup Admin     | Admins           | Admins            |
| **BUAdmin2**        | Backup Admin1    | Admins           | Admins            |
| **lguzha**          | Lana Guzha       | Human Resources  | Human Resources   |
| **TechUser1**       | Tech User1       | IT               | IT Security       |
| **TechUser2**       | Tech User2       | IT               | IT Security       |

Passwords were set to expire and require change on first login (except admin accounts).

📸 **New User Creation Wizard in ADUC for Mei Guzha**

![New User Creation Wizard in ADUC for Mei Guzha](https://github.com/user-attachments/assets/17972dbf-d53a-423e-ad8e-aec894665864)

📸 **New User Creation Wizard in ADUC for Lana Guzha**

![New User Creation Wizard in ADUC for Lana Guzha](https://github.com/user-attachments/assets/7ebf1f4c-fff2-4f70-964f-bb0b986a8491)

📸 **New User Creation Wizard in ADUC for Tech User1**

![New User Wizard in ADUC 2](https://github.com/user-attachments/assets/ea7d9229-679f-49c5-ad46-7878d4deda95)

📸 **New User Creation Wizard in ADUC for Tech User1**

![New User Wizard in ADUC 3](https://github.com/user-attachments/assets/3b7eb3b4-7e3b-4992-9661-22b31bec18b9)

📸 **1500 Users Creation Using PowerShell Script**
  
![1500 Users Creation Using PowerShell Script](https://github.com/user-attachments/assets/caebe869-dd01-4ea1-80ba-6b149fd481a4)

![1500 Users Creation Using PowerShell Script 1](https://github.com/user-attachments/assets/98a98044-31d6-4790-b625-4363dfceada6)

📸 **1500 Users Creation Confirmation**

![1500 Users Creation Confirmation](https://github.com/user-attachments/assets/5f19de2f-512d-4e81-a225-a1dda4e9fec2)

📸 **Users Created in ADUC Confirmation**

[![Watch my video](https://img.youtube.com/vi/hIbdutpT678/0.jpg)](https://www.youtube.com/watch?v=hIbdutpT678)

---

## 👥 4. Group Creation and Nesting

I created security groups for access control and GPO scoping:

### Examples:
| Group Name                           | Type     | Scope  | Description                                       |
|--------------------------------------|----------|--------|---------------------------------------------------|
| **Administrators**                   | User     |        | Built-in; Admin privileges                        |
| **BUAdmin1**                         | User     |        | Admin privileges                                  |
| **BUAdmin2**                         | User     |        | Admin privileges                                  |
| **CustomerSupport-managers**         | Security | Global | Granted local admin on Customer Support PCs       |
| **Domain Admins**                    | Security | Global | Built-in; Admin privileges                        |
| **Finance-Managers**                 | Security | Global | Granted local admin on Finance PCs                |
| **Human Resources-Managers**         | Security | Global | Granted local admin on Human Resources PCs        |
| **IT-Managers**                      | Security | Global | Granted local admin on IT PCs                     |
| **IT-Support**                       | Security | Global | Granted local admin on IT Support PCs             |
| **IT-Security**                      | Security | Global | Granted local admin on IT Security PCs            |
| **Legal-Managers**                   | Security | Global | Granted local admin on Legal PCs                  |
| **Marketing-Managers**               | Security | Global | Granted local admin on Marketing PCs              |
| **Operations-Managers**              | Security | Global | Granted local admin on Operations PCs             |
| **ProductManagement-Managers**       | Security | Global | Granted local admin on Product Management PCs     |
| **Research & Development-Managers**  | Security | Global | Granted local admin on Research & Development PCs |
| **Sales-Managers**                   | Security | Global | Granted local admin on Sales PCs                  |

🔁 Group nesting was applied where relevant (e.g., IT-Support inside IT-Managers).

## 🏢 Properties Window Showing Group Membership

📸 **Administrators Group Membership**

![Administrators Group](https://github.com/user-attachments/assets/dda1b010-c4e9-49c8-8573-b80828c828b6)

📸 **Administrator Groups Membership**

![Administrator Groups Membership](https://github.com/user-attachments/assets/faf9342e-eb5a-47bf-b9db-bedbb7be36c0)

📸 **CustomerSupport Managers Membership**

![CustomerSupport Managers Membership](https://github.com/user-attachments/assets/8644ecc1-38fe-491c-b29a-5bbe5211fd2a)

📸 **Finance Managers Membership**

![Finance Managers Membership](https://github.com/user-attachments/assets/bfe1e641-fcb9-4302-ac34-bbdaa5d2907e)

📸 **Human Resources Managers Membership**

![Human Resources Managers Membership](https://github.com/user-attachments/assets/bed4e332-78f8-432b-94b8-12b28ff06d18)

📸 **IT Managers Membership**

![IT Managers Membership](https://github.com/user-attachments/assets/614200cd-9ae7-417b-ad09-a8c0fab7f24d)

📸 **IT Security Membership**

![IT Security Membership](https://github.com/user-attachments/assets/270d1c3f-28e7-4b1f-8472-010c09e4395c)

📸 **IT Support Membership**

![IT Support Membership](https://github.com/user-attachments/assets/78472e2f-69e8-4afc-a56b-bfee59bd6018)

📸 **Legal Managers Membership**

![Legal Managers Membership](https://github.com/user-attachments/assets/0863da7a-3792-4cf5-9906-8bc195a6111a)

📸 **Marketing Managers Membership**

![Marketing Managers Membership](https://github.com/user-attachments/assets/4d86390e-71b0-4f2b-bdc3-da20dc93d919)

📸 **Operations Managers Membership**

![Operations Managers Membership](https://github.com/user-attachments/assets/3da6ccb0-6f5d-41cf-bdbc-0123654faeb7)

📸 **Product Management Managers Membership**

![Product Management Managers Membership](https://github.com/user-attachments/assets/620f4eaa-ff6b-4318-8dd9-fab681181e06)

📸 **Research & Development Managers Membership**

![Research & Development Managers Membership](https://github.com/user-attachments/assets/6d0d9710-1ae1-4adc-b822-38e39f8ac39b)

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
📂 [`06-Screenshots/IV. Active-Directory-Setup.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/IV.%20Active-Directory-Setup/README.md)
