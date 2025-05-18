# 🛠️ Windows Server 2025 Setup

In this stage, I installed and configured **Windows Server 2025** as the Domain Controller (DC) for my lab environment. The process included setting a static IP, maintaining the computer name, installing Active Directory Domain Services, and promoting the server to a DC.

---

## 💾 1. Installation

- Created a new virtual machine in **VirtualBox** with the following specs:
  - 4 GB RAM
  - 2 CPUs
  - 80 GB virtual hard drive
- Mounted the **Windows Server 2025 ISO** and completed the installation.
- Selected the **Datacenter Evaluation (Desktop Experience)** during setup.

📸 **Installation Setup Screen With Edition Selection**

![Windows Server Setup 3](https://github.com/user-attachments/assets/915a6e00-5202-4e3c-a4fc-601ce180731a)

📸 **First Boot Desktop After Installation**

![First Boot Desktop After Installation](https://github.com/user-attachments/assets/077f8658-6c5d-4ac0-b9c6-9f02d1fc6266)

---

## 💻 2. Initial Configuration

After installation, I performed the following:

- Changed the machine name to `WinServer2025`
- Set a **static IP address**: `192.168.1.10`
- Configured DNS to point to itself (`192.168.1.10`)
- Set the computer’s **time zone**

📸 **Network Settings Showing Static IP and DNS Config**

![Network Settings Showing Static IP and DNS Config](https://github.com/user-attachments/assets/fd27467c-fbfc-4ee4-8cdb-48b6f9a58cd4)

📸 **System > About > Showing Changed Computer Name**

![System - About - Showing Changed Computer Name](https://github.com/user-attachments/assets/a7de73d0-1690-40c1-8836-4be64b97c13b)

---

## 🧱 3. Installing AD DS Role

- Opened **Server Manager**
- Selected **Add Roles and Features**
- Installed the **Active Directory Domain Services (AD DS)** role

📸 **"Add Roles and Features Wizard" With AD DS Selected**

![Add Roles and Features Wizard With AD DS Selected 3](https://github.com/user-attachments/assets/5cd38039-3f07-4bac-bfa1-e13427d5474f)

---

## 🏰 4. Promoting to Domain Controller

- Promoted the server to a DC using the post-installation wizard
- Created a **new forest** named `hughdomain.local`
- Accepted the default NetBIOS name: `HUGHDOMAIN`
- Rebooted the machine after setup completed

📸 **Domain Configuration Summary Before Installation**

![Domain Configuration Summary Before Install](https://github.com/user-attachments/assets/280e0fbd-432e-4979-afb1-5de5f3a742b1)

📸 **Confirmation of Successful Promotion**

![Confirmation of Successful Promotion](https://github.com/user-attachments/assets/aa3b0eab-428d-4f7b-9336-bc6e325cb2f9)

---

## 🧪 5. Post-Installation Checks

- Logged in using the domain admin account
- Verified domain controller health using `dcdiag` in PowerShell
- Ensured DNS was properly installed and functioning
- Confirmed that AD-related services were running

📸 **PowerShell With `dcdiag` Results**

![PowerShell With dcdiag Results](https://github.com/user-attachments/assets/049a9c06-d3ad-4762-8825-cfa5d0d66d93)

📸 **DNS Manager Showing Forward Lookup Zone for `hughdomain.local`**
  
![DNS Manager Showing Forward Lookup Zone For hughdomain local](https://github.com/user-attachments/assets/8aecd964-c65b-4048-ac74-0d2ac5bfe54a)

---

## 📦 6. Summary

| Configuration Item         | Value                            |
|----------------------------|----------------------------------|
| **Server Name**            | WIN-D2PQBCI88JQ                  |
| **Static IP**              | 192.168.1.10                     |
| **Domain Name**            | hughdomain.local                 |
| **DNS Server**             | 192.168.1.10 (local)             |
| **AD Role Installed**      | Active Directory Domain Services |
| **Domain Controller Type** | New Forest                       |

---

## 📁 7. Screenshot Storage

All screenshots for this section can be found in:  
📂 [`06-Screenshots/II. Windows-Server-Setup
/Server Setup.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/II.%20Windows-Server-Setup/README.md)  
