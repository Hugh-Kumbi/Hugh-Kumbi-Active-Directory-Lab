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

![DHCP Role Installation Summary](https://github.com/user-attachments/assets/50c9e7bb-3ce8-4a01-bd60-2bb15e5af80e)

---

### 2. ✅ Authorize the DHCP Server in Active Directory

After installation:

- Opened the **DHCP Console**
- Right-clicked the server name > `Authorize`
- Refreshed the console to confirm successful authorization

📸 **Authorized DHCP Server in DHCP Console**

![Authorized DHCP Server in DHCP Console](https://github.com/user-attachments/assets/72d15a7f-c8bb-4272-a88a-91daed81b7aa)

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

![DHCP Scope Name](https://github.com/user-attachments/assets/15542a48-a895-4170-80a9-e21c7c46af8c)

📸 **IP Address Range Configuration**

![IP Address Range](https://github.com/user-attachments/assets/7494b36d-eeb1-47b3-a51b-448806153068)

📸 **Lease Duration Configuration**

![Lease Duration](https://github.com/user-attachments/assets/b479bc6b-85b3-4f42-ab18-95b5f69c65ed)

📸 **Configure DHCP Options**

![Configure DHCP Options](https://github.com/user-attachments/assets/b9eaa2a3-1291-49a0-8f2e-a09dd63a4364)

📸 **Router (Default Gateaway) Configuration**

![Router (Default Gateaway)](https://github.com/user-attachments/assets/0eb1f2a3-6e09-4e0b-8bf8-cd07f901de6b)

📸 **Domain Name and DNS Servers Settings**

![Domain Name and DNS Servers Settings](https://github.com/user-attachments/assets/ef72d0b1-2126-4711-b2f3-93b32a0b62c9)

📸 **Activate Scope Settingsn**

![Activate Scope Settings](https://github.com/user-attachments/assets/cf34a1dc-3417-41cd-86e5-277deed5a91a)

📸 **Configured DHCP Scope Settings Confirmation**

![Configured DHCP Scope Settings Confirmation](https://github.com/user-attachments/assets/f58f5dd6-5afd-4c4f-bd66-b11bcef4dc8d)

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
