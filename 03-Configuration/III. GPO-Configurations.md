# 🔧 Group Policy Configuration

This document outlines the key **Group Policy Objects (GPOs)** I created and linked to the domain to enforce security, user restrictions, and environment settings. These policies are critical for central management and enforcing compliance in a Windows enterprise environment.

---

## 🧱 1. Organizational Unit (OU) Structure

Before creating GPOs, I organized domain objects into appropriate **Organizational Units** for better control and delegation.

### OU Structure:
- `Domain Controllers`
- `Workstations`
- `AdminUsers`
- `StandardUsers`

📸 **Screenshot:**
![Active Directory Users and Computers (ADUC) Showing OU Hierarchy](https://github.com/user-attachments/assets/f58420e2-e67f-497b-9862-ce4a8be2a78a)

---

## ⚙️ 2. GPO Creation and Linking

Created and linked GPOs to the appropriate OUs using the **Group Policy Management Console (GPMC)**.

### GPOs Implemented:
| GPO Name                     | Linked To           | Purpose                                 |
|------------------------------|---------------------|-----------------------------------------|
| USB Restriction Policy       | Workstations        | Disable removable storage               |
| RDP Restriction Policy       | Domain Controllers  | Allow RDP for Domain Admins only        |
| Password Policy              | Domain Root         | Enforce complex password rules          |
| Account Lockout Policy       | Domain Root         | Prevent brute-force attacks             |
| Audit Policy                 | Domain Root         | Track critical system/user activity     |
| Folder Redirection Policy    | StandardUsers       | Redirect user folders to server share   |
| Drive Mappings Policy        | StandardUsers       | Map network drives                      |
| Logon Scripts Policy         | StandardUsers       | Execute scripts at logon/logoff         |
| Firewall Policy              | Domain Root         | Harden network security                 |
| Service Configuration Policy | Domain Root         | Disable unnecessary services            |

📸 **Screenshot:**
- GPMC with list of GPOs  
- Link status to respective OUs

---

## 🔁 3. GPO Enforcement & Inheritance

- Used **Enforced** flag for domain-wide security GPOs (e.g., Password Policy).
- Blocked inheritance on specific OUs where necessary to prevent unintended policy application.
- Used **WMI Filtering** and **Security Filtering** for targeted GPO deployment.

📸 **Screenshot:**
- GPMC showing GPO inheritance settings  
- Example of WMI or security filter applied

---

## 📤 4. GPO Replication Verification

Verified that GPOs were successfully replicated and applied:

### On Domain Controller:
```powershell
repadmin /syncall /AdeP
```

### On Clients:
- gpupdate /force
- gpresult /r
Checked Event Viewer for GroupPolicy logs under Applications and Services Logs > Microsoft > Windows > GroupPolicy.

📸 **Screenshot:**
- Command line results from gpupdate
- Command line results from gpresult

![Command Line Results From Repadmin Syncall AdeP](https://github.com/user-attachments/assets/e6cb722d-b5fc-41ca-973a-22f2f56adfc1)

- Event Viewer logs confirming GPO application

### 📁 Screenshot Storage
All screenshots related to GPOs should be saved in:
📂 [`06-Screenshots/GPO-Configurations/GPMC GPO List`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/GPO-Configurations/VI.%20GPMC%20GPO%20List.md)
