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

📸 **Screenshot:**
![Server Manager Summary After Installation](https://github.com/user-attachments/assets/0a4ce9a7-3f9b-46be-b130-2a7a1a6a0546)

![Domain Promotion Wizard Final Confirmation Screen](https://github.com/user-attachments/assets/72f95f6f-0c87-4a91-baac-9e6bbaca6d1e)
  
![Command Prompt With Ipconfig All Showing Domain Suffix](https://github.com/user-attachments/assets/154b55df-b766-4eaa-84db-e29f4f29c926)

---

## 🗂️ 2. Organizational Unit (OU) Structure

I created the following OUs to organize domain objects:

```
HUGHDOMAIN.LOCAL
├── Computers
├── Employees 
├── ITSupportComputers 
├── Tech 
  ├── Accounting 
  ├── HR 
  ├── IT 
  ├── IT Computers
  ├── IT Security 
  ├── Marketing
  ├── IT Support 
├── Users
````
Each department OU will be used for GPO targeting and permission management.

📸 **Screenshot:**
![Active Directory Users and Computers (ADUC) Showing OU Structure](https://github.com/user-attachments/assets/6262a4ca-6fa4-4520-acd4-4b8e8ab41435)

---

## 👤 3. User Account Creation

Using both the **ADUC GUI** and **PowerShell**, I created domain user accounts:

### Example Users:
| Username        | Full Name        | Department | OU Placement |
|-----------------|------------------|------------|--------------|
| mguzha          | Mei Guzha        | Marketing  | Marketing    |
| BackupAdmin     | Backup Admin     | Admins     | Admins       |
| BackupAdmin1    | Backup Admin1    | Admins     | Admins       |
| lguzha          | Lana Guzha       | HR         | HR           |
| TechUser1       | Tech User1       | IT         | IT Security  |
| TechUser2       | Tech User2       | IT         | IT Security  |

Passwords were set to expire and require change on first login (except admin accounts).

📸 **Screenshot:**
![New User Wizard in ADUC](https://github.com/user-attachments/assets/8add7233-8b78-4811-b53f-fb6cd40f17ea)
  
![1500 users ps](https://github.com/user-attachments/assets/3a0f8681-6487-41ff-8e8e-ffd41e472df7)

![1550 Users confirmation](https://github.com/user-attachments/assets/41918c4d-817b-49d0-b289-0a12981fd397)

![Properties Window Showing Group Membership 1](https://github.com/user-attachments/assets/750d0033-adc4-4796-9495-ef65e5c7ef9a)

![Properties Window Showing Group Membership 2](https://github.com/user-attachments/assets/0d027de8-aea2-4dbe-b8c7-9d6fa6c8c1fe)

![Properties Window Showing Group Membership 3](https://github.com/user-attachments/assets/fa4aaaca-dc8b-4601-83ed-b3edd8e0a3ba)

![Properties Window Showing Group Membership 4](https://github.com/user-attachments/assets/03dd0b50-7654-499c-9d3d-49f81ba01d96)

![Properties Window Showing Group Membership 5](https://github.com/user-attachments/assets/528d7bfa-47e0-40d8-8444-346c43afe7d1)

![Properties Window Showing Group Membership 6](https://github.com/user-attachments/assets/1afdb14d-07ae-4fc4-9a57-adf4c1f74c29)

---

## 👥 4. Group Creation and Nesting

I created security groups for access control and GPO scoping:

### Examples:
| Group Name             | Type     | Scope     | Description                         |
|------------------------|----------|-----------|-------------------------------------|
| Accounting-Managers    | Security | Global    | All IT support technicians          |
| Administrators         | User     |           | HR management staff                 |
| BackupAdmin            | User     |           |  Built-in; Admin privileges         |
| BackupAdmin1           | User     |           |  Granted local admin on Sales PCs   |
| Domain Admins          | Security | Global    | All IT support technicians          |
| HR-Managers            | Security | Global    | HR management staff                 |
| IT-Managers            | Security | Global    | Built-in; Admin privileges          |
| IT-Support             | Security | Global    | Granted local admin on Sales PCs    |
| Marketing-Managers     | Security | Global    | Built-in; Admin privileges          |
| TechUsers              | Security | Global    | Granted local admin on Sales PCs    |

Group nesting was applied where relevant (e.g., IT-Managers inside TechUsers).

📸 **Screenshot:**
![Group membership list 1](https://github.com/user-attachments/assets/2470f069-fe22-4618-9a8c-0123fa81c908)

![Group membership list 2](https://github.com/user-attachments/assets/02fd4efb-c704-4c9f-b164-3101a83520f2)

![Group membership list 3](https://github.com/user-attachments/assets/78d4c7b6-2e8a-43d5-8df2-d0c625b1461f)

![Group membership list 4](https://github.com/user-attachments/assets/9a4019a6-4c28-4a30-90f0-85928482d508)

![Group membership list 5](https://github.com/user-attachments/assets/9d574d18-e909-425b-b8bf-15371ea1359c)

![Group membership list 6](https://github.com/user-attachments/assets/01248bf9-b859-4d15-a2f0-fc6f6b9dd8c4)

![Group membership list 7](https://github.com/user-attachments/assets/ef900dac-6ba1-45b5-8310-1c2ab5f802ae)

![Group membership list 8](https://github.com/user-attachments/assets/fc273d96-6ca6-4962-b937-68a4ddd93828)

![Group membership list 12](https://github.com/user-attachments/assets/fe11e96c-65ab-4151-908b-ef91642f448e)

![Group membership list 9](https://github.com/user-attachments/assets/f98a6845-5241-4eeb-bd01-034972ce1a6e)

![Group membership list 10](https://github.com/user-attachments/assets/38c5bd87-cfe1-49a2-938b-4d7ece8b2ee2)

![Group membership list 11](https://github.com/user-attachments/assets/001c1f8b-fc68-4bb1-959e-93ff26b55caa)

---

## 🧪 5. Validation & Testing

To confirm everything worked:

- Logged in as a domain user on a Windows 11 client  
- Verified group memberships and access rights  
- Ran `gpresult /r` to ensure correct GPO application  
- Ensured all created objects appeared correctly in ADUC

📸 **Screenshot suggestion:**
- Login screen showing domain user  
- `whoami` and `gpresult /r` results in Command Prompt or PowerShell

---

## 📁 Screenshot Storage

All screenshots for this section should be placed in:  
📂 `06-Screenshots/Active-Directory-Setup/`

Use relative image links like:

```md
![OU Structure](../../06-Screenshots/Active-Directory-Setup/ou-structure.png)
