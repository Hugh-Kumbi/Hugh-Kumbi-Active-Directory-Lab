# 🔥 Disabling Unnecessary Windows Services via GPO

Reducing the attack surface of domain-joined machines is essential for a secure environment. In this section, I created and applied a GPO to **disable unnecessary or high-risk Windows services** that are not required for daily operations.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Service Configuration Policy  
- **Linked To:** Domain Computers OU

📸 **Screenshot:**  
- GPMC view with the GPO linked to the appropriate OU  
- GPO Editor open on the service configuration node

---

## 🛠️ 2. Services Disabled

I disabled the following services using Group Policy Preferences:  
`Computer Configuration > Preferences > Control Panel Settings > Services`

### 🚫 Print Spooler
- **Service Name:** Spooler  
- **Action:** Stop service and set Startup type to **Disabled**  
- **Reason:** Prevents PrintNightmare and remote printing vulnerabilities

### 🚫 Remote Registry
- **Service Name:** RemoteRegistry  
- **Action:** Stop service and set Startup type to **Disabled**  
- **Reason:** Blocks remote registry modifications that can be exploited

### 🚫 Telnet
- **Service Name:** TlntSvr  
- **Action:** Stop service and set Startup type to **Disabled**  
- **Reason:** Telnet is an insecure protocol and should be replaced by SSH/PowerShell Remoting

### 🚫 SNMP (Optional)
- **Service Name:** SNMP  
- **Action:** Stop service and set Startup type to **Disabled**  
- **Reason:** Legacy service with known vulnerabilities

📸 **Screenshot:**
- Service settings inside GPO showing each service’s configuration
- Screenshot of services.msc on a domain computer showing the service as "Disabled"

---

## 🧪 3. Validation

- Deployed the policy and ran `gpupdate /force` on target machines.
- Used `services.msc` to confirm that the services were stopped and disabled.
- Monitored event logs for any disruptions caused by these changes.

📸 **Screenshot:**
- Screenshot showing the "Services" window with the disabled services highlighted

---

## 🗂️ 4. Screenshot Storage

All related screenshots are stored in:  
📂 [`06-Screenshots/Disable-Services/Spooler-Disabled.png`]()
