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

### 2. ✅ Authorized the DHCP Server in Active Directory

After installation:

- Opened the **DHCP Console**
- Right-clicked the server name > `Authorize`
- Refreshed the console to confirm successful authorization

📸 **Authorized DHCP Server in DHCP Console**

![DHCP Post-Install Configuration 2](https://github.com/user-attachments/assets/59565a59-559f-45fb-8b94-fa970d95828d)

---

### 3. 🌐 Created and Configure DHCP Scope

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

📸 **Configured DHCP Options**

![Configure DHCP Options](https://github.com/user-attachments/assets/e7f99d5f-87f1-4660-ace7-068578065ac4)

📸 **Router (Default Gateaway) Configuration**

![Router (Default Gateaway) Configuration](https://github.com/user-attachments/assets/450d4e51-095b-44c4-8181-b50739956883)

📸 **Domain Name and DNS Servers Settings**

![Domain Name and DNS Servers Settings](https://github.com/user-attachments/assets/aebbac62-9621-46a8-af49-a76a1aecde06)

📸 **Activated Scope Settings**

![DHCP Scope Configuration Settings 9](https://github.com/user-attachments/assets/78a78541-956e-4e29-af29-36fc42a8c2c3)

📸 **Configured DHCP Scope Settings Confirmation**

![DHCP Scope Configuration Settings 11](https://github.com/user-attachments/assets/aca761a4-985f-40da-91e4-253ad19d5e9c)

---

### 4. 🔍 Verify DHCP Client IP Allocation

On both Windows 11 clients:

- Set network adapters to obtain IP addresses automatically
- Ran `ipconfig /release` followed by `ipconfig /renew` from Command Prompt
- Verified that each client received an IP from the DHCP scope

📸 **`ipconfig` Output Showing Assigned IPs on `AD-WIN11-01`**

<img width="1920" height="909" alt="ipconfig Output Showing Assigned IPs on AD-WIN11-01" src="https://github.com/user-attachments/assets/fbc5b1f8-e41a-4503-b575-32f8e7695e66" /><br />

<img width="1920" height="909" alt="ipconfig Output Showing Assigned IPs on AD-WIN11-01 1" src="https://github.com/user-attachments/assets/2ab9174d-3331-4957-8154-1d4b71cf57a9" /><br />

📸 **`ipconfig` Output Showing Assigned IPs on `AD-WIN11-02`**

<img width="1920" height="909" alt="ipconfig Output Showing Assigned IPs on AD-WIN11-02" src="https://github.com/user-attachments/assets/28fbe6ed-b47f-420d-a297-60434e6684df" /><br />

<img width="1920" height="909" alt="ipconfig Output Showing Assigned IPs on AD-WIN11-01 1" src="https://github.com/user-attachments/assets/7e6c3720-3db5-426d-b207-9bc7a314b5b1" /><br />

---

### 5. 🔄 Confirm Leases in DHCP Console

Back on the DHCP server:

- Navigated to:
  `DHCP > IPv4 > Lab Scope > Address Leases`
- Verified both clients appeared with their assigned IP addresses and hostnames

📸 **DHCP Address Leases Showing Both Clients**

<img width="1920" height="909" alt="DHCP Address Leases Showing Both Clients" src="https://github.com/user-attachments/assets/08fc0d95-cee4-455a-9062-eb59a1075752" /><br />

---

## ✍️ Summary

This DHCP configuration allows for seamless, automatic IP address management in the lab environment. By integrating DHCP with the domain setup, I enabled centralized control of network resources and reduced the risk of IP conflicts or manual misconfiguration.

**💼 Key skills demonstrated**

- Installing and authorizing the DHCP server role
- Creating and managing IP address scopes
- Verifying client DHCP leases
- Ensuring dynamic, domain-aware network configuration

📸 **Final DHCP Dashboard and Scope Overview**

<img width="1920" height="909" alt="Final DHCP Dashboard and Scope Overview" src="https://github.com/user-attachments/assets/07104801-01ac-4a3d-ada3-35683725e49d" /><br />

<img width="1920" height="909" alt="Final DHCP Dashboard and Scope Overview1" src="https://github.com/user-attachments/assets/a696fccc-3baf-45f2-9b97-424b74d135e5" /><br />

<img width="1920" height="909" alt="Final DHCP Dashboard and Scope Overview2" src="https://github.com/user-attachments/assets/ebb380d4-b1b6-4f3f-b375-98562a4442b4" /><br />

---

## 📁 6. Screenshot Storage

All screenshots for this section can be found in:<br /> 
📂 [`06-Screenshots/VI. DHCP-Configuration`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/tree/main/06-Screenshots/VI.%20DHCP-Configuration)
