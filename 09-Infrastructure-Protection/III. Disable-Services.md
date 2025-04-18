# 🔥 Disabling Unnecessary Windows Services via GPO

Reducing the attack surface of domain-joined machines is essential for a secure environment. In this section, I created and applied a GPO to **disable unnecessary or high-risk Windows services** that are not required for daily operations.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Service Configuration Policy  
- **Linked To:** Domain Computers OU

📸 **Screenshot:**  
![Disabled Unnecessary Services Policy](https://github.com/user-attachments/assets/8dc20531-0fd8-4024-9e98-204be91f3f1e)

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
![Print Spooler](https://github.com/user-attachments/assets/9774fc36-d2ce-4c27-b68e-9e9fff99c6a8)

![RemoteRegistry](https://github.com/user-attachments/assets/fcb1870f-3025-49b7-b4f5-2efa37d912ca)

![Telnet x](https://github.com/user-attachments/assets/f782f60d-c4d9-4c35-8914-c5c770dc5a5e)

![SNMP](https://github.com/user-attachments/assets/b25e244a-1248-4497-9a8a-1c040606b09b)

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
