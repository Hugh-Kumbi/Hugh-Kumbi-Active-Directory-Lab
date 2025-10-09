# 🔧 GPO Important Settings Configuration

This section covers the configuration of essential Group Policy settings within the domain, ensuring that security and operational policies are properly enforced.

---

## 📜 1. Accessing Group Policy Management Console (GPMC)

Opened the GPMC and navigated to the GPOs to configure important settings, including security and system policies.

📸 **Accessing Group Policy Management Console (GPMC)**

<img width="1920" height="909" alt="Active Directory Users and Computers (ADUC) Showing OU Hierarchy" src="https://github.com/user-attachments/assets/16e2ca6f-ee55-4cd6-b902-4df986c9789c" /><br />

<img width="1920" height="909" alt="Active Directory Users and Computers (ADUC) Showing OU Hierarchy 1" src="https://github.com/user-attachments/assets/14e176b0-bd0c-46cb-9f4a-d32c1cfa0814" />

---

## 🛡️ 2. Configuring Security Settings in GPO

Security settings are critical for enforcing security policies such as password policies, account lockout policies, and audit policies. This step focuses on configuring those essential settings.

### 🔑 Password Policies

**Path:** <br />
📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Account Policies > Password Policy`

| Setting                                                 | Value                   |
|---------------------------------------------------------|-------------------------|
| **Enforce password history**                            | 24 passwords remembered |
| **Maximum password age**                                | 90 days                 |
| **Minimum password age**                                | 1 day                   |
| **Minimum password length**                             | 14 characters           |
| **Password must meet complexity requirements**          | Enabled                 |
| **Store passwords using reversible encryption**         | Disabled                |

📸 **Password Policies Settings**

<img width="1920" height="909" alt="Group Policy Editor Window Showing the Password Policy Path" src="https://github.com/user-attachments/assets/6c979a92-4794-418f-a77a-1f8f1a4be9d7" />

---

### 🚫 Account Lockout Policies

**Path:** <br />
📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Account Policies > Account Lockout Policy`

| Setting                                        | Value              |
|------------------------------------------------|--------------------|
| **Account lockout duration**                   | 30 minutes         |
| **Account lockout threshold**                  | 5 invalid attempts |
| **Reset account lockout counter after**        | 30 minutes         |

📸 **Account Lockout Policies Settings**

<img width="1920" height="909" alt="Group Policy Editor Window Showing the Account Lockout Policy Settings" src="https://github.com/user-attachments/assets/cc81cb7c-9d27-4e28-a4e6-bc1211c5ea7b" />

---

### 👤 User Rights Assignment

**Path:** <br />
📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Local Policies > User Rights Assignment`

| Setting                                             | Assigned To                                                                                                                      |
|-----------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------|
| **Access this computer from the network**           | Authenticated Users                                                                                                              |
| **Allow log on locally**                            | Administrators, HUGHDOMAIN\Administrator, HUGHDOMAIN\BackupAdmin, HUGHDOMAIN\BackupAdmin1, Domain Users, Users                   |
| **Allow log on through Remote Desktop Services**    | Administrator, Administrators, HUGHDOMAIN\Administrator, HUGHDOMAIN\BackupAdmin, HUGHDOMAIN\BackupAdmin1, Remote Desktop Users   |
| **Deny access to this computer from the network**   | Local Admins, Guest                                                                                                              |
| **Deny log on locally**                             | Guest                                                                                                                            |
| **Log on as a batch job**                           | Administrators, HUGHDOMAIN\BackupAdmin, HUGHDOMAIN\BackupAdmin1                                                                  |
| **Log on as a service**                             | Network Service, Local Service                                                                                                   |
| **Shut down the system**                            | Administrators, HUGHDOMAIN\BackupAdmin, HUGHDOMAIN\BackupAdmin1                                                                  |

📸 **User Rights Assignment Settings**

![Group Policy Editor Window Showing User Rights Path](https://github.com/user-attachments/assets/76170d21-d2b2-4a02-aa54-7315606c72cc)

![Group Policy Editor Window Showing User Rights Path 1](https://github.com/user-attachments/assets/685c9085-f8e7-43d2-aeef-d5e14cff2361)

---

### 🛡️ Security Options

**Path:** <br />
📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Local Policies > Security Options`

| Setting                                                                    | Value                                                                                                       |
|------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
| **Interactive logon: Do not display last user name**                                                                         | Enabled                                                       |
| **Microsoft network client: Digitally sign communications (always)**                                                         | Enabled                                                       |
| **Microsoft network client: Digitally sign communications (if server agrees)**                                               | Enabled                                                       |
| **Microsoft network server: Digitally sign communications (always)**                                                         | Enabled                                                       |
| **Microsoft network server: Digitally sign communications (if client agrees)**                                               | Enabled                                                       |
| **Network security: LAN Manager authentication level**                                                                       | Send NTLMv2 response only. Refuse LM & NTLM                   |
| **Network security: Minimum session security for NTLM SSP based (including secure RPC) clients**                             | Require NTLMv2 session security, Require 128-bit encryption   |
| **Network security: Minimum session security for NTLM SSP based (including secure RPC) server**                              | Require NTLMv2 session security, Require 128-bit encryption   |
| **User Account Control: Behaviour of the elevation prompt for administrators in Admin Mode**                                 | Prompt for consent on secure desktop                          |
| **User Account Control: Behaviour of the elevation prompt for administrators running with enhanced privilege protection**    | Prompt for consent on secure desktop                          |
| **User Account Control: Run all administrators in Admin Approval Mode**                                                      | Enabled                                                       |

📸 **Security Options Settings**

<img width="1920" height="909" alt="Security Options Settings" src="https://github.com/user-attachments/assets/32d7e974-aacf-475c-ad4f-8243c0e9d30a" /><br />

<img width="1920" height="909" alt="Security Options Settings 1" src="https://github.com/user-attachments/assets/6060a431-73d1-45e6-bff7-4e6aab4f9340" />

---

## 🦠 Windows Defender Settings

### 🛡️ Microsoft Defender Antivirus

**Path:** <br />
📂 `Computer Configuration > Policies > Administrative Templates > Windows Components > Microsoft Defender Antivirus`

| Setting                                                      | Value             |
|--------------------------------------------------------------|-------------------|
| **Join Microsoft Maps**                                      | Enabled           |
| **Configure removal of items from Quarantine folder**        | Enabled           |
| **Turn off real-time protection**                            | Disabled          |
| **Turn on behaviour monitoring**                             | Enabled           |
| **Scan all downloaded file and attachments**                 | Enabled           |
| **Monitor file and program activity on your computer**       | Enabled           |
| **Scan removable drives**                                    | Enabled           |
| **Specify the scan type ro use for a scheduled scan**        | 2 - Full scan     |
| **Specify the day of the week to run a scheduled scan**      | Enabled           |
| **Specify the time of day to run a scheduled scan**          | Enabled           |
| **Turn off Microsoft Defender Antivirus**                    | Disabled          |

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

---

### 🔥 Windows Defender Firewall

**Path:** <br />
📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Windows Defender Firewall with Advanced Security`

| Profile Type         | Firewall State | Inbound Connections  | Outbound Connections  |
|----------------------|----------------|----------------------|-----------------------|
| **Domain Profile**   | On             | Block (default)      | Allow (default)       |
| **Private Profile**  | On             | Block (default)      | Allow (default)       |
| **Public Profile**   | On             | Block (default)      | Allow (default)       |

📸 **Windows Defender Firewall Settings**

<img width="1920" height="909" alt="Windows Defender Firewall Settings" src="https://github.com/user-attachments/assets/f3d6b7a3-68e8-4cca-9458-efeb267155aa" /><br />

📸 **Windows Defender Firewall Settings**

<img width="1920" height="909" alt="Windows Defender Firewall Settings 1" src="https://github.com/user-attachments/assets/0cea38cb-c0ef-4742-baca-ad9113e6394e" /><br />

📸 **Windows Defender Firewall Settings**

<img width="1920" height="909" alt="Windows Defender Firewall Settings 2" src="https://github.com/user-attachments/assets/daba3079-d418-44c6-b03b-9ba797a3f623" />

---

## ⚙️ 3. Configuring System Settings in GPO

System settings, including user rights assignment and system services, play a pivotal role in maintaining a secure and stable environment. This section covers the process of configuring these settings.

## 🖥️ Desktop and Start Menu Settings

### 🖼️ Desktop Settings

**Path:** <br />
📂 `User Configuration > Policies > Administrative Templates > Desktop`

- **Desktop Wallpaper:** Set to corporate wallpaper
- **Desktop Icons:** Control icons on desktop

📸 **Desktop Settings**

![Desktop Policy Settings](https://github.com/user-attachments/assets/2e370ae0-2d27-4092-afbb-3b0dc89cad40)

### 📋 Start Menu and Taskbar

**Path:** <br />
📂 `User Configuration > Policies > Administrative Templates > Start Menu and Taskbar`

- Remove access to taskbar context menus: Disabled  
- Remove "Search the Internet" link: Enabled  
- Do not allow pinning items in Jump Lists: Disabled  
- Turn off user tracking: Enabled

📸 **Start Menu and Taskbar Settings**

![Start Menu and Taskbar Settings](https://github.com/user-attachments/assets/2df4f67e-3403-4340-8c87-996d655ef111)

📸 **Start Menu and Taskbar Settings**

![Start Menu and Taskbar Settings 1](https://github.com/user-attachments/assets/d6e63319-8182-4701-84c8-ff87658cf967)

📸 **Start Menu and Taskbar Settings**

![Start Menu and Taskbar Settings 2](https://github.com/user-attachments/assets/1890af72-3bb0-4d54-a3ed-a06d2e1291cc)

---

## 🔄 Windows Update Settings

### 🔧 Windows Update for Business

**Path:** <br />
📂 `Computer Configuration > Policies > Administrative Templates > Windows Components > Windows Update > Windows Update for Business`

| Setting                                                  | Value                         |
|----------------------------------------------------------|-------------------------------|
| **Preview Builds and Feature Updates**                   | Enabled, Semi-Annual, 30 days |
| **Quality Updates**                                      | Enabled, 7 days deferral      |
| **Configure Automatic Updates**                          | Enabled                       |
| **Configure automatic updating**                         | 4 - Auto download & schedule  |
| **Scheduled install day**                                | 0 - Every day                 |
| **Scheduled install time**                               | 03:00                         |

📸 **Windows Update Settings**

![Windows Update Settings](https://github.com/user-attachments/assets/bdfc9c27-934d-4465-b8dc-f9c1e9692869)

📸 **Windows Update Settings**

![Windows Update Settings 1](https://github.com/user-attachments/assets/f127dba5-964a-4ddf-a7e1-be47748fa67c)

📸 **Windows Update Settings**

![Windows Update Settings 2](https://github.com/user-attachments/assets/13c858f1-ce85-4380-bbd6-9b011f15c3af)

---

## 🌐 Internet Explorer and Microsoft Edge

### 🌎 Microsoft Edge Settings

**Path:** <br />
📂 `Computer Configuration > Policies > Administrative Templates > Microsoft Edge`

- `Action to take on Microsoft Edge startup`: Enabled
- `Allow users to be alerted if their passwords are found to be unsafe`: Enabled
- `Block external extensions from being installed`: Enabled
- `Block tracking of user's web-browsing activity`: Enabled
- `Block pop-ups`: Enabled
- `Configure Do Not Track`: Enabled  
- `Configure Microsoft Defender SmartScreen`: Enabled
- `Configure Microsoft Defender SmartScreen to block potentially unwanted apps` Enabled
- `Configure the homepage URL`: Enabled
- `Configure the new tab URL`: Enabled
- `Enable saving passwords to the password manager Password Manager`: Disabled
- `Default search provider`:** Set to corporate engine
- `Set the new tab page as the home page`: Enabled
- `Show Home button on toolbar`: Enabled
- `Sites to open when the browser starts`: Enabled 
- `Prevent bypassing of Microsoft Defender SmartScreen warnings about downloads`: Enabled 

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

---

## 🧩 Administrative Templates

### ⚙️ Control Panel

**Path:** <br />
📂 `User Configuration > Policies > Administrative Templates > Control Panel`

- **Prohibit access to Control Panel and PC settings:** Enabled

📸 **Control Panel Settings**

<img width="1920" height="909" alt="Control Panel Settings" src="https://github.com/user-attachments/assets/85c149ad-c09f-449a-9e5b-5f0a21ccca53" /><br />

### 💻 System

**Path:** <br />
📂 `Computer Configuration > Policies > Administrative Templates > System`

- Turn off DEP for Explorer: Disabled  
- Turn off heap termination on corruption: Disabled  
- Don’t display Getting Started screen: Enabled

📸 **System Settings**

<img width="1920" height="909" alt="System Settings" src="https://github.com/user-attachments/assets/564c1ec7-ffd0-4b1c-94c8-7903549a4bf4" /><br />

📸 **System Settings**

![System Settings 1](https://github.com/user-attachments/assets/74d8674a-d2b7-48a3-83d7-4fdf28a67fee)

### 🌐 Network

**Path:** <br />
📂 `Computer Configuration > Policies > Administrative Templates > Network`

- Prohibit Internet Connection Sharing on DNS domain network: Enabled  
- Route all traffic through internal network: Enabled (for VPN)

📸 **Network Settings**

<img width="1920" height="909" alt="Network Settings" src="https://github.com/user-attachments/assets/0938c995-0d6a-4a98-9622-c715e254a252" />

---

## 🔋 Power Management

**Path:** <br />
📂 `Computer Configuration > Policies > Administrative Templates > System > Power Management`

- Active power plan: Enabled, set to "Balanced"  
- Hibernate timeout (plugged in): Enabled, set accordingly  
- Turn off hybrid sleep (plugged in): Enabled  
- Require password on wake (plugged in): Enabled

📸 **Power Management Settings**

![Power Management Settings](https://github.com/user-attachments/assets/4157944a-d40b-4a6e-8328-8e4bcac10474)

📸 **Power Management Settings**

![Power Management Settings 1](https://github.com/user-attachments/assets/8293b095-bb1e-42ae-83ff-4087b39c0e86)

---

## 🏢 Corporate Compliance Settings

### 🛡️ Data Loss Prevention

**Path:** <br />
📂 `Computer Configuration > Policies > Administrative Templates > Windows Components > File Explorer`

- Block copying to removable drives: Enabled  
- Windows SmartScreen: Enabled  
- DEP: Disabled

📸 **Data Loss Prevention Settings**

![Data Loss Prevention Settings](https://github.com/user-attachments/assets/66517c19-4d53-4aff-b057-3c3a4bf8afc1)

📸 **Data Loss Prevention Settings**

![Data Loss Prevention Settings 2](https://github.com/user-attachments/assets/e6649043-7613-469c-a853-6490a72064db)

📸 **Data Loss Prevention Settings**

![Data Loss Prevention Settings 3](https://github.com/user-attachments/assets/a31973ec-13c1-4747-8507-0fd04558ca1a)

### 🔐 BitLocker Drive Encryption

**Path:** <br />
📂 `Computer Configuration > Policies > Administrative Templates > Windows Components > BitLocker Drive Encryption`

- OS Drives > Require additional auth at startup: Enabled  
- OS Drives > Enable keyboard input on slates: Enabled  
- Fixed Data Drives > Use passwords: Enabled  
- Removable Drives > Deny write if no BitLocker: Enabled

📸 **BitLocker Drive Encryption Settings**

<img width="1920" height="909" alt="BitLocker Drive Encryption Fixed Drive Settings Overview" src="https://github.com/user-attachments/assets/eae3f23f-f672-4a8f-a7ec-8b703b7d6191" /><br />

📸 **BitLocker Drive Encryption Settings**

<img width="1920" height="909" alt="BitLocker Drive Encryption Policies for Operating System Drives Overview" src="https://github.com/user-attachments/assets/c84d3785-c5be-4eec-9bd8-893ec3e2f974" /><br />

📸 **BitLocker Drive Encryption Settings**

<img width="1920" height="909" alt="BitLocker Drive Encryption Removable Data Drives Overview" src="https://github.com/user-attachments/assets/c53fa362-fb2d-4fbd-9836-7e7bd278cfe1" />

---

## 📦 Application Control

### 📋 AppLocker

**Path:** <br />
📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Application Control Policies > AppLocker`

- Executable Rules: Create Default Rules & Custom Rules 
- Windows Installer Rules: Create Default Rules & Custom Rules  
- Script Rules: Create Default Rules & Custom Rules  
- Packaged App Rules: Create Default Rules & Custom Rules

📸 **AppLocker Settings Executable Rules Settings**

<img width="1920" height="909" alt="AppLocker Settings" src="https://github.com/user-attachments/assets/975994dd-d3ca-4d3b-b617-ef53ca2ec3bc" /><br />

📸 **AppLocker Settings Windows Installer Rules Settings**

<img width="1920" height="909" alt="AppLocker Settings 1" src="https://github.com/user-attachments/assets/18ddb787-14b3-4418-806f-f1822ad85b84" />

---

### 📁 App Package Deployment

**Path:** <br />
📂 `Computer Configuration > Policies > Administrative Templates > Windows Components > App Package Deployment`

- Allow deployment operations in special profiles: Disabled  
- Prevent non-admin users from installing packaged Windows apps: Enabled

📸 **App Package Deployment Settings**

![App Package Deployment Settings](https://github.com/user-attachments/assets/eee5dc48-9ab9-44c5-a9c4-420e24b18f4e)

---

## 🔧 Device Installation

**Path:** <br />
📂 `Computer Configuration > Policies > Administrative Templates > System > Device Installation > Device Installation Restrictions`

- Prevent install by device ID: Enabled (`PCI\VEN_8086&DEV_1C3A`, `USB\VID_0781&PID_5583`, `USB\VID_05AC&PID_12A8`)  
- Prevent install by setup class: Enabled (`{4d36e967-e325-11ce-bfc1-08002be10318}`)

📸 **Device Installation Settings**

![Device Installation Settings](https://github.com/user-attachments/assets/14367313-7368-4dde-856e-223f9c939c4a)

---

## ✅ 4. Verifying GPO Settings Application

After configuring important settings, it's crucial to verify that the GPO is applied correctly across the domain. This includes using tools like gpresult to confirm the settings.

📸 **Verifying GPO Settings Application**

<img width="1920" height="909" alt="Verifying GPO Settings Application" src="https://github.com/user-attachments/assets/0d544734-49a9-4aed-a143-68443e6112e3" /><br />

<img width="1920" height="909" alt="Verifying GPO Settings Application 1" src="https://github.com/user-attachments/assets/eccf6576-de2a-4bbb-a82b-518cd8f07bfa" /><br />

<img width="1920" height="909" alt="Verifying GPO Settings Application 2" src="https://github.com/user-attachments/assets/6906cf32-402a-4ee3-bbeb-1bd8f964c364" />

---

## 🔄 5. Command Line Results from `gpupdate`

Running the gpupdate command ensures the latest policies are refreshed on the target system, confirming the updated GPO settings.

📸 **Command Line Results from gpupdate on `AD-WIN11-01`**

<img width="1920" height="909" alt="Command Line Showing gpupdate Output for `AD-WIN11-01`" src="https://github.com/user-attachments/assets/ef010ea6-6c3c-4f15-8b56-4e6b7257acc8" /><br />

📸 **Command Line Results from gpupdate on `AD-WIN11-02`**

<img width="1920" height="909" alt="Command Line Showing gpupdate Output for `AD-WIN11-02`" src="https://github.com/user-attachments/assets/94204c00-4cb2-4486-a5bf-3062d8a8d1b2" />

---

## 💻 6. Command Line Results from `gpresult`

The gpresult command provides a detailed report on which GPOs have been applied to the machine, including any policy conflicts or overrides.

📸 **Command Line Results from gpresult on `AD-WIN11-01`**

<img width="1920" height="909" alt="Command Line Results from gpresult on `AD-WIN11-01` xxx" src="https://github.com/user-attachments/assets/6a7ed9a9-061a-4dec-8f53-2e01aece8651" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on `AD-WIN11-01` xxx 1" src="https://github.com/user-attachments/assets/2169fc72-c08a-476c-84c9-90b43fb39cbc" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on `AD-WIN11-01` xxx 2" src="https://github.com/user-attachments/assets/9ec22623-726d-494a-b1f1-add372aff526" /><br />

📸 **Command Line Results from gpresult on `AD-WIN11-02`**

<img width="1920" height="909" alt="Command Line Results from gpresult on `AD-WIN11-02`" src="https://github.com/user-attachments/assets/deca569b-d880-4144-b471-10f957210da9" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on `AD-WIN11-02` xxx" src="https://github.com/user-attachments/assets/1aa8efda-3f5a-44eb-9c91-6e7375bf7f75" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on `AD-WIN11-02` xxx 1" src="https://github.com/user-attachments/assets/aa100d40-a466-4729-baeb-9a98492f670f" />

---

Each image corresponds to a step described in:<br />
📂 [`07-GPO-Security-Policies/V. GPO-Important-Settings`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/07-GPO-Security-Policies/V.%20GPO-Important-Settings.md)
