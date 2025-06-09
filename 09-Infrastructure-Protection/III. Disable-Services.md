# 🔥 Disabling Unnecessary Windows Services via GPO

Reducing the attack surface of domain-joined machines is essential for a secure environment. In this section, I created and applied a GPO to **disable unnecessary or high-risk Windows services** that are not required for daily operations.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Disabling Unnecessary Windows Services Policy  
- **Linked To:** Employees OU

📸 **Group Policy Management Console Showing the Disabled Unnecessary Services Policy Linked to Employees OU** 

![Group Policy Management Console Showing the Disabled Unnecessary Services Policy Linked to Employees OU](https://github.com/user-attachments/assets/92e94f62-b041-4fcc-86f6-eed42494c319)

📸 **Disabling Unnecessary Windows Services Policy GPO Editor Open on the Service Configuration Node**

![Disabling Unnecessary Windows Services Policy GPO Editor Open On The Service Configuration Node](https://github.com/user-attachments/assets/99293f1c-4674-4e9e-8b1c-a6c68bbb75cf)

---

## 🛠️ 2. Services Disabled

I disabled the following services using Group Policy Preferences:  
  `Computer Configuration > Preferences > Control Panel Settings > Services`

### 🚫 Print Spooler

- **Service Name:** Spooler  
- **Action:** Stop service and set Startup type to **Disabled**  
- **Reason:** Prevents PrintNightmare and remote printing vulnerabilities

📸 **Disabled Spooler Services**

![Disabled Spooler Services](https://github.com/user-attachments/assets/70570ba9-cf52-4597-a032-68a535894ffa)

### 🚫 Xbox Services

- **Service Names:** XblAuthManager, XblGameSave, XboxNetApiSvc, XboxGipSvc
- **Action:** Stop services and set Startup type to **Disabled**
- **Reason:** Unnecessary in business/server environments, reduces attack surface and improves performance

📸 **Disabled XblAuthManager**

![Disabled XblAuthManager](https://github.com/user-attachments/assets/cab4c7d5-1502-4f43-9ff7-e5bdee95ef7c)

📸 **Disabled XblGameSave**

![Disabled XblGameSave](https://github.com/user-attachments/assets/bc588387-0aa4-4ba5-a8a3-ed079f6f345f)

📸 **Disabled XboxNetApiSvc**

![Disabled XboxNetApiSvc](https://github.com/user-attachments/assets/e68db57e-cc0e-49a2-b81c-0926f3539259)

📸 **Disabled XboxGipSvc**

![Disabled XboxGipSvc](https://github.com/user-attachments/assets/8bac4bc9-f550-4a5f-847a-8181beb62241)

### 🚫 Windows Media Player Network Sharing Service

- **Service Name:** WMPNetworkSvc
- **Action:** Stop service and set Startup type to **Disabled**
- **Reason:** Eliminates unnecessary network exposure for media streaming functionality

📸 **Disabled Windows Media Player Network Sharing Service**

![Disabled Windows Media Player Network Sharing Service](https://github.com/user-attachments/assets/a46e5d49-115b-40ca-9218-b3a2bbfaa33e)

### 🚫 Fax

- **Service Name:** Fax
- **Action:** Stop service and set Startup type to **Disabled**
- **Reason:** Legacy service rarely used in modern environments that presents potential attack vectors

📸 **Disabled Fax**

![Disabled Fax](https://github.com/user-attachments/assets/7ed41d05-f3f8-414b-8ba6-0f260aca3525)

### 🚫 Remote Registry

- **Service Name:** RemoteRegistry  
- **Action:** Stop service and set Startup type to **Disabled**  
- **Reason:** Blocks remote registry modifications that can be exploited

📸 **Disabled Remote Registry**

![Disabled Remote Registry](https://github.com/user-attachments/assets/c1cd74a5-cbc2-4261-9f9d-6f437d7e501e)

### 🚫 SNMP

- **Service Name:** SNMP  
- **Action:** Stop service and set Startup type to **Disabled**  
- **Reason:** Legacy service with known vulnerabilities

📸 **Disabled SNMP**

![Disabled SNMP](https://github.com/user-attachments/assets/4086e017-8d02-4d55-ad33-80a35bbe248c)

### 🚫 Telnet

- **Service Name:** TlntSvr  
- **Action:** Stop service and set Startup type to **Disabled**  
- **Reason:** Telnet is an insecure protocol and should be replaced by SSH/PowerShell Remoting

📸 **Disabled Telnet**

![Disabled Telnet](https://github.com/user-attachments/assets/5674306e-65bf-442d-bfa7-310cd78cba33)

### 🚫 Windows Search

- **Service Name:** WSearch
- **Action:** Stop service and set Startup type to **Disabled**
- **Reason:** Reduces unnecessary resource usage on servers where desktop search is not needed

📸 **Disabled Windows Search**

![Disabled Windows Search](https://github.com/user-attachments/assets/700b6048-d1b7-43a9-819d-6218dabc987d)

### 🚫 Windows Update

- **Service Name:** wuauserv
- **Action:** Set Startup type to Manual
- **Reason:** Better to control updates through WSUS or central management rather than automatic checks

📸 **Disabled Windows Update**

![Disabled Windows Update](https://github.com/user-attachments/assets/63fbbcae-82fa-48b4-8692-b36729b4a2cd)

### 🚫 Windows Error Reporting

- **Service Name:** WerSvc
- **Action:** Stop service and set Startup type to Disabled
- **Reason:** Prevents unnecessary data transmission and improves performance

📸 **Disabled Windows Error Reporting**

![Disabled Windows Error Reporting](https://github.com/user-attachments/assets/e279cc96-8a32-4dad-b3f6-391d22544c25)

### 🚫 Secondary Logon

- **Service Name:** seclogon
- **Action:** Stop service and set Startup type to Disabled
- **Reason:** Commonly exploited for privilege escalation attacks

📸 **Disabled Secondary Logon**

![Disabled Secondary Logon](https://github.com/user-attachments/assets/aa17976e-d9b6-4648-ba0c-88b6204aa513)

### 🚫 Windows Insider Service

- **Service Name:** wisvc
- **Action:** Stop service and set Startup type to Disabled
- **Reason:** Not required in production environments; eliminates potential preview feature risks

📸 **Disabled Windows Insider Service**

![Disabled Windows Insider Service](https://github.com/user-attachments/assets/cd0820c0-fd97-4e9f-98ac-b4a29b7cddbd)

---

## 🧪 3. Validation

- Deployed the policy and ran `gpupdate /force` on target machines.
- Used `services.msc` to confirm that the services were stopped and disabled.
- Monitored event logs for any disruptions caused by these changes.

📸 **Services Console Showing Print Spooler Settings on `AD-WIN11-01`**

![Print Spooler msc](https://github.com/user-attachments/assets/7ad8af5c-f501-4b50-ab6c-1fe231371d1f)

📸 **Services Console Showing Print Spooler Settings on `AD-WIN11-02`**


📸 **Services Console Showing RemoteRegistry Settings on `AD-WIN11-01`**

![RemoteRegistry msc](https://github.com/user-attachments/assets/81ba4908-49bc-4c1e-99c0-8d6ad8478739)

📸 **Services Console Showing RemoteRegistry Settings on `AD-WIN11-02`**


📸 **Services Console Showing SNMP Settings on `AD-WIN11-01`**

![SNMP msc](https://github.com/user-attachments/assets/2c1d45cf-e04f-46db-b264-299f3bdaa937)

📸 **Services Console Showing SNMP Settings on `AD-WIN11-02`**


📸 **Services Console Showing Secondary Logon Settings on `AD-WIN11-01`**

![Secondary Logon msc](https://github.com/user-attachments/assets/040ae3c8-3664-432e-93c8-7c5fc9ea52a8)

📸 **Services Console Showing Secondary Logon Settings on `AD-WIN11-02`**


📸 **Services Console Showing Windows Error Reporting Settings on `AD-WIN11-01`**

![Windows Error Reporting msc](https://github.com/user-attachments/assets/eed89852-c495-4f6d-9119-cae2be90b632)

📸 **Services Console Showing Windows Error Reporting Settings on `AD-WIN11-02`**


📸 **Services Console Showing Windows Insider Service Settings on `AD-WIN11-01`**

![Windows Insider Service msc](https://github.com/user-attachments/assets/7d33f912-e1f9-4087-a998-e17b76f381dd)

📸 **Services Console Showing Windows Insider Service Settings on `AD-WIN11-02`**


📸 **Services Console Showing Windows Media Player Network Sharing Service Settings on `AD-WIN11-01`**

![Windows Media Player Network Sharing Service msc](https://github.com/user-attachments/assets/ea1cf24f-1dc5-48c3-aeab-36f7d76c5246)

📸 **Services Console Showing Windows Media Player Network Sharing Service Settings on `AD-WIN11-02`**


📸 **Services Console Showing Windows Search Settings on `AD-WIN11-01`**

![Windows Search msc](https://github.com/user-attachments/assets/320df70d-9d0d-48b3-b665-4e1112da5817)

📸 **Services Console Showing Windows Search Settings on `AD-WIN11-02`**


📸 **Services Console Showing Windows Update Settings on `AD-WIN11-01`**

![Windows Update msc](https://github.com/user-attachments/assets/a4075b8f-ab10-4ffe-b508-9d2c03c1546a)

📸 **Services Console Showing Windows Update Settings on `AD-WIN11-02`**


📸 **Services Console Showing Xbox Services Settings on `AD-WIN11-01`**

![Xbox msc](https://github.com/user-attachments/assets/9e262fd8-2939-41d5-a88a-1e25ac7515cd)

📸 **Services Console Showing Xbox Services Settings on `AD-WIN11-02`**



---

## 🗂️ 4. Screenshot Storage

All related screenshots are stored in:  
📂 [`06-Screenshots/Disable-Services/Spooler-Disabled.png`]()
