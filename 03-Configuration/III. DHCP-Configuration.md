# 📡 DHCP-Configuration

## 📝 Overview

In this section of my Active Directory lab, I configured the **Dynamic Host Configuration Protocol (DHCP)** on **Windows Server 2025** to automatically assign IP addresses to domain-joined **Windows 11 clients**. Centralized DHCP management ensures reliable network communication, minimizes manual errors, and simplifies IP address allocation in enterprise environments.

---

## 🛠️ Configuration Steps

### 1. ⚙️ Install DHCP Server Role

I used **Server Manager** to install the **DHCP Server** role:

- Launched the **Add Roles and Features Wizard**
- Selected the role: `DHCP Server`
- Completed the wizard and confirmed the installation

📸 **DHCP Role Installation Summary**

![DHCP Role Installation Summary](https://github.com/user-attachments/assets/a8262d04-f17c-4f8d-8c6a-b7a3e4b759d6)

---

### 2. ✅ Authorize the DHCP Server in Active Directory

After installation:

- Opened the **DHCP Console**
- Right-clicked the server name > `Authorize`
- Refreshed the console to confirm successful authorization

📸 **Authorized DHCP Server in DHCP Console**

![DHCP Post-Install Configuration 2](https://github.com/user-attachments/assets/59565a59-559f-45fb-8b94-fa970d95828d)

---

### 3. 🌐 Create and Configure DHCP Scope

To distribute IP addresses to the Windows 11 clients:

- In the DHCP Console:
  - Right-clicked `IPv4` > `New Scope...`
  - Entered:
    - **Scope Name**: `Lab Scope`
    - **IP Range**: `192.168.1.100` to `192.168.1.200`
    - **Subnet Mask**: `255.255.255.0`
    - **Default Gateway**: `192.168.1.1`
    - **DNS Server**: Set to the domain controller’s IP `192.168.1.10`
- Activated the scope after configuration

📸 **DHCP Scope Name**

![DHCP Scope Name](https://github.com/user-attachments/assets/d1b68a3c-d6d3-44c5-adff-cdd852b1d3a4)

📸 **IP Address Range Configuration**

![IP Address Range Configuration](https://github.com/user-attachments/assets/7b73483a-404c-4982-a87e-c71a941e0306)

📸 **Lease Duration Configuration**

![DHCP Scope Configuration Settings 4](https://github.com/user-attachments/assets/7f595ac6-d22f-4fdc-b2d3-d415a35918ac)

📸 **Configure DHCP Options**

![Configure DHCP Options](https://github.com/user-attachments/assets/e7f99d5f-87f1-4660-ace7-068578065ac4)

📸 **Router (Default Gateaway) Configuration**

![Router (Default Gateaway) Configuration](https://github.com/user-attachments/assets/450d4e51-095b-44c4-8181-b50739956883)

📸 **Domain Name and DNS Servers Settings**

![Domain Name and DNS Servers Settings](https://github.com/user-attachments/assets/aebbac62-9621-46a8-af49-a76a1aecde06)

📸 **Activate Scope Settings**

![DHCP Scope Configuration Settings 9](https://github.com/user-attachments/assets/78a78541-956e-4e29-af29-36fc42a8c2c3)

📸 **Configured DHCP Scope Settings Confirmation**

![DHCP Scope Configuration Settings 11](https://github.com/user-attachments/assets/aca761a4-985f-40da-91e4-253ad19d5e9c)

---

### 4. 🔍 Verify DHCP Client IP Allocation

On both Windows 11 clients:

- Set network adapters to obtain IP addresses automatically
- Ran `ipconfig /release` followed by `ipconfig /renew` from Command Prompt
- Verified that each client received an IP from the DHCP scope

📸 **ipconfig Output Showing Assigned IPs on Both Clients**

---

### 5. 🔄 Confirm Leases in DHCP Console

Back on the DHCP server:

- Navigated to:
  `DHCP > IPv4 > Lab Scope > Address Leases`
- Verified both clients appeared with their assigned IP addresses and hostnames

📸 **DHCP Address Leases Showing Both Clients**

---

## ✍️ Summary

This DHCP configuration allows for seamless, automatic IP address management in the lab environment. By integrating DHCP with the domain setup, I enabled centralized control of network resources and reduced the risk of IP conflicts or manual misconfiguration.

**💼 Key skills demonstrated:**

- Installing and authorizing the DHCP server role
- Creating and managing IP address scopes
- Verifying client DHCP leases
- Ensuring dynamic, domain-aware network configuration

📸 **Final DHCP Dashboard and Scope Overview**

---

## 📁 6. Screenshot Storage

All screenshots for this section should be placed in:  
📂 [`06-Screenshots/IV. Active-Directory-Setup.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/IV.%20Active-Directory-Setup/README.md)
