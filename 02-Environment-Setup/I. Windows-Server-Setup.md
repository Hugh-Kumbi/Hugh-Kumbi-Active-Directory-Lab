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

![Network Settings Showing Static IP and DNS Config 1](https://github.com/user-attachments/assets/9dbc64e7-e854-4573-a383-d46e458b3c18)

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

![Promoting Server to Domain Controller 5](https://github.com/user-attachments/assets/5d1fce70-9210-4f4f-be7a-61bb0dd29ca4)

📸 **Confirmation of Successful Promotion**

![Promoting Server to Domain Controller 7](https://github.com/user-attachments/assets/f339e91d-6469-4db4-8589-047feb46958e)

![Confirmation of Successful Promotion](https://github.com/user-attachments/assets/fe5a27cd-e662-47ab-a8a5-4203b19b43b9)

---

## 🧪 5. Post-Installation Checks

- Logged in using the domain admin account
- Verified domain controller health using `dcdiag` in PowerShell
- Ensured DNS was properly installed and functioning
- Confirmed that AD-related services were running

📸 **PowerShell With `dcdiag` Results**

![PowerShell With dcdiag Results](https://github.com/user-attachments/assets/b0b55f72-0cbd-4034-ab04-dd87a585fee8)

![PowerShell With dcdiag Results 1](https://github.com/user-attachments/assets/d052baa0-9798-463d-803a-b9fe65ee006d)

![PowerShell With dcdiag Results 2](https://github.com/user-attachments/assets/a30a8dad-45c0-4c5f-8920-1f1d2bdfb269)

![PowerShell With dcdiag Results 3](https://github.com/user-attachments/assets/dcb8c2e7-b5b6-4198-a1df-e5231ffc3812)

![PowerShell With dcdiag Results 4](https://github.com/user-attachments/assets/961ab258-2e5b-4309-b827-6afd8d3ccd2c)

![PowerShell With dcdiag Results 5](https://github.com/user-attachments/assets/fcee262a-37f8-4bb9-b3a2-4ecf0dc41b69)

![PowerShell With dcdiag Results 6](https://github.com/user-attachments/assets/b8a67ce3-3ae8-4298-8b77-d1f21bab1b8d)

![PowerShell With dcdiag Results 7](https://github.com/user-attachments/assets/6cc40123-f283-4176-a17c-3922beb50bd3)

📸 **DNS Manager Showing Forward Lookup Zone for `hughdomain.local`**
  
![DNS Manager Showing Forward Lookup Zone for hughdomain](https://github.com/user-attachments/assets/f08e7ca0-a52e-430a-b76e-e05361b522cf)

---

## 📦 6. Summary

| Configuration Item         | Value                            |
|----------------------------|----------------------------------|
| **Server Name**            | WinServer2025                    |
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
