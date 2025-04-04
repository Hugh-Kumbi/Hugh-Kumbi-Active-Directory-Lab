# 05-User & Group Management
This section focused on creating, organizing, and managing domain users and groups to simulate a realistic enterprise environment. Proper user and group management is essential for controlling access, delegating permissions, and streamlining administrative tasks in any Active Directory setup.

## User Account Creation
I created multiple test users to represent staff across different departments. Each user was added to the appropriate Organizational Unit (OU) and assigned a secure password following domain policy requirements.

### Example Users:
| Name | Username | Department | OU |
| :- | :- | :- | :- |
| Alice Thompson | athompson | Sales | Sales |
| Brian Carter | bcarter | IT | IT |
| Carla Moreno | cmoreno | Marketing | Marketing |
| David Wu | dwu | HR | HR |

Each account was configured with:

  * Password never set to expire (for lab testing)

  * "User must change password at next logon" option disabled

  * Descriptive fields (Full Name, Department, Job Title)

## Group Creation and Membership Assignment
I created security groups to simplify resource access control and Group Policy targeting:

### Example Groups:
| Group Name | Scope | Purpose |
| :- | :- | :- |
| `Sales_Users` | Global | Shared folder and drive access |
| `IT_Admins` | Global | Elevated permissions and RDP |
| `HR_ReadOnly` | Global | View-only access to HR data |

Group membership was managed using the **"Member Of"** tab in Active Directory Users and Computers (ADUC) or via PowerShell scripts.

## Role-Based Access Control (RBAC)
By following the **principle of least privilege,** I ensured users only received the access required for their job functions. For example:

  * `Sales_Users` were granted read/write access to the `\\DC01\SalesShare` network folder.

  * `IT_Admins` had remote desktop rights and local admin rights on Windows 11 clients.

  * `HR` users could access HR files but were restricted from editing them.

## PowerShell Automation
To simulate an enterprise workflow, I also experimented with PowerShell scripting to bulk-create users and add them to groups:

```
powershell

Import-Csv "users.csv" | ForEach-Object {
    New-ADUser -Name $_.Name -SamAccountName $_.Username -UserPrincipalName "$($_.Username)@lab.local" `
    -AccountPassword (ConvertTo-SecureString "P@ssw0rd123" -AsPlainText -Force) -Enabled $true `
    -Path "OU=$($_.Department),DC=lab,DC=local"
    
    Add-ADGroupMember -Identity "$($_.Department)_Users" -Members $_.Username
}
```

## Outcome
Through structured user and group creation, I established a **scalable identity management framework** that supports:

  * Easy assignment of permissions via group memberships

  * Clear separation of duties and department roles

  * Efficient GPO targeting for specific teams
