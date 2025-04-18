# 🔐 Infrastructure Protection

## 🎯 Objective
To enhance domain-wide security by applying firewall rules, configuring secure communication protocols, and disabling unnecessary services through Group Policy.

---

## 🛡️ Windows Firewall Configuration

### Description
I enforced strict firewall rules on all domain-joined systems to protect the internal network from unauthorized access and to control inbound and outbound traffic.

### Group Policy Settings Applied
- **Domain Profile:** Enabled, Block Inbound, Allow Outbound
- **Private Profile:** Enabled, Block Inbound, Allow Outbound
- **Public Profile:** Enabled, More restrictive settings (e.g., block RDP and file sharing)

### 📸 Screenshot
![Windows Firewall GPO](https://github.com/user-attachments/assets/a49d5f89-8945-4f9d-a21d-a85b7a8cf1ab)

---

## 🌐 Network Security Settings

### Description
I configured LAN Manager authentication and session security to enforce strong encryption and prevent legacy protocol use.

### GPO Settings Applied
- LAN Manager Authentication Level: **Send NTLMv2 response only. Refuse LM & NTLM**
- Minimum session security for NTLM SSP (Clients & Servers): **128-bit encryption**
- Digitally sign communications for Server & Clients (always): **Enabled**

### 📸 Screenshot
![Network Security GPO](https://github.com/user-attachments/assets/e1e7f036-d389-4e8f-8c4d-458985658b93)

---

## 🛠️ Disabled Unnecessary Services

### Description
To reduce the attack surface, I disabled several services not required in this lab environment.

### Services Disabled via GPO
- **Print Spooler** – Disabled on servers not offering print services.
- **Remote Registry** – Prevented remote tampering.
- **Telnet Service** – Obsolete and insecure.
- **SNMP** – Disabled unless explicitly needed for monitoring.

### 📸 Screenshot
![Disabled Unnecessary Services Policy](https://github.com/user-attachments/assets/69802663-c673-472f-856f-7713a73372a7)

---

## ✅ Verification & Testing
- Verified firewall rules with `Windows Defender Firewall with Advanced Security`.
- Used `telnet` and `nmap` to scan for disabled services.
- Confirmed services were stopped and set to “Disabled” startup type via `services.msc` and `gpresult`.

---

## 🔁 Lessons Learned
- Infrastructure protection must be proactive and layered.
- Group Policy is a powerful tool for enforcing uniform, secure configurations across multiple endpoints.
