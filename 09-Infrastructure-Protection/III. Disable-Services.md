# 🔥 Disabling Unnecessary Windows Services via GPO

Reducing the attack surface of domain-joined machines is essential for a secure environment. In this section, I created and applied a GPO to **disable unnecessary or high-risk Windows services** that are not required for daily operations.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Service Configuration Policy  
- **Linked To:** Domain Computers OU

📸 **Screenshot:**  
![Disabled Unnecessary Services Policy](https://github.com/user-attachments/assets/8dc20531-0fd8-4024-9e98-204be91f3f1e)

![Disabling Unnecessary Windows Services Policy GPO Editor Open On The Service Configuration Node](https://github.com/user-attachments/assets/b5501720-5fb4-4729-b7d0-82dfc7609375)

---

## 🛠️ 2. Services Disabled

I disabled the following services using Group Policy Preferences:  
`Computer Configuration > Preferences > Control Panel Settings > Services`

### 🚫 Print Spooler
- **Service Name:** Spooler  
- **Action:** Stop service and set Startup type to **Disabled**  
- **Reason:** Prevents PrintNightmare and remote printing vulnerabilities

📸 **Screenshot:**
![Disable Unnecessary Services 1](https://github.com/user-attachments/assets/5401014e-7408-4a87-8077-1e11dfdad064)

### 🚫 Xbox Services
- **Service Names:** XblAuthManager, XblGameSave, XboxNetApiSvc, XboxGipSvc
- **Action:** Stop services and set Startup type to **Disabled**
- **Reason:** Unnecessary in business/server environments, reduces attack surface and improves performance

📸 **Screenshot:**
![Disable Unnecessary Services 2](https://github.com/user-attachments/assets/859e648a-956b-42ff-86f8-0074a45a36f3)

![Disable Unnecessary Services 3](https://github.com/user-attachments/assets/cb3d0fff-7f69-4f1f-891b-a15f61af2b96)

![Disable Unnecessary Services 4](https://github.com/user-attachments/assets/47f4d118-e0e0-4b78-85d4-3f1925e230ca)

![Disable Unnecessary Services 5](https://github.com/user-attachments/assets/259fd65b-93a0-4a56-b66f-154a76bd2fa5)

### 🚫 Windows Media Player Network Sharing Service
- **Service Name:** WMPNetworkSvc
- **Action:** Stop service and set Startup type to **Disabled**
- **Reason:** Eliminates unnecessary network exposure for media streaming functionality

📸 **Screenshot:**
![Disable Unnecessary Services 6](https://github.com/user-attachments/assets/ea9edc5c-6fa8-4910-91df-347b5eedf6eb)

### 🚫 Fax
- **Service Name:** Fax
- **Action:** Stop service and set Startup type to **Disabled**
- **Reason:** Legacy service rarely used in modern environments that presents potential attack vectors

📸 **Screenshot:**
![Disable Unnecessary Services 7](https://github.com/user-attachments/assets/53e94b13-68f9-4b9b-af72-2415ea79ca94)

### 🚫 Remote Registry
- **Service Name:** RemoteRegistry  
- **Action:** Stop service and set Startup type to **Disabled**  
- **Reason:** Blocks remote registry modifications that can be exploited

📸 **Screenshot:**
![Disable Unnecessary Services 8](https://github.com/user-attachments/assets/5d8e3197-f105-4157-8dcf-9610c7e0f229)

### 🚫 SNMP
- **Service Name:** SNMP  
- **Action:** Stop service and set Startup type to **Disabled**  
- **Reason:** Legacy service with known vulnerabilities

📸 **Screenshot:**
![Disable Unnecessary Services 9](https://github.com/user-attachments/assets/e396a190-88c0-4f72-845e-283485ae0e82)

### 🚫 Telnet
- **Service Name:** TlntSvr  
- **Action:** Stop service and set Startup type to **Disabled**  
- **Reason:** Telnet is an insecure protocol and should be replaced by SSH/PowerShell Remoting

📸 **Screenshot:**
![Disable Unnecessary Services 10](https://github.com/user-attachments/assets/37ff44db-f2a9-4eef-bfcf-9e7189768bf8)

### 🚫 Windows Search
- **Service Name:** WSearch
- **Action:** Stop service and set Startup type to **Disabled**
- **Reason:** Reduces unnecessary resource usage on servers where desktop search is not needed

📸 **Screenshot:**
![Disable Unnecessary Services 10 WSearch](https://github.com/user-attachments/assets/5f4a6386-9bff-47cf-a778-7ab26bf8744f)

### 🚫 Windows Update
- **Service Name:** wuauserv
- **Action:** Set Startup type to Manual
- **Reason:** Better to control updates through WSUS or central management rather than automatic checks

📸 **Screenshot:**
![Disable Unnecessary Services 11 wuauserv](https://github.com/user-attachments/assets/fa017463-8288-464c-ab2b-1875cc2dcc5b)

### 🚫 Windows Error Reporting
- **Service Name:** WerSvc
- **Action:** Stop service and set Startup type to Disabled
- **Reason:** Prevents unnecessary data transmission and improves performance

📸 **Screenshot:**
![Disable Unnecessary Services 12 WerSvc](https://github.com/user-attachments/assets/1e702426-52e2-4079-b047-560ddc6ae4ac)

### 🚫 Secondary Logon
- **Service Name:** seclogon
- **Action:** Stop service and set Startup type to Disabled
- **Reason:** Commonly exploited for privilege escalation attacks

📸 **Screenshot:**
![Disable Unnecessary Services 13 seclogon](https://github.com/user-attachments/assets/8988d974-868a-4468-8545-949f65f439c8)

### 🚫 Windows Insider Service
- **Service Name:** wisvc
- **Action:** Stop service and set Startup type to Disabled
- **Reason:** Not required in production environments; eliminates potential preview feature risks

📸 **Screenshot:**
![Disable Unnecessary Services 14 wisvc](https://github.com/user-attachments/assets/85276a98-179e-47f6-be39-499ab81d6515)

---

## 🧪 3. Validation

- Deployed the policy and ran `gpupdate /force` on target machines.
- Used `services.msc` to confirm that the services were stopped and disabled.
- Monitored event logs for any disruptions caused by these changes.

📸 **Screenshot:**
![Print Spooler msc](https://github.com/user-attachments/assets/7ad8af5c-f501-4b50-ab6c-1fe231371d1f)

![RemoteRegistry msc](https://github.com/user-attachments/assets/81ba4908-49bc-4c1e-99c0-8d6ad8478739)

![SNMP msc](https://github.com/user-attachments/assets/2c1d45cf-e04f-46db-b264-299f3bdaa937)

![Scondary Logon msc](https://github.com/user-attachments/assets/040ae3c8-3664-432e-93c8-7c5fc9ea52a8)

![Windows Error Reporting msc](https://github.com/user-attachments/assets/eed89852-c495-4f6d-9119-cae2be90b632)

![Windows Insider Service msc](https://github.com/user-attachments/assets/7d33f912-e1f9-4087-a998-e17b76f381dd)

![Windows Media Player Network Sharing Service msc](https://github.com/user-attachments/assets/ea1cf24f-1dc5-48c3-aeab-36f7d76c5246)

![Windows Search msc](https://github.com/user-attachments/assets/320df70d-9d0d-48b3-b665-4e1112da5817)

![Windows Update msc](https://github.com/user-attachments/assets/a4075b8f-ab10-4ffe-b508-9d2c03c1546a)

![Xbox msc](https://github.com/user-attachments/assets/9e262fd8-2939-41d5-a88a-1e25ac7515cd)

---

## 🗂️ 4. Screenshot Storage

All related screenshots are stored in:  
📂 [`06-Screenshots/Disable-Services/Spooler-Disabled.png`]()
