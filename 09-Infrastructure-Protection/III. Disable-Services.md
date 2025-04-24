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
![Disable Unnecessary Services 1](https://github.com/user-attachments/assets/5401014e-7408-4a87-8077-1e11dfdad064)

![Disable Unnecessary Services 2](https://github.com/user-attachments/assets/859e648a-956b-42ff-86f8-0074a45a36f3)

![Disable Unnecessary Services 3](https://github.com/user-attachments/assets/cb3d0fff-7f69-4f1f-891b-a15f61af2b96)

![Disable Unnecessary Services 4](https://github.com/user-attachments/assets/47f4d118-e0e0-4b78-85d4-3f1925e230ca)

![Disable Unnecessary Services 5](https://github.com/user-attachments/assets/259fd65b-93a0-4a56-b66f-154a76bd2fa5)

![Disable Unnecessary Services 6](https://github.com/user-attachments/assets/ea9edc5c-6fa8-4910-91df-347b5eedf6eb)

![Disable Unnecessary Services 7](https://github.com/user-attachments/assets/53e94b13-68f9-4b9b-af72-2415ea79ca94)

![Disable Unnecessary Services 8](https://github.com/user-attachments/assets/5d8e3197-f105-4157-8dcf-9610c7e0f229)

![Disable Unnecessary Services 9](https://github.com/user-attachments/assets/e396a190-88c0-4f72-845e-283485ae0e82)

![Disable Unnecessary Services 10](https://github.com/user-attachments/assets/37ff44db-f2a9-4eef-bfcf-9e7189768bf8)

![secpol msc Network Security Configuration](https://github.com/user-attachments/assets/c918231b-45d4-4d32-8b83-939924209412)

---

## 🧪 3. Validation

- Deployed the policy and ran `gpupdate /force` on target machines.
- Used `services.msc` to confirm that the services were stopped and disabled.
- Monitored event logs for any disruptions caused by these changes.

📸 **Screenshot:**
![Printer Spooler Disabled](https://github.com/user-attachments/assets/dfa8f31c-28eb-437e-a804-3ba24898f1fd)

![RemoteRegistry Disabled](https://github.com/user-attachments/assets/14fa610c-a16f-4770-98ac-422394672aa7)

![SNMP Trap Disabled](https://github.com/user-attachments/assets/4a0931a9-4d2f-41d0-80fc-526e9bb76bff)

![Xbox Live Disabled](https://github.com/user-attachments/assets/1db7c42a-955e-48e2-a8f0-5f0dc7114ebd)

---

## 🗂️ 4. Screenshot Storage

All related screenshots are stored in:  
📂 [`06-Screenshots/Disable-Services/Spooler-Disabled.png`]()
