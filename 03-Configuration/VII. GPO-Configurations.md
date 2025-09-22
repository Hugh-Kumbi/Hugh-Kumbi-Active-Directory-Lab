# 🔧 Group Policy Configuration

This document outlines the key **Group Policy Objects (GPOs)** I created and linked to the domain to enforce security, user restrictions, and environment settings. These policies are critical for central management and enforcing compliance in a Windows enterprise environment.

---

## 🧱 1. Organizational Unit (OU) Structure

Before creating GPOs, I organized domain objects into appropriate **Organizational Units** for better control and delegation.

### OU Structure:
- `Domains`
  - `hughdomain.local`
- `AdminAccounts`
- `Domain Controllers`
- `Employees`
  - `Accounting`
  - `Customer Support`
  - `Finance`
  - `Human Resources`
  - `IT`
    - `ITSecurity`
    - `ITSupport` 
  - `Legal`
  - `Marketing`
  - `Operations`
  - `Product Management`
  - `Research`
  - `Sales`
- `Groups`
- `MeiVaultComputers`
- `MeiVaultServers`
- `ServiceAccounts`
- `Users`

📸 **Active Directory Users and Computers (ADUC) Showing OU Hierarchy**

<img width="1920" height="909" alt="Active Directory Users and Computers (ADUC) Showing OU Hierarchy" src="https://github.com/user-attachments/assets/3ff7c471-fba8-49c1-9438-7c0aaa92fa3a" /><br />

<img width="1920" height="909" alt="Active Directory Users and Computers (ADUC) Showing OU Hierarchy 1" src="https://github.com/user-attachments/assets/79a49d22-d88a-45a9-b41d-e9b45435384a" />

---

## ⚙️ 2. GPO Creation and Linking

Created and linked GPOs to the appropriate OUs using the **Group Policy Management Console (GPMC)**.

### GPOs Implemented:
| GPO Name                                                 | Linked To          | Purpose                                                                 |
|----------------------------------------------------------|--------------------|-------------------------------------------------------------------------|
| Account Lockout Policy                                   | Domain Root        | Mitigates brute-force password attacks by locking accounts after a specified number of failed login attempts, protecting against unauthorized access                                                             |
| Audit Policy                                             | Domain Root        | Tracks and logs specific user and system activities (e.g., logon/logoff, file access, policy changes) for security monitoring, forensic analysis, and compliance                                                |
| Auto Enrollment for Computer Certificate Policy          | Domain Root        | Automatically issues and manages digital certificates for domain-joined computers, enabling seamless use of technologies like IPsec, EFS, and wireless authentication                                        |
| Auto Enrollment Certificate for ITSecurity Users Policy  | ITSecurity         | Automatically issues specific digital certificates to members of the ITSecurity group, enabling secure authentication, email signing, and encryption for privileged users                                        |
| BitLocker DRA Deployment Policy                          | Domain Root        | Ensures that a Data Recovery Agent (DRA) certificate is backed up in Active Directory, allowing authorized IT personnel to recover data from BitLocker-encrypted drives if a password is lost or a user leaves   |
| BitLocker Encryption Policy                              | MeiVaultComputers  | Enforces full-disk encryption using BitLocker to protect data at rest   |
| Block VLC Media Player - AppLocker                       | Domain Root        | Prevent the use of unauthorized media applications                      |
| Browser Security Settings Policy                         | Domain Root        | Configure Microsoft Edge settings to enhance browser security           |
| Control Panel Restrictions                               | Employees          | Limit user access to control panel settings                             |
| Default Domain Controller Policy                         | Domain Controllers | Contains default critical authentication settings for the domain. It is modified to strengthen security policies (like Kerberos) specifically for domain controllers                                          |
| Default Domain Policy                                    | Domain Root        | Contains default settings for all users and computers in the domain. It is modified to establish baseline security settings, such as password policies, that apply domain-wide                                   |
| Deploy HughDomain-WinServer2025 Certificate Policy       | Domain Root        | Deploys a specific trusted root or intermediate certificate authority certificate to all domain members, ensuring they trust services and applications signed by this CA                                           |
| Desktop Wallpaper Policy                                 | Domain Root        | Standardize desktop appearance across all user devices                  |
| Disabling Unnecessary Windows Services Policy            | Domain Root        | Reduce attack surface by disabling non-essential services               |
| Drive Mappings Policy                                    | ITSecurity         | Assign network drives based on user or group membership                 |
| Folder Redirection Policy                                | ITSecurity         | Redirects the contents of key user folders (e.g., Documents, Desktop) from the local computer to a network share, ensuring data is centrally stored and backed up                                              |
| IPsec Authentication Policy                              | Domain Root        | Enforce secure communication through IPsec authentication               |
| Local Administrator Restrictions Policy                  | Employees          | Prevents standard user accounts from being added to the local administrators group on workstations, adhering to the principle of least privilege and reducing malware impact.                                   |
| Logon-Logoff Scripts Policy                              | Employees          | Run custom scripts during user logon and logoff events                  |
| Map Network Drives Policy                                | Employees          | Automatically connect users to shared network resources                 |
| Network Security Settings Policy                         | Domain Root        | Configures protocols like NTLM, LDAP, and SMB to use stronger security features (e.g., LDAP signing, SMB encryption) to protect network traffic from interception and relay attacks.                             |
| Password Policy                                          | Domain Root        | Defines requirements for user password complexity, length, age, and history to enforce strong authentication credentials and protect against password guessing.                                                  |
| Restricted Groups Policy                                 | Domain Root        | Define and enforce group membership for privileged roles                |
| Root CA Distribution Policy                              | Domain Root        | Uses Group Policy to automatically install the organization's trusted Root Certificate Authority certificate onto all domain-joined machines, ensuring they trust internally issued certificates                 |
| Security Scripts Policy                                  | Employees          | 	Executes custom scripts (e.g., for environment configuration, security checks, or compliance reporting) on user workstations to enforce security posture and operational standards                          |
| Software Deployment Google Chrome Policy                 | Domain Root        | Automate installation of approved web browser software                  |
| Start Menu and Taskbar Settings Policy                   | Domain Root        | Customize user interface elements for consistency and control           |
| Startup/Shutdown Scripts Policy                          | Employees          | Execute scripts during system startup and shutdown events               |
| Temp_Cleaned_DC_Policy                                   | Domain Controllers | Clears temporary files and caches on Domain Controllers                 |
| USB Restriction Policy                                   | MeiVaultComputers  | Block the use of USB storage devices to prevent data leakage            |
| User Folder Redirection Policy                           | Employees          | Redirect user data folders to centralized file servers                  |
| Win11 Security Policy | Domain Root                      | Domain Root        | Apply Windows 11-specific hardening configurations                      |
| Windows Defender Settings Policy                         | Domain Root        | Configure antivirus settings for enhanced endpoint protection           |
| Windows Firewall Settings Policy                         | Domain Root        | Enforce firewall rules to control inbound and outbound traffic          |

📸 **GPMC With List of GPOs**

<img width="1920" height="909" alt="GPMC With List of GPOs" src="https://github.com/user-attachments/assets/3e4e5d94-0192-4e77-b2fe-eeed535764d3" />

📸 **Link Status to Domain Root**

![Link Status to Domain Root](https://github.com/user-attachments/assets/8419880b-5c0e-4bca-a39e-d3c28cf0d956)

📸 **Link Status to Domain Controller**

![Link Status to Domain Controller](https://github.com/user-attachments/assets/1b625100-a06a-4aba-a13c-812f6016af31)

📸 **Link Status to Groups OU**

![Link Status to Groups OU](https://github.com/user-attachments/assets/439629b7-8078-450e-8756-7ec81a192a3c)

📸 **Link Status to Tech OU**

![Link Status to Tech OU](https://github.com/user-attachments/assets/4f1e9f37-e83f-4353-bea0-a0b7b3e51d34)

📸 **Link Status to IT Computers**

![Link Status to IT Computers](https://github.com/user-attachments/assets/e8c0540a-aac3-4f7a-acd3-c6c42398c65b)

---

## 🔁 3. GPO Enforcement & Inheritance

- Used **Enforced** flag for domain-wide security GPOs.
- Blocked inheritance on specific OUs where necessary to prevent unintended policy application.

📸 **GPMC Showing GPO Inheritance Settings**

![GPMC Showing GPO Inheritance Settings for Domain oot](https://github.com/user-attachments/assets/074de9ee-94c7-49cc-99be-05c6fa7346e2)

---

## 📤 4. GPO Replication Verification

Verified that GPOs were successfully replicated and applied:

### On Domain Controller:
- Checked Event Viewer for GroupPolicy logs under 📂 `Applications and Services Logs > Microsoft > Windows > GroupPolicy`.
- Ran:
```powershell
repadmin /syncall /AdeP
```

📸 **Event Viewer logs confirming GPO application**

![Event Viewer logs Confirming GPO Application](https://github.com/user-attachments/assets/2b27071d-d616-4de8-bb5d-932dfeff5ae7)

📸 **Command Line Results From Repadmin Syncall AdeP**

![Command Line Results From Repadmin Syncall AdeP](https://github.com/user-attachments/assets/e6cb722d-b5fc-41ca-973a-22f2f56adfc1)

### On Clients:
- Ran `gpupdate /force`
- Ran `gpresult /r`

📸 **Command Line Results From gpupdate**

![Command Line Results From gpupdate](https://github.com/user-attachments/assets/393227ba-3625-4c5f-b801-b0d39e827a24)

📸 **Command Line Results From gpresult**

![Group Policy Results 1](https://github.com/user-attachments/assets/6d3b0ed5-fea1-491e-94df-7df944c765e0)

![Grop Policy Results 2](https://github.com/user-attachments/assets/6bcddea7-d1d5-4e53-b2b6-20641a4e393b)

---

# 📁 6. Screenshot Storage
All screenshots related to GPOs should be saved in:<br />
📂 [`06-Screenshots/X. GPO-Configurations`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/tree/main/06-Screenshots/X.%20GPO-Configurations#readme)
