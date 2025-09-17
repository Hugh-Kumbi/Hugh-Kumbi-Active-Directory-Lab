# 📡 DHCP-Configuration for Active Directory

This section details the deployment and configuration of a **Dynamic Host Configuration Protocol (DHCP)** server on **Windows Server 2025** within an isolated Active Directory domain (`hughdomain.local`). The primary objective was to automate IP address management for domain-joined **Windows 11 Pro clients**, eliminating manual configuration, preventing IP conflicts, and establishing a centralized networking foundation that mirrors enterprise environments.

---

## 🔧 Configuration Steps Summary

### 1. Installation and Authorization
-   Installed the DHCP Server role via Server Manager's "Add Roles and Features Wizard."
-   **Authorized the server** in Active Directory through the DHCP console, a critical security step to prevent rogue DHCP servers on the network.

📸 **Server Manager Summary**

<img width="1920" height="909" alt="Add Roles and Features Wizard with DHCP Server Role Selected 9" src="https://github.com/user-attachments/assets/f204ddfa-8f71-471a-a7ff-bb097ae7db7f" /><br />

📸 **Server Authorization**

<img width="1920" height="909" alt="DHCP Post-Install Configuration 2" src="https://github.com/user-attachments/assets/410ec77d-e435-4be2-9e0c-7129afadd852" />

### 2. Scope Creation and Configuration
-   Created a new IPv4 scope named `Hughdomain-Clients` with the range `192.168.1.100` to `192.168.1.200`.
-   Configured essential DHCP Options:
    -   **003 Router (Default Gateway):** `192.168.1.1`
    -   **006 DNS Servers:** `192.168.1.10` (The domain controller) - *The most critical option for AD integration.*

📸 **Router (Default Gateway) Configuration**

<img width="1920" height="909" alt="DHCP Scope Configuration Settings 6" src="https://github.com/user-attachments/assets/ec0c3267-414a-42b2-9a75-55bc127a7f2b" /><br />

📸 **DNS Servers Configuration**

<img width="1920" height="909" alt="DHCP Scope Configuration Settings 7" src="https://github.com/user-attachments/assets/cae96d85-960d-4c98-9dea-e974b2beefe4" /><br />

---

### 3. Client Configuration and Verification
-   Configured Windows 11 Pro clients network adapters for automatic (DHCP) IP and DNS acquisition.
-   Executed `ipconfig /release` and `ipconfig /renew` to force a DHCP request.
-   Verified successful addressing via `ipconfig /all`, confirming:
    -   IP assignment from the defined scope.
    -   DHCP Server: `192.168.1.10`
    -   DNS Server: `192.168.1.10`

📸 **AD-WIN11-01 Client Configuration and Verification**

<img width="1920" height="909" alt="ipconfig Output Showing Assigned IPs on AD-WIN11-01" src="https://github.com/user-attachments/assets/5e4ad70e-13ce-40d8-9221-7d5a01ac8d0e" /><br />

<img width="1920" height="909" alt="ipconfig Output Showing Assigned IPs on AD-WIN11-01 1" src="https://github.com/user-attachments/assets/4f273f81-2970-4830-b57c-032b68e59601" /><br />

📸 **AD-WIN11-01 Client Configuration and Verification**

<img width="1920" height="909" alt="ipconfig Output Showing Assigned IPs on AD-WIN11-02" src="https://github.com/user-attachments/assets/1d425cab-32f0-448a-816f-a6cf68a5a248" />

<img width="1920" height="909" alt="ipconfig Output Showing Assigned IPs on AD-WIN11-02 1" src="https://github.com/user-attachments/assets/b071240b-9d58-4404-95ea-5b1b4ff29f33" />

---

### 4. Server-Side Lease Verification
-   Confirmed active client leases in the **DHCP Console** under `Address Leases`, providing definitive server-side proof of functionality.

## Evidence of Success
The implementation was validated through server and client-side screenshots, proving a fully operational state.


📸 **Authorized DHCP Server Console** 
Green checkmark confirms successful AD authorization. 

![Authorized DHCP Server](https://github.com/user-attachments/assets/59565a59-559f-45fb-8b94-fa970d95828d)

📸 **Final DHCP Dashboard & Scope Overview** 
Comprehensive view showing the active scope and client leases. 

![Final DHCP Dashboard](https://github.com/user-attachments/assets/07104801-01ac-4a3d-ada3-35683725e49d) 

📸 **Client IP Assignment (`ipconfig /all`)** 
Proof of successful dynamic addressing and correct DNS configuration. 

![Client ipconfig](https://github.com/user-attachments/assets/fbc5b1f8-e41a-4503-b575-32f8e7695e66)

📸 **Active Address Leases** 
The DHCP server correctly listing leased clients by hostname and IP. 

![Address Leases](https://github.com/user-attachments/assets/08fc0d95-cee4-455a-9062-eb59a1075752)

---

## 🎯 Key Objectives Achieved

-   **Centralized IP Management:** Automate the allocation of IP addresses and critical network settings from a single server.
-   **Active Directory Integration:** Ensure clients automatically receive the correct DNS server setting (pointing to the Domain Controller) to maintain seamless domain functionality.
-   **Operational Verification:** Confirm the server successfully authorizes and leases addresses, and clients correctly receive their configuration.

---

## ✅ Conclusion

This DHCP deployment successfully created a robust, self-managing network infrastructure for the Active Directory lab. The configuration ensures:
-   **Reliability:** Eliminates manual IP configuration errors and conflicts.
-   **AD Integration:** Clients are automatically configured to use the domain's DNS service, which is fundamental for authentication, Group Policy, and domain resource discovery.
-   **Enterprise Relevance:** Demonstrates core infrastructure management skills required in professional IT environments, including centralized control and security best practices (server authorization).

This setup forms the reliable networking backbone for all subsequent services and testing within the lab environment.

The above image corresponds to a step described in:<br /> 
📂 [`03-Configuration/III. DHCP-Configuration.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/03-Configuration/III.%20DHCP-Configuration.md)
