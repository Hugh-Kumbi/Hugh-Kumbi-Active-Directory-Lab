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

📸 **Desktop Settings**

![Desktop Policy Settings](https://github.com/user-attachments/assets/2e370ae0-2d27-4092-afbb-3b0dc89cad40)

- **Desktop Wallpaper:** Set to corporate wallpaper
- **Desktop Icons:** Control icons on desktop

### 📋 Start Menu and Taskbar

**Path:** 📂 `User Configuration > Policies > Administrative Templates > Start Menu and Taskbar`

📸 **Start Menu and Taskbar Settings**

![Start Menu and Taskbar Settings](https://github.com/user-attachments/assets/2df4f67e-3403-4340-8c87-996d655ef111)

📸 **Start Menu and Taskbar Settings**

![Start Menu and Taskbar Settings 1](https://github.com/user-attachments/assets/d6e63319-8182-4701-84c8-ff87658cf967)

📸 **Start Menu and Taskbar Settings**

![Start Menu and Taskbar Settings 2](https://github.com/user-attachments/assets/1890af72-3bb0-4d54-a3ed-a06d2e1291cc)

- Remove access to taskbar context menus: Disabled  
- Remove "Search the Internet" link: Enabled  
- Do not allow pinning items in Jump Lists: Disabled  
- Turn off user tracking: Enabled

---

## 🔄 Windows Update Settings

### 🔧 Windows Update for Business

**Path:** 📂 `Computer Configuration > Policies > Administrative Templates > Windows Components > Windows Update > Windows Update for Business`

📸 **Windows Update Settings**

![Windows Update Settings](https://github.com/user-attachments/assets/bdfc9c27-934d-4465-b8dc-f9c1e9692869)

📸 **Windows Update Settings**

![Windows Update Settings 1](https://github.com/user-attachments/assets/f127dba5-964a-4ddf-a7e1-be47748fa67c)

📸 **Windows Update Settings**

![Windows Update Settings 2](https://github.com/user-attachments/assets/13c858f1-ce85-4380-bbd6-9b011f15c3af)


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

**Path:** 📂 `Computer Configuration > Policies > Administrative Templates > Microsoft Edge`

📸 **Microsoft Edge Settings**

![Microsoft Edge Settings](https://github.com/user-attachments/assets/618a6ab5-bc5e-425c-bfb3-d01a3a4b79d2)

📸 **Microsoft Edge Settings**

![Microsoft Edge Settings 1](https://github.com/user-attachments/assets/cbc8ff72-667a-420b-8866-07fd3710ea2d)

📸 **Microsoft Edge Settings**

![Microsoft Edge Settings 2](https://github.com/user-attachments/assets/e766778d-525d-45a4-9de8-e793c0dc4e85)

📸 **Microsoft Edge Settings**

![Microsoft Edge Settings 3](https://github.com/user-attachments/assets/2f1caf01-4b5d-4cd2-8845-a20084e2ef83)

📸 **Microsoft Edge Settings**

![Microsoft Edge Settings 4](https://github.com/user-attachments/assets/4575549a-80d6-4535-ac90-770059076549)

- **Action to take on Microsoft Edge startup:** Enabled
- **Allow users to be alerted if their passwords are found to be unsafe:** Enabled
- **Block external extensions from being installed:** Enabled
- **Block tracking of user's web-browsing activity:** Enabled
- **Block pop-ups:** Enabled
- **Configure Do Not Track:** Enabled  
- **Configure Microsoft Defender SmartScreen:** Enabled
- **Configure Microsoft Defender SmartScreen to block potentially unwanted apps:** Enabled
- **Configure the homepage URL:** Enabled
- **Configure the new tab URL:** Enabled
- **Enable saving passwords to the password manager Password Manager:** Disabled
- **Default search provider:** Set to corporate engine
- **Set the new tab page as the home page:** Enabled
- **Show Home button on toolbar:** Enabled
- **Sites to open when the browser starts:** Enabled 
- **Prevent bypassing of Microsoft Defender SmartScreen warnings about downloads:** Enabled 

---

## 🧩 Administrative Templates

### ⚙️ Control Panel

**Path:** 📂 `User Configuration > Policies > Administrative Templates > Control Panel`

📸 **Control Panel Settings**

![Control Panel Settings](https://github.com/user-attachments/assets/53cb252c-a453-4f08-ad84-4e06c7593b78)

- **Prohibit access to Control Panel and PC settings:** Enabled

### 💻 System
**Path:** 📂 `Computer Configuration > Policies > Administrative Templates > System`

📸 **System Settings**

![System Settings 2](https://github.com/user-attachments/assets/36486c0e-af16-4662-adc9-865d8aa6f78d)

📸 **System Settings**

![System Settings 1](https://github.com/user-attachments/assets/74d8674a-d2b7-48a3-83d7-4fdf28a67fee)

- Turn off DEP for Explorer: Disabled  
- Turn off heap termination on corruption: Disabled  
- Don’t display Getting Started screen: Enabled

### 🌐 Network

**Path:** 📂 `Computer Configuration > Policies > Administrative Templates > Network`

📸 **Network Settings**

![Network Settings](https://github.com/user-attachments/assets/d7a5d051-dd53-47a8-b1c3-dc4e4b9590ea)

- Prohibit Internet Connection Sharing on DNS domain network: Enabled  
- Route all traffic through internal network: Enabled (for VPN)

---

## 🔋 Power Management

**Path:** 📂 `Computer Configuration > Policies > Administrative Templates > System > Power Management`

📸 **Power Management Settings**

![Power Management Settings](https://github.com/user-attachments/assets/4157944a-d40b-4a6e-8328-8e4bcac10474)

📸 **Power Management Settings**

![Power Management Settings 1](https://github.com/user-attachments/assets/8293b095-bb1e-42ae-83ff-4087b39c0e86)

- Active power plan: Enabled, set to "Balanced"  
- Hibernate timeout (plugged in): Enabled, set accordingly  
- Turn off hybrid sleep (plugged in): Enabled  
- Require password on wake (plugged in): Enabled

---

## 🏢 Corporate Compliance Settings

### 🛡️ Data Loss Prevention

**Path:** 📂 `Computer Configuration > Policies > Administrative Templates > Windows Components > File Explorer`

📸 **Data Loss Prevention Settings**

![Data Loss Prevention Settings](https://github.com/user-attachments/assets/66517c19-4d53-4aff-b057-3c3a4bf8afc1)

📸 **Data Loss Prevention Settings**

![Data Loss Prevention Settings 2](https://github.com/user-attachments/assets/e6649043-7613-469c-a853-6490a72064db)

📸 **Data Loss Prevention Settings**

![Data Loss Prevention Settings 3](https://github.com/user-attachments/assets/a31973ec-13c1-4747-8507-0fd04558ca1a)

- Block copying to removable drives: Enabled  
- Windows SmartScreen: Enabled  
- DEP: Disabled

### 🔐 BitLocker Drive Encryption

**Path:** 📂 `Computer Configuration > Policies > Administrative Templates > Windows Components > BitLocker Drive Encryption`

📸 **BitLocker Drive Encryption Settings**

![BitLocker Drive Encryption](https://github.com/user-attachments/assets/5c5f5dac-7be3-4710-9b68-6ca3352ff76c)

📸 **BitLocker Drive Encryption Settings**

![BitLocker Drive Encryption 2](https://github.com/user-attachments/assets/66315f81-6736-40cd-90d4-cbe7cfbc7205)

📸 **BitLocker Drive Encryption Settings**

![BitLocker Drive Encryption 3](https://github.com/user-attachments/assets/c8abc7e5-e676-4229-84a6-a69cd3ce1f6a)

- OS Drives > Require additional auth at startup: Enabled  
- OS Drives > Enable keyboard input on slates: Enabled  
- Fixed Data Drives > Use passwords: Enabled  
- Removable Drives > Deny write if no BitLocker: Enabled

---

## 📦 Application Control

### 📋 AppLocker

**Path:** 📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Application Control Policies > AppLocker`

📸 **AppLocker Settings Executable Rules Settings**

![AppLocker Settings](https://github.com/user-attachments/assets/a8109dc1-b983-44ef-a7b8-4dceffaaef0f)

📸 **AppLocker Settings Windows Installer Rules Settings**

![AppLocker Settings 1](https://github.com/user-attachments/assets/59ec0b18-e225-432e-b818-87f599da3445)

📸 **AppLocker Settings Script Rules Settings**

![AppLocker Settings 2](https://github.com/user-attachments/assets/38351e58-6bc2-4c75-a374-72bbccecd7ee)

📸 **AppLocker Settings Packaged App Rules Settings**

![AppLocker Settings 3](https://github.com/user-attachments/assets/c40e471c-4012-40a2-9337-4105c6b8968f)

- Executable Rules: Create Default Rules & Custom Rules 
- Windows Installer Rules: Create Default Rules & Custom Rules  
- Script Rules: Create Default Rules & Custom Rules  
- Packaged App Rules: Create Default Rules & Custom Rules

### 📁 App Package Deployment

📸 **App Package Deployment Settings**



**Path:** 📂 `Computer Configuration > Policies > Administrative Templates > Windows Components > App Package Deployment`

- Deployment in special profiles: Disabled  
- Block user app installs: Enabled

---

## 🔧 Device Installation

**Path:** 📂 `Computer Configuration > Policies > Administrative Templates > System > Device Installation > Device Installation Restrictions`

📸 **Device Installation Settings**

![Device Installation Settings](https://github.com/user-attachments/assets/14367313-7368-4dde-856e-223f9c939c4a)

- Prevent install by device ID: Enabled (`PCI\VEN_8086&DEV_1C3A`, `USB\VID_0781&PID_5583`, `USB\VID_05AC&PID_12A8`)  
- Prevent install by setup class: Enabled (`{4d36e967-e325-11ce-bfc1-08002be10318}`)

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
