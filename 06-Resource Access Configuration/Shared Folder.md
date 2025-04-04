# 06-Resource Access Configuration
In this section, I configured shared folders, mapped network drives, and applied NTFS and share-level permissions to simulate real-world enterprise resource access. Properly configuring resource access ensures that sensitive data is **only available to authorized users and groups,** in line with the principle of least privilege.

## Shared Folder Setup
Using the domain controller, I created and shared several departmental folders on a dedicated data drive (`D:\Shares`). These folders were then made available across the network for corresponding teams.

### Example Shared Folders:
Folder Path | Share Name | Description
| :- | :- | :- |
| `D:\Shares\Sales` | `SalesShare | Sales department resources |
| `D:\Shares\IT` | `ITShare` | Tools and scripts for IT |
| `D:\Shares\HR` | `HRShare` | Confidential HR documents |

Each folder was shared using the **Advanced Sharing** dialog, with access permissions configured for specific AD security groups (e.g., `Sales_Users`, `IT_Admins`).

## NTFS & Share-Level Permissions
I applied a **defense-in-depth** approach by combining **share permissions** with **NTFS file system permissions** to enforce access control.

### Example: SalesShare Permissions
* **Share Permissions:**

Sales_Users – Full Control

* **NTFS Permissions:**

  * `Sales_Users` – Modify

  * `Authenticated Users` – Deny (explicit block for unauthorized access)

This ensured that only domain users in the `Sales_Users` group could access and modify the contents of the folder from a networked client.

## Drive Mapping for Clients
To simplify access for end users, I configured **mapped drives** via Group Policy Preferences:

  * `\\DC01\SalesShare` mapped to `S:` for Sales users

  * `\\DC01\ITShare` mapped to `I:` for IT staff

  * `\\DC01\HRShare` mapped to `H:` for HR users

This was applied using a **GPO linked to each department’s OU,** allowing users to see their assigned drives upon logging in to a domain-joined workstation.

## Outcome
By implementing resource access controls through shared folders and mapped drives, I was able to:

  * Limit data access based on user roles

  * Provide seamless file access to department users

  * Enforce strict control over sensitive directories like HR
