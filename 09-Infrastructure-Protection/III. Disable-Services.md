# 🔥 Disabling Unnecessary Windows Services via GPO

Reducing the attack surface of domain-joined machines is essential for a secure environment. In this section, I created and applied a GPO to **disable unnecessary or high-risk Windows services** that are not required for daily operations.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Disabling Unnecessary Windows Services Policy  
- **Linked To:** hughdomain.local (domain root)

📸 **Group Policy Management Console Showing the Disabled Unnecessary Services Policy Linked to Domain** 

<img width="1920" height="909" alt="Group Policy Management Console Showing the Disabled Unnecessary Services Policy Linked to Domain" src="https://github.com/user-attachments/assets/2120e976-a6a4-4e2a-ab0e-f7e3265a9028" />

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

![Services Console Showing Print Spooler Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/9483b4f2-ea1c-4fe2-bf68-f2f0be760bf1)

📸 **Services Console Showing Print Spooler Settings on `AD-WIN11-02`**

![Services Console Showing Print Spooler Settings on `AD-WIN11-02`](https://github.com/user-attachments/assets/06d0d887-eeb9-41e1-9dc4-d9ac6122a471)

📸 **Services Console Showing RemoteRegistry Settings on `AD-WIN11-01`**

![Services Console Showing RemoteRegistry Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/29386e6e-ee0b-4a71-8578-d697d093c194)

📸 **Services Console Showing RemoteRegistry Settings on `AD-WIN11-02`**

![Services Console Showing RemoteRegistry Settings on `AD-WIN11-02`](https://github.com/user-attachments/assets/e5d5aee1-8638-4337-8150-835ae52a6614)

📸 **Services Console Showing Secondary Logon Settings on `AD-WIN11-01`**

![Services Console Showing Secondary Logon Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/cc711369-7376-4d91-bdf0-db593b53675f)

📸 **Services Console Showing Secondary Logon Settings on `AD-WIN11-02`**

![Services Console Showing Secondary Logon Settings on `AD-WIN11-02`](https://github.com/user-attachments/assets/6cc307cb-7512-406b-a213-cc2dd5792e76)

📸 **Services Console Showing SNMP Settings on `AD-WIN11-01`**

![Services Console Showing SNMP Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/8d2bf2cf-55e4-44a2-8608-f84501d29869)

📸 **Services Console Showing SNMP Settings on `AD-WIN11-02`**

<img width="1920" height="909" alt="Services Console Showing SNMP Settings on AD-WIN11-02" src="https://github.com/user-attachments/assets/4d693345-bace-4572-bdde-c28b100e5e29" /><br />

📸 **Services Console Showing Windows Error Reporting Settings on `AD-WIN11-01`**

![Services Console Showing Windows Error Reporting Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/20a6ac90-c593-42f8-bc0f-d382cd3b5146)

📸 **Services Console Showing Windows Error Reporting Settings on `AD-WIN11-02`**

![Services Console Showing Windows Error Reporting Settings on `AD-WIN11-02`](https://github.com/user-attachments/assets/ccb9c651-fbe2-4123-b61f-49cbdf47372e)

📸 **Services Console Showing Windows Insider Service Settings on `AD-WIN11-01`**

![Services Console Showing Windows Insider Service Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/5e1db333-ed98-484e-860b-1ee091373d60)

📸 **Services Console Showing Windows Insider Service Settings on `AD-WIN11-02`**

![Services Console Showing Windows Insider Service Settings on `AD-WIN11-02`](https://github.com/user-attachments/assets/694f883e-642d-41f9-88ba-649985578bd4)

📸 **Services Console Showing Windows Media Player Network Sharing Service Settings on `AD-WIN11-01`**

![Services Console Showing Windows Media Player Network Sharing Service Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/4467ac4b-a911-4548-ace0-4e8f08af6544)

📸 **Services Console Showing Windows Media Player Network Sharing Service Settings on `AD-WIN11-02`**

![Services Console Showing Windows Media Player Network Sharing Service Settings on `AD-WIN11-02`](https://github.com/user-attachments/assets/28545b16-7646-4ba2-8602-b56289b7230d)

📸 **Services Console Showing Windows Search Settings on `AD-WIN11-01`**

![Services Console Showing Windows Search Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/07a20575-fed5-46d9-8a5c-f1dbc6136e01)

📸 **Services Console Showing Windows Search Settings on `AD-WIN11-02`**

![Services Console Showing Windows Search Settings on `AD-WIN11-02`](https://github.com/user-attachments/assets/7e1afc86-9c56-48b8-9e68-85f54b1bb883)

📸 **Services Console Showing Windows Update Settings on `AD-WIN11-01`**

![Services Console Showing Windows Update Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/70f651b8-1c10-4816-9b66-562989c42040)

📸 **Services Console Showing Windows Update Settings on `AD-WIN11-02`**

![Services Console Showing Windows Update Settings on `AD-WIN11-02`](https://github.com/user-attachments/assets/ec731883-3c33-4451-ac11-44e745852c39)

📸 **Services Console Showing Xbox Services Settings on `AD-WIN11-01`**

![Services Console Showing Xbox Services Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/2e5030cc-ba9a-4c4e-b2a1-fd93b686b291)

📸 **Services Console Showing Xbox Services Settings on `AD-WIN11-02`**

![Services Console Showing Xbox Services Settings on `AD-WIN11-02`](https://github.com/user-attachments/assets/09b277cc-28ed-4cbe-a526-ae7568fad5a2)

---

## 🗂️ 4. Screenshot Storage

All related screenshots are stored in: <br /> 
📂 [`06-Screenshots/Disable-Services/Spooler-Disabled.png`]()
