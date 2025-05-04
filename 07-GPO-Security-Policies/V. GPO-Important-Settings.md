# 📘 Group Policy Important Settings Guide

This guide outlines the essential Group Policy settings I configured to align with security baselines, ensure corporate compliance, and optimize user experience in a Windows enterprise environment.

---

## 🔐 Security Baseline Settings

### 🔑 Password Policies

**Path:** 📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Account Policies > Password Policy`

📸 **Password Policies Settings**

![Password Policies](https://github.com/user-attachments/assets/384e6c74-e870-46fd-992d-ce69aa88be93)


| Setting                                             | Value                   |
|-----------------------------------------------------|-------------------------|
| Enforce password history                            | 24 passwords remembered |
| Maximum password age                                | 90 days                 |
| Minimum password age                                | 1 day                   |
| Minimum password length                             | 14 characters           |
| Password must meet complexity requirements          | Enabled                 |
| Store passwords using reversible encryption         | Disabled                |

---

### 🚫 Account Lockout Policies

**Path:** 📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Account Policies > Account Lockout Policy`

📸 **Account Lockout Policies Settings**

![Account Lockout Policies](https://github.com/user-attachments/assets/dcee3079-fea0-4fb0-80c2-65e6d9b6e5a1)

| Setting                                    | Value              |
|--------------------------------------------|--------------------|
| Account lockout duration                   | 30 minutes         |
| Account lockout threshold                  | 5 invalid attempts |
| Reset account lockout counter after        | 30 minutes         |

---

### 👤 User Rights Assignment

**Path:** 📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Local Policies > User Rights Assignment`

📸 **User Rights Assignment Settings**

![User Rights Assignment](https://github.com/user-attachments/assets/7a149d67-d761-4a57-9f2a-b7d6f97b2fd9)

![User Rights Assignment](https://github.com/user-attachments/assets/439c855e-43ea-4c5e-9e3a-7ce91efe1139)


| Setting                                         | Assigned To                                                                                                                      |
|-------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------|
| Access this computer from the network           | Authenticated Users                                                                                                              |
| Allow log on locally                            | Administrators, HUGHDOMAIN\Administrator, HUGHDOMAIN\BackupAdmin, HUGHDOMAIN\BackupAdmin1, Domain Users, Users                   |
| Allow log on through Remote Desktop Services    | Administrator, Administrators, HUGHDOMAIN\Administrator, HUGHDOMAIN\BackupAdmin, HUGHDOMAIN\BackupAdmin1, Remote Desktop Users   |
| Deny access to this computer from the network   | Local Admins, Guest                                                                                                              |
| Deny log on locally                             | Guest                                                                                                                            |
| Log on as a batch job                           | Administrators, HUGHDOMAIN\BackupAdmin, HUGHDOMAIN\BackupAdmin1                                                                  |
| Log on as a service                             | Network Service, Local Service                                                                                                   |
| Shut down the system                            | Administrators, HUGHDOMAIN\BackupAdmin, HUGHDOMAIN\BackupAdmin1                                                                  |

---

### 🛡️ Security Options

**Path:** 📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Local Policies > Security Options`

📸 **Security Options Settings**

![Security Options](https://github.com/user-attachments/assets/61a85dad-1038-4f0d-9965-0a27e57e93ea)

![Security Options 2](https://github.com/user-attachments/assets/f9166e44-8d35-40e3-a373-7c00e4170b5e)


| Setting                                                                    | Value                                                                                                       |
|--------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
| Interactive logon: Do not display last user name                                                                         | Enabled                                                       |
| Microsoft network client: Digitally sign communications (always)                                                         | Enabled                                                       |
| Microsoft network client: Digitally sign communications (if server agrees)                                               | Enabled                                                       |
| Microsoft network server: Digitally sign communications (always)                                                         | Enabled                                                       |
| Microsoft network server: Digitally sign communications (if client agrees)                                               | Enabled                                                       |
| Network security: LAN Manager authentication level                                                                       | Send NTLMv2 response only. Refuse LM & NTLM                   |
| Network security: Minimum session security for NTLM SSP based (including secure RPC) clients                             | Require NTLMv2 session security, Require 128-bit encryption   |
| Network security: Minimum session security for NTLM SSP based (including secure RPC) server                              | Require NTLMv2 session security, Require 128-bit encryption   |
| User Account Control: Behaviour of the elevation prompt for administrators in Admin Mode                                 | Prompt for consent on secure desktop                          |
| User Account Control: Behaviour of the elevation prompt for administrators running with enhanced privilege protection    | Prompt for consent on secure desktop                          |
| User Account Control: Run all administrators in Admin Approval Mode                                                      | Enabled                                                       |
---

## 🦠 Windows Defender Settings

### 🛡️ Microsoft Defender Antivirus

**Path:** 📂 `Computer Configuration > Policies > Administrative Templates > Windows Components > Microsoft Defender Antivirus`

📸 **Windows Defender Settings**

![Windows Defender Settings](https://github.com/user-attachments/assets/644f5eff-899c-4120-aae2-927805964de4)

📸 **Windows Defender Settings**

![Windows Defender Settings 1](https://github.com/user-attachments/assets/5f969e39-ce5c-4b7b-b706-a60aa4116f64)

📸 **Windows Defender Settings**

![Windows Defender Settings 2](https://github.com/user-attachments/assets/a2fb5fff-3a20-402e-9cb4-de73cc0fae87)

📸 **Windows Defender Settings**

![Windows Defender Settings 3](https://github.com/user-attachments/assets/0106bdfd-bec0-410c-a1ef-4cc9baac084a)

📸 **Windows Defender Settings**

![Windows Defender Settings 4](https://github.com/user-attachments/assets/f4e5c54f-a83d-40df-a251-aebd89bf989c)


| Setting                                                  | Value             |
|----------------------------------------------------------|-------------------|
| Join Microsoft Maps                                      | Enabled           |
| Configure removal of items from Quarantine folder        | Enabled           |
| Turn off real-time protection                            | Disabled          |
| Turn on behaviour monitoring                             | Enabled           |
| Scan all downloaded file and attachments                 | Enabled           |
| Monitor file and program activity on your computer       | Enabled           |
| Scan removable drives                                    | Enabled           |
| Specify the scan type ro use for a scheduled scan        | 2 - Full scan     |
| Specify the day of the week to run a scheduled scan      | Enabled           |
| Specify the time of day to run a scheduled scan          | Enabled           |
| Turn off Microsoft Defender Antivirus                    | Disabled          |

---

### 🔥 Windows Defender Firewall

**Path:** 📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Windows Defender Firewall with Advanced Security`

📸 **Windows Defender Firewall Settings**

![Windows Defender Firewall Settings](https://github.com/user-attachments/assets/05a7a557-cff8-4867-9eec-de6c2bd58ac2)

📸 **Windows Defender Firewall Settings**

![Windows Defender Firewall Settings 1](https://github.com/user-attachments/assets/c60c8387-2024-4d04-af00-bb2ef0eabce3)

📸 **Windows Defender Firewall Settings**

![Windows Defender Firewall Settings 2](https://github.com/user-attachments/assets/67d4f7a1-9400-4a32-af41-f835e7965558)


| Profile Type     | Firewall State | Inbound Connections  | Outbound Connections  |
|------------------|----------------|----------------------|-----------------------|
| Domain Profile   | On             | Block (default)      | Allow (default)       |
| Private Profile  | On             | Block (default)      | Allow (default)       |
| Public Profile   | On             | Block (default)      | Allow (default)       |

---

## 🖥️ Desktop and Start Menu Settings

### 🖼️ Desktop Settings

**Path:** 📂 `User Configuration > Policies > Administrative Templates > Desktop`

📸 **Xxxxxxxxxxxxx**

![Desktop Settings Screenshot](../06-Screenshots/07-Desktop-StartMenu.png)

- **Desktop Wallpaper:** Set to corporate wallpaper
- **Desktop Icons:** Control icons on desktop
- **Screen saver:** Enabled with 15-minute timeout and password protection

### 📋 Start Menu and Taskbar

**Path:** `User Configuration > Policies > Administrative Templates > Start Menu and Taskbar`

📸 **Xxxxxxxxxxxxx**

![Start Menu and Taskbar Screenshot](../06-Screenshots/07-Desktop-StartMenu.png)

- Remove access to taskbar context menus: Disabled  
- Remove "Search the Internet" link: Enabled  
- Do not allow pinning items in Jump Lists: Disabled  
- Turn off user tracking: Enabled

---

## 🔄 Windows Update Settings

### 🔧 Windows Update for Business

**Path:** `Computer Configuration > Policies > Administrative Templates > Windows Components > Windows Update > Windows Update for Business`

📸 **Xxxxxxxxxxxxx**

![Windows Update Screenshot](../06-Screenshots/08-Windows-Update.png)

| Setting                                              | Value                         |
|------------------------------------------------------|-------------------------------|
| Preview Builds and Feature Updates                   | Enabled, Semi-Annual, 30 days |
| Quality Updates                                      | Enabled, 7 days deferral      |
| Configure Automatic Updates                          | Enabled                       |
| Configure automatic updating                         | 4 - Auto download & schedule  |
| Scheduled install day                                | 0 - Every day                 |
| Scheduled install time                               | 03:00                         |

---

## 🌐 Internet Explorer and Microsoft Edge

### 🌎 Microsoft Edge Settings

**Path:** `Computer Configuration > Policies > Administrative Templates > Microsoft Edge`

📸 **Xxxxxxxxxxxxx**

![Microsoft Edge Screenshot](../06-Screenshots/09-Edge-Settings.png)

- **Block tracking of user's web-browsing activity:** Enabled
- **Configure Do Not Track:** Enabled  
- **Block pop-ups:** Enabled
- **Block external extensions from being installed:** Enabled
- **Allow users to be alerted if their passwords are found to be unsafe:** Enabled
- **Enable saving passwords to the password manager Password Manager:** Disabled
- **Configure Microsoft Defender SmartScreen:** Enabled
- **Configure Microsoft Defender SmartScreen to block potentially unwanted apps:** Enabled
- **Prevent bypassing of Microsoft Defender SmartScreen warnings about downloads:** Enabled
- **Action to take on Microsoft Edge startup:** Enabled
- **Configure the homepage URL:** Enabled
- **Configure the new tab URL:** Enabled
- **Set the new tab page as the home page:** Enabled
- **Show Home button on toolbar:** Enabled
- **Sites to open when the browser starts:** Enabled 
- **Default search provider:** Set to corporate engine

---

## 🧩 Administrative Templates

### ⚙️ Control Panel

**Path:** `User Configuration > Policies > Administrative Templates > Control Panel`

- **Prohibit access to Control Panel and PC settings:** Disabled (or Enabled for kiosk)

### 💻 System
**Path:** `Computer Configuration > Policies > Administrative Templates > System`

📸 **Xxxxxxxxxxxxx**

![Control Panel and System Screenshot](../06-Screenshots/09-Edge-Settings.png)

- Turn off DEP for Explorer: Disabled  
- Turn off heap termination on corruption: Disabled  
- Don’t display Getting Started screen: Enabled

### 🌐 Network

**Path:** `Computer Configuration > Policies > Administrative Templates > Network`

📸 **Xxxxxxxxxxxxx**

![Network Screenshot](../06-Screenshots/09-Edge-Settings.png)

- Prohibit Internet Connection Sharing on DNS domain network: Enabled  
- Route all traffic through internal network: Enabled (for VPN)

---

## 🔋 Power Management

**Path:** `Computer Configuration > Policies > Administrative Templates > System > Power Management`

📸 **Xxxxxxxxxxxxx**

![Power Settings Screenshot](../06-Screenshots/10-Power-Settings.png)

- Active power plan: Enabled, set to "Balanced"  
- Hibernate timeout (plugged in): Enabled, set accordingly  
- Turn off hybrid sleep (plugged in): Enabled  
- Require password on wake (plugged in): Enabled

---

## 🏢 Corporate Compliance Settings

### 🛡️ Data Loss Prevention

**Path:** `Computer Configuration > Policies > Administrative Templates > Windows Components > File Explorer`

📸 **Xxxxxxxxxxxxx**

![Data Loss Prevention Screenshot](../06-Screenshots/10-Power-Settings.png)

- Block copying to removable drives: Enabled  
- Windows SmartScreen: Enabled  
- DEP: Disabled

### 🔐 BitLocker Drive Encryption

**Path:** `Computer Configuration > Policies > Administrative Templates > Windows Components > BitLocker Drive Encryption`

📸 **Xxxxxxxxxxxxx**

![BitLocker Screenshot](../06-Screenshots/11-BitLocker.png)

- OS Drives > Require additional auth at startup: Enabled  
- OS Drives > Enable keyboard input on slates: Enabled  
- Fixed Data Drives > Use passwords: Enabled  
- Removable Drives > Deny write if no BitLocker: Enabled

---

## 📦 Application Control

### 📋 AppLocker

**Path:** `Computer Configuration > Policies > Windows Settings > Security Settings > Application Control Policies > AppLocker`

📸 **Xxxxxxxxxxxxx**

![AppLocker Screenshot](../06-Screenshots/12-AppLocker.png)

- Executable Rules: Create Default Rules  
- Windows Installer Rules: Create Default Rules  
- Script Rules: Create Default Rules  
- Packaged App Rules: Create Default Rules

### 📁 App Package Deployment

**Path:** `Computer Configuration > Policies > Administrative Templates > Windows Components > App Package Deployment`

- Deployment in special profiles: Disabled  
- Block user app installs: Enabled

---

## 🔧 Device Installation

**Path:** `Computer Configuration > Policies > Administrative Templates > System > Device Installation > Device Installation Restrictions`

📸 **Xxxxxxxxxxxxx**

![Device Installation Screenshot](../06-Screenshots/13-Device-Installation.png)

- Prevent install by device ID: Enabled (customized)  
- Prevent install by setup class: Enabled (customized)

---

## ✅ Best Practices for GPO Implementation

### 📁 Use GPO Categories:

- Security policies  
- Software deployment  
- User preferences  
- Windows settings

### 🎯 GPO Filtering:

- Use security filtering to target specific groups  
- Apply WMI filtering for hardware/software targeting  
- Use item-level targeting for preferences

### 🔗 GPO Links:

- Link GPOs at appropriate OU levels  
- Avoid linking conflicting GPOs  
- Use "Enforced" sparingly

### 🔄 GPO Processing:

- Computer settings process at startup  
- User settings process at logon  
- Consider slow link detection settings  
- Configure processing order as needed

### 🧪 Testing and Verification:

- Test GPOs in a lab before production  
- Use `gpresult /r` or `gpresult /h` to troubleshoot  
- Create a test OU that mirrors production

### 📝 Documentation:

- Document purpose and settings of each GPO  
- Maintain a change history  
- Keep a current GPO inventory

### 🚀 Performance Considerations:

- Limit number of GPOs  
- Avoid excessive item-level targeting  
- Use loopback processing only when necessary  
- Clean up unused or outdated GPOs
