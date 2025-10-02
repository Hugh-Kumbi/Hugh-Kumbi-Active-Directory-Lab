# 🌐 Network Security Configuration

This section documents the **network security configuration** applied across the domain. It consolidates multiple policies and settings designed to protect the network infrastructure from unauthorized access, malicious activity, and misconfiguration.  

Rather than duplicating existing work, this document references dedicated GPOs where firewall, IPsec, and antivirus policies are already configured, and highlights additional network-level protections.

---

## 1. 🔐 Network Security Policies (Overview)

Domain-level **network security policies** were enforced to restrict unauthorized traffic, protect sensitive communications, and harden exposed services. These include:  

- **Windows Firewall Policy GPO** → centralizes firewall rules for inbound/outbound traffic.  
- **IP Security Policy GPO** → enforces encryption of sensitive traffic.  
- **Windows Defender Policy GPO** → ensures antivirus is enabled and real-time protection is active.  

📸 **GPMC showing linked Firewall, IPsec, and Defender GPOs under `hughdomain.local`**  

<img width="1920" height="909" alt="GPMC showing linked Firewall, IPsec, and Defender GPOs under `hughdomain local` 3" src="https://github.com/user-attachments/assets/77133e35-6871-4659-a477-fede0b073fc8" /><br />

<img width="1920" height="909" alt="GPMC showing linked Firewall, IPsec, and Defender GPOs under `hughdomain local`" src="https://github.com/user-attachments/assets/f746478b-5b78-4009-b69d-551a78a0e25b" /><br />

<img width="1920" height="909" alt="GPMC showing linked Firewall, IPsec, and Defender GPOs under `hughdomain local` 1" src="https://github.com/user-attachments/assets/a2506208-250f-4b13-9e70-3b58da600683" /><br />

<img width="1920" height="909" alt="GPMC showing linked Firewall, IPsec, and Defender GPOs under `hughdomain local` 2" src="https://github.com/user-attachments/assets/6c1d0555-e061-4344-b854-0478bba222db" />

---

## 2. 📶 Network Access Protection (NAP)

Network Access Protection (NAP) was previously used to enforce client health compliance but has been deprecated since Windows Server 2012 R2 and is no longer available in Windows Server 2025 or Windows 11. Therefore, this step is intentionally skipped in this lab.  

---

## 3. 💻 Securing Remote Desktop Access

- Restricted RDP access to domain admins only.  
- Enforced **Network Level Authentication (NLA)**.  
- Limited access to specific IP ranges.  
- Enabled encryption for all sessions.  

📸 **RDP settings in GPO** 

<img width="1920" height="909" alt="RDP settings in GPO" src="https://github.com/user-attachments/assets/5caf0cb1-7cbd-453d-a27a-15cc0b525a5c" /><br />

📸 **Successful RDP connection using Domain Admin on `AD-WIN11-02`**

<img width="1920" height="909" alt="Remote Desktop RDP Attempt 1" src="https://github.com/user-attachments/assets/3b4a395c-f0e8-4078-8174-68e224f99e94" /><br />

<img width="1920" height="909" alt="Remote Desktop RDP Attempt 2" src="https://github.com/user-attachments/assets/1080a960-09fa-43ee-a8e9-39fa268b4b86" /><br />

<img width="1920" height="909" alt="Remote Desktop RDP Attempt Successful" src="https://github.com/user-attachments/assets/25388037-bfb6-4301-88f8-b574d8250e6a" /><br />

📸 **Successful RDP connection using Domain Admin on `AD-WIN11-02`**

<img width="1920" height="909" alt="Remote Desktop RDP Attempt for AD-Win11-02 3" src="https://github.com/user-attachments/assets/b00ed5f9-03df-4f4b-b04a-fcd17f65909c" /><br />

<img width="1920" height="909" alt="Remote Desktop RDP Attempt for AD-Win11-02 4" src="https://github.com/user-attachments/assets/9ec31912-b2cc-4d2d-9ac6-783722e382e9" /><br />

<img width="1920" height="909" alt="Remote Desktop RDP Attempt for AD-Win11-02 5" src="https://github.com/user-attachments/assets/50afa872-9fd3-47c4-b223-35fd28973806" /><br />

<img width="1920" height="909" alt="Remote Desktop RDP Attempt for AD-Win11-02 Successful" src="https://github.com/user-attachments/assets/8fd7dac3-f87b-47b3-a441-40011facda63" /><br />

📸 **Failed RDP attempt with Local Admin on `AD-WIN11-01`**  

<img width="1920" height="909" alt="Remote Desktop RDP Attempt 3" src="https://github.com/user-attachments/assets/34e90a99-f9ce-4055-bce9-3a48e2123bce" /><br />

<img width="1920" height="909" alt="Remote Desktop RDP Attempt 4" src="https://github.com/user-attachments/assets/79ea4ecb-da74-4bf1-965d-97bc7d286011" /><br />

<img width="1920" height="909" alt="Remote Desktop RDP Attempt failed 1" src="https://github.com/user-attachments/assets/6023d830-1e4c-4dcb-be35-0d1208077378" /><br />

📸 **Failed RDP attempt with Local Admin on `AD-WIN11-02`**  

<img width="1920" height="909" alt="Remote Desktop RDP Attempt for AD-Win11-02" src="https://github.com/user-attachments/assets/9fca4e89-25f1-425d-aca1-3184b4eace1c" /><br />

<img width="1920" height="909" alt="Remote Desktop RDP Attempt for AD-Win11-02 1" src="https://github.com/user-attachments/assets/846e9e19-08ca-468c-ac93-bcc7aec5c833" /><br />

<img width="1920" height="909" alt="Remote Desktop RDP Attempt for AD-Win11-02 2" src="https://github.com/user-attachments/assets/6dfc09ec-ad84-44d3-a4d1-b28a6308166c" /><br />

---

## 4. 📡 DHCP Security

- Configured DHCP role with secure settings.  
- Prevented rogue DHCP servers using **DHCP snooping** (lab demonstration).  
- Limited IP allocations to authorized clients only.  

📸 **DHCP Management Console showing authorized DHCP servers**  

<img width="1920" height="909" alt="DHCP Management Console showing authorized DHCP servers" src="https://github.com/user-attachments/assets/0269dff5-88ac-40e7-9a5f-27b16a69e301" /><br />

<img width="1920" height="909" alt="Powershell Output showing authorized DHCP servers" src="https://github.com/user-attachments/assets/7ce599c7-21fa-448c-8d88-071a3c296c4b" /><br />

📸 **List of DHCP scopes**  

<img width="1920" height="909" alt="List of DHCP scopes" src="https://github.com/user-attachments/assets/98ccc55a-8bfe-4898-88a4-c684313d935a" /><br />

📸 **DHCP Scope Options**  

<img width="1920" height="909" alt="DHCP Scope Options" src="https://github.com/user-attachments/assets/d194c489-93b0-46e4-a4b2-fa2039d96577" /><br />

<img width="1920" height="909" alt="DHCP Scope Options 1" src="https://github.com/user-attachments/assets/8bd6ea67-bd96-43ab-aa41-5d1fc86e6bbb" /><br />

📸 **DHCP Reservations**  

<img width="1920" height="909" alt="DHCP Reservations" src="https://github.com/user-attachments/assets/6407407c-c679-4ff8-b41e-a9afe55023b3" /><br />

📸 **DHCP MAC Filters**  

<img width="1920" height="909" alt="DHCP MAC Filters" src="https://github.com/user-attachments/assets/89be34b1-9b7c-4f85-9283-cc9f1a58ea7d" /><br />

📸 **DHCP Policies**  

<img width="1920" height="909" alt="DHCP Policies" src="https://github.com/user-attachments/assets/37b399e6-8ac1-473e-a19b-6db013c2a8af" /><br />

📸 **DHCP Audit Logging**  

<img width="1920" height="909" alt="DHCP Audit Logging" src="https://github.com/user-attachments/assets/35c77f69-562a-4c01-bc95-0176eb3d0cdd" />

---

## 5. ⚙️ DNS Security

- Enabled **DNSSEC** to protect against spoofing and cache poisoning.  
- Configured secure forwarding to trusted upstream resolvers.  
- Restricted zone transfers to authorized servers only.  

📸 **DNS Zones**  

<img width="1920" height="909" alt="DNS Zones" src="https://github.com/user-attachments/assets/fe66f2a9-cfca-4224-8864-79878b8282f5" /><br />

<img width="1920" height="909" alt="DNS Zones 1" src="https://github.com/user-attachments/assets/2a792dcd-da55-489e-9f7d-811e41039a64" /><br />

<img width="1920" height="909" alt="DNS Zones 2" src="https://github.com/user-attachments/assets/56376727-a8de-45eb-914f-13b61056fa53" /><br />

<img width="1920" height="909" alt="DNS Zones 3" src="https://github.com/user-attachments/assets/4853e1e1-8bb8-4cb1-a0ac-c66462763a92" /><br />

📸 **DNSSEC Configuration**  

<img width="1920" height="909" alt="DNSSEC Configuration" src="https://github.com/user-attachments/assets/1b88e0a5-0b06-40dc-9c0d-9427a6580e6f" /><br />

<img width="1920" height="909" alt="DNSSEC Configuration 1" src="https://github.com/user-attachments/assets/b407d515-e461-4a11-8d29-4060ccf85d84" /><br />

<img width="1920" height="909" alt="DNSSEC Configuration 2" src="https://github.com/user-attachments/assets/d241bec8-7a6d-44a9-8f0c-f38f8027ad41" /><br />

<img width="1920" height="909" alt="DNSSEC Configuration 3" src="https://github.com/user-attachments/assets/a41df828-2f64-47b6-afb4-993be2673443" /><br />

<img width="1920" height="909" alt="DNSSEC Configuration 4" src="https://github.com/user-attachments/assets/08f373d1-b0eb-44ed-8b6d-84d22e3b6f92" /><br />

📸 **DNS Forwarders**  

<img width="1920" height="909" alt="DNS Forwarders" src="https://github.com/user-attachments/assets/0902bfc9-0496-4dfc-84f9-8284abb3d314" /><br />

📸 **Zone Transfer Settings**  

<img width="1920" height="909" alt="Zone Transfer Settings" src="https://github.com/user-attachments/assets/7847dbd7-d893-4e56-a6ea-2ed1c210bd80" /><br />

---

## 6. 🚨 Reviewing Network Security Event Logs

Monitored **Event Viewer → Security and System logs** for:  
- Blocked connections.  
- Failed login attempts.  
- Firewall and Defender events.  

📸 **Event Viewer showing network-related logs**  

<img width="1920" height="909" alt="Event Viewer showing network-related logs" src="https://github.com/user-attachments/assets/f9cffd98-fd2f-41f5-a1e9-b496145b277e" /><br />

<img width="1920" height="909" alt="Event Viewer showing network-related logs 1" src="https://github.com/user-attachments/assets/fbf4f1ab-67d4-4b47-9807-ffefc700b7c4" />

---

## 7. 🧪 Testing Network Security
  
- Performed RDP access tests with both domain and local credentials.  

📸 ***RDP access tests for `AD-WIN11-01`**

![Remote Management Testing and Validation for `AD-WIN11-01`](https://github.com/user-attachments/assets/eedcaa72-dae3-46f4-b9b5-172703ad25cf)

![Remote Management Testing and Validation for `AD-WIN11-01` 1](https://github.com/user-attachments/assets/c3801130-9209-48d4-8e86-d062b60baf9b)

![Remote Management Testing and Validation for `AD-WIN11-01` 2](https://github.com/user-attachments/assets/bbb72288-cdc7-443b-9e34-df9a716a77a2)

📸 **RDP access tests for `AD-WIN11-02`**

![Remote Management Testing and Validation for `AD-WIN11-02`](https://github.com/user-attachments/assets/207fb7ad-73ce-4d77-96aa-6eb166aa1274)

![Remote Management Testing and Validation for `AD-WIN11-02` 1](https://github.com/user-attachments/assets/081a80a7-d435-404e-9583-48c7cef729fd)

![Remote Management Testing and Validation for `AD-WIN11-02` 2](https://github.com/user-attachments/assets/d3968c36-7b6b-4a38-9b7a-46cf644e7035)  

---

## 📁 Screenshot Storage

All screenshots related to this section should be stored in:  
📂 [`09-Infrastructure-Protection/II. Network-Security.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/09-Infrastructure-Protection/II.%20Network-Security.md)  
