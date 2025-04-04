# 03-Configuration
## 03-Active Directory Setup
In this phase, I configured **Active Directory Domain Services (AD DS)** on Windows Server 2025, promoted the server to a **Domain Controller,** and joined the Windows 11 clients to the domain.

### Domain Controller Setup (WS-2025-DC)
**Domain Name:** `HUGHDOMAIN.LOCAL`
**Server Name:** `WIN-D2PQBCI88JQ`
**IP Address:**  `192.168.1.10`

### Steps Completed:
1. **Installed Active Directory Domain Services (AD DS)**

  * Used `Server Manager` → **Add Roles and Features**

  * Selected **Active Directory Domain Services** and **DNS Server**

2. **Promoted the server to a Domain Controller**

  * Configured a new **Forest** with the domain name `HUGHDOMAIN.LOCAL`

  * Set the **Directory Services Restore Mode (DSRM) password**

  * Configured **DNS** to support name resolution within the domain

3. **Verified Active Directory installation**

  * Used `dcdiag` to confirm DC health

  * Used `nslookup` to verify DNS resolution

  * Checked **Active Directory Users and Computers (ADUC)** for domain readiness

4. **Created Organizational Units (OUs)** to structure users and devices

  * `OU=Users` for domain user accounts

  * `OU=Computers` for domain-joined devices

  * `OU=Groups` for role-based access control

5. **Created test domain users** using PowerShell:

```powershell

New-ADUser -Name "Mei Guzha" -GivenName "Mei" -Surname "Guzha" -UserPrincipalName "mguzha@hughdomain.local" -SamAccountName "mguzha" -Path "OU=Users,DC=lab,DC=local" -AccountPassword (ConvertTo-SecureString "Chibanda20!" -AsPlainText -Force) -Enabled $true
```

## Joining Windows 11 Clients to the Domain
### Client Machines:

  * `AD-WIN11-01 (192.168.1.20)`

  * `AD-WIN11-02 (192.168.1.30)`

### Steps Completed:
1. **Set the correct DNS settings** on each client (`192.168.1.10`)

2. **Joined each client to the domain** (`HUGHDOMAIN.LOCAL`)

  * Opened Settings **→ System → About**

  * Clicked `Domain or Workgroup` → Entered HUGHDOMAIN.LOCAL

  * Provided **Domain Admin credentials** (`Administrator@HUGHDOMAIN.LOCAL`)

  * Restarted the system

3. **Verified domain membership**

  * Logged in using a **domain user account**

  * Checked `echo %USERDOMAIN%` in CMD to confirm

4. **Configured Group Policy (GPO) Updates**

  * Ran `gpupdate /force` on each client

  * Confirmed policies applied using *gpresult /r*

## Final Validation
✔ Checked connectivity using ping ad-dc-01.hughdomain.local

✔ Verified AD replication using repadmin /replsummary

✔ Tested login with a domain user on both Windows 11 clients

At this stage, the **Active Directory environment was fully operational,** with **centralized user authentication, device management, and group policy enforcement** in place.
