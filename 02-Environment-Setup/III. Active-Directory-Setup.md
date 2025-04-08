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

📸 **Screenshot suggestion:**
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

📸 **Screenshot suggestion:**
![Active Directory Users and Computers (ADUC) Showing OU Structure](https://github.com/user-attachments/assets/53747998-af92-4d02-9b9f-815be4aa7544)

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

📸 **Screenshot suggestion:**
![New User Wizard in ADUC](https://github.com/user-attachments/assets/8add7233-8b78-4811-b53f-fb6cd40f17ea)
  
![1500 users ps](https://github.com/user-attachments/assets/3a0f8681-6487-41ff-8e8e-ffd41e472df7)

![1550 Users confirmation](https://github.com/user-attachments/assets/41918c4d-817b-49d0-b289-0a12981fd397)

![Properties Window Showing Group Membership 1](https://github.com/user-attachments/assets/eefc81fc-e7b2-47c1-8e11-0a586920c30e)

![Properties Window Showing Group Membership 2](https://github.com/user-attachments/assets/74b83d52-7133-4c2e-8d83-4eb7533275ee)

![Properties Window Showing Group Membership 3](https://github.com/user-attachments/assets/c2ef91ea-40b6-4258-a2aa-9cdcfc5d39b0)

![Properties Window Showing Group Membership 4](https://github.com/user-attachments/assets/c8930467-c625-4f39-8ad5-4ff723566605)

![Properties Window Showing Group Membership 5](https://github.com/user-attachments/assets/22d6aa8c-329e-47a5-9d71-0a4ff90529d8)

![Properties Window Showing Group Membership 6](https://github.com/user-attachments/assets/7095a4b8-bf0b-4254-80fc-3d93b8c63ff0)

---

## 👥 4. Group Creation and Nesting

I created security groups for access control and GPO scoping:

### Examples:
| Group Name             | Type     | Scope     | Description                         |
|------------------------|----------|-----------|-------------------------------------|
| IT-Support             | Security | Global    | All IT support technicians          |
| HR-Managers            | Security | Global    | HR management staff                 |
| Domain Admins          | Security | Global    | Built-in; Admin privileges          |
| Local-Admins-Sales     | Security | Global    | Granted local admin on Sales PCs   |

Group nesting was applied where relevant (e.g., IT-Support inside Local-Admins-IT).

📸 **Screenshot suggestion:**
- Group creation wizard  
- Group membership list  
- Group policy delegation tab

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
