# 🌐 Network Security Configuration

This section documents the completed configuration of **network security settings** in the Active Directory homelab.  
The goal was to secure the network infrastructure against unauthorized access, ensure safe communications, and harden critical services.  
Each step below includes the implemented outcome along with the screenshots captured for validation.

---

## 1. 🔐 Configured Network Security Policies

I applied network security policies to restrict unauthorized traffic between network segments.  
This included enabling **network isolation**, configuring **IP filtering rules**, and applying **interface security settings**.

📸 **Screenshots to include**:
- Group Policy Management Console showing applied network security policies.  
- Advanced Windows Firewall inbound/outbound rules (example: blocking unauthorized ports).  

---

## 2. 🔑 Applied IPsec Policies for Encryption

IPsec policies were successfully configured to enforce **encryption of traffic between machines**.  
This ensures sensitive data cannot be intercepted during transmission over untrusted networks.

📸 **Screenshots to include**:
- IP Security Policy Management console with active IPsec policy.  
- Properties of an IPsec rule showing encryption settings.  
- Verification of encrypted traffic via Wireshark capture.  

---

## 3. 📶 Configured Network Access Protection (NAP)

I deployed **Network Access Protection (NAP)** to enforce client health requirements.  
Devices must comply with security standards (antivirus, patches, firewall) before gaining network access.

📸 **Screenshots to include**:
- NAP server configuration wizard completed.  
- NAP policy enforcement settings.  
- A compliant client machine passing health validation.  

---

## 4. 🦠 Enabled and Configured Windows Defender Antivirus

Windows Defender Antivirus was configured across the domain.  
**Real-time protection** and **automatic updates** were enabled, along with **scheduled scans** to safeguard against malware.

📸 **Screenshots to include**:
- Windows Security dashboard showing Defender enabled.  
- Group Policy setting enforcing Defender configuration.  
- Scan results window confirming a completed scheduled scan.  

---

## 5. 💻 Secured Remote Desktop Access

Remote Desktop access was hardened by enabling **Network Level Authentication (NLA)**, restricting access to a **specific IP range**, and enforcing **strong authentication methods**.

📸 **Screenshots to include**:
- Remote Desktop Session Host Configuration showing NLA enabled.  
- Group Policy settings for RDP security.  
- RDP connection attempt from an allowed IP.  
- Failed attempt from a blocked/unauthorized IP.  

---

## 6. 📡 Secured DHCP Settings

DHCP was configured with security mechanisms to prevent **unauthorized IP leases**.  
I enabled DHCP filtering and restricted addresses to authorized clients only.

📸 **Screenshots to include**:
- DHCP console showing active scopes and filters.  
- Screenshot of an authorized MAC address filter.  
- Log entry showing blocked unauthorized DHCP request.  

---

## 7. ⚙️ Configured DNS Security

DNS Security Extensions (**DNSSEC**) were enabled to protect against spoofing and cache poisoning.  
Secure forwarding was also configured for trusted resolvers.

📸 **Screenshots to include**:
- DNS Manager console showing DNSSEC signed zone.  
- Properties of a zone with DNSSEC enabled.  
- Event Viewer log entry showing DNSSEC validation.  

---

## 8. 🚨 Reviewed Network Security Event Logs

I regularly checked **Event Viewer** for network security-related logs.  
This allowed early detection of blocked connections and suspicious authentication attempts.

📸 **Screenshots to include**:
- Event Viewer → Security log with blocked connection entries.  
- Event Viewer → Log showing failed login attempts.  

---

## 9. 🧪 Tested Network Security Configuration

The configuration was validated through **attack simulation** and **traffic analysis**.  
Using tools like **Nmap** and **Wireshark**, I confirmed that unauthorized connections were blocked and IPsec policies enforced encryption.

📸 **Screenshots to include**:
- Wireshark capture showing encrypted IPsec traffic.  
- Nmap scan results highlighting restricted ports.  
- Screenshot of blocked unauthorized connection attempt.  

---

## ✅ Summary

- All major **network security measures** were implemented and validated.  
- Screenshots serve as **evidence of proper configuration** and **defense-in-depth** implementation.  
- Testing confirmed that the system successfully blocks unauthorized access while protecting legitimate communications.  

---

Each image corresponds to a step described in 📂 `09-Infrastructure-Protection/II.Network-Security.md`.
