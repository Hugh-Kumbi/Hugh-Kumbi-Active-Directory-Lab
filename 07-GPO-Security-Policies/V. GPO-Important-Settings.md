# 📘 Group Policy Important Settings Guide

This guide outlines the essential Group Policy settings I configured to align with security baselines, ensure corporate compliance, and optimize user experience in a Windows enterprise environment.

---

## 🔐 Security Baseline Settings

### 🔑 Password Policies

**Path:** `Computer Configuration > Policies > Windows Settings > Security Settings > Account Policies > Password Policy`

📸 **Password Policies**

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

**Path:** `Computer Configuration > Policies > Windows Settings > Security Settings > Account Policies > Account Lockout Policy`

📸 **Account Lockout Policies**

![Account Lockout Policies](https://github.com/user-attachments/assets/dcee3079-fea0-4fb0-80c2-65e6d9b6e5a1)

| Setting                                    | Value              |
|--------------------------------------------|--------------------|
| Account lockout duration                   | 30 minutes         |
| Account lockout threshold                  | 5 invalid attempts |
| Reset account lockout counter after        | 30 minutes         |

---

### 👤 User Rights Assignment

**Path:** `Computer Configuration > Policies > Windows Settings > Security Settings > Local Policies > User Rights Assignment`

📸 **Xxxxxxxxxxxxx**

![User Rights Assignment Screenshot](../06-Screenshots/03-User-Rights-Assignment.png)

| Setting                                         | Assigned To                |
|-------------------------------------------------|----------------------------|
| Access this computer from the network           | Authenticated Users        |
| Allow log on locally                            | Administrators, HUGHDOMAIN\Administrator, HUGHDOMAIN\BackupAdmin, HUGHDOMAIN\BackupAdmin1, Domain Users, Users    |
| Allow log on through Remote Desktop Services    | Administrator, Administrators, HUGHDOMAIN\Administrator, HUGHDOMAIN\BackupAdmin, HUGHDOMAIN\BackupAdmin1, Remote Desktop Users   |
| Deny access to this computer from the network   | Local Admins, Guest                                                |
| Deny log on locally                             | Guest                                                              |
| Log on as a batch job                           | Administrators, HUGHDOMAIN\BackupAdmin, HUGHDOMAIN\BackupAdmin1  |
| Log on as a service                             | Network Service, Local Service                                   |

---

### 🛡️ Security Options

**Path:** `Computer Configuration > Policies > Windows Settings > Security Settings > Local Policies > Security Options`

📸 **Xxxxxxxxxxxxx**

![Security Options Screenshot](../06-Screenshots/04-Security-Options.png)

| Setting                                                                    | Value                                         |
|----------------------------------------------------------------------------|-----------------------------------------------|
| LAN Manager authentication level                                           | Send NTLMv2 response only. Refuse LM & NTLM   |
| Interactive logon: Do not display last user name                           | Enabled                                       |
| Microsoft network server: Digitally sign communications (always)           | Enabled                                       |
| UAC: Elevation prompt for administrators                                   | Prompt for consent on secure desktop          |
| UAC: Run all administrators in Admin Approval Mode                         | Enabled                                       |

---

## 🦠 Windows Defender Settings

### 🛡️ Microsoft Defender Antivirus

**Path:** `Computer Configuration > Policies > Administrative Templates > Windows Components > Microsoft Defender Antivirus`

📸 **Xxxxxxxxxxxxx**

![Defender Antivirus Screenshot](../06-Screenshots/05-Defender-AV.png)

| Setting                                | Value             |
|----------------------------------------|-------------------|
| Turn off Microsoft Defender Antivirus  | Disabled          |
| Turn on real-time protection           | Enabled           |
| Schedule scan day                      | 0 - Every day     |
| Scan type                              | 2 - Full scan     |
| Turn on behavior monitoring            | Enabled           |
| Turn on cloud-delivered protection     | Enabled           |

---

### 🔥 Windows Defender Firewall

**Path:** `Computer Configuration > Policies > Windows Settings > Security Settings > Windows Defender Firewall with Advanced Security`

📸 **Xxxxxxxxxxxxx**

![Firewall Settings Screenshot](../06-Screenshots/06-Defender-Firewall.png)

| Profile Type     | Firewall State | Inbound Connections  | Outbound Connections  |
|------------------|----------------|----------------------|-----------------------|
| Domain Profile   | On             | Block (default)      | Allow (default)       |
| Private Profile  | On             | Block (default)      | Allow (default)       |
| Public Profile   | On             | Block (default)      | Allow (default)       |

---

## 🖥️ Desktop and Start Menu Settings

### 🖼️ Desktop Settings

**Path:** `User Configuration > Policies > Administrative Templates > Desktop`

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

- **Do Not Track:** Enabled  
- **Block pop-ups:** Enabled  
- **Disable Password Manager:** Enabled  
- **SmartScreen:** Enabled  
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
