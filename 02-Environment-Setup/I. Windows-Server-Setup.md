# 🛠️ Windows Server 2025 Setup

In this stage, I installed and configured **Windows Server 2025** as the Domain Controller (DC) for my lab environment. The process included setting a static IP, maintaining the computer name, installing Active Directory Domain Services, and promoting the server to a DC.

---

## 💾 1. Installation

- Created a new virtual machine in **VirtualBox** with the following specs:
  - 4 GB RAM
  - 2 CPUs
  - 80 GB virtual hard drive
- Mounted the **Windows Server 2025 ISO** and completed the installation.
- Selected the **Standard Evaluation (Desktop Experience)** during setup.

📸 **Installation Setup Screen With Edition Selection:**

![Standard Evaluation (Desktop Experience)](https://github.com/user-attachments/assets/8265f6c7-e9c3-4134-9d0a-a82567a38632)

📸 **First Boot Desktop After Installation:**

![First Boot Desktop After Installation](https://github.com/user-attachments/assets/619605d5-750f-4948-bda0-6d491d057bda)

---

## 💻 2. Initial Configuration

After installation, I performed the following:

- Kept the machine name as `WIN-D2PQBCI88JQ`
- Set a **static IP address**: `192.168.1.10`
- Configured DNS to point to itself (`192.168.1.10`)
- Set the computer’s **time zone**

📸 **Network Settings Showing Static IP and DNS Config:**

![Network Settings Showing Static IP and DNS Config](https://github.com/user-attachments/assets/d0170b00-31ab-48cc-96e8-5b63ab36ee17)

📸 **System > About > Showing Kept Computer Name:**

![System About Showing Kept Computer Name](https://github.com/user-attachments/assets/7dc12389-7af9-486c-b9e7-b5dbfd4d7e76)

---

## 🧱 3. Installing AD DS Role

- Opened **Server Manager**
- Selected **Add Roles and Features**
- Installed the **Active Directory Domain Services (AD DS)** role

📸 **"Add Roles and Features Wizard" With AD DS Selected:**

![AD DS Selected in Add Roles and Features Wizard](https://github.com/user-attachments/assets/47187941-9d17-46ee-933d-238c215d06c7)

---

## 🏰 4. Promoting to Domain Controller

- Promoted the server to a DC using the post-installation wizard
- Created a **new forest** named `hughdomain.local`
- Accepted the default NetBIOS name: `HUGHDOMAIN`
- Rebooted the machine after setup completed

📸 **Domain Configuration Summary Before Installation:**

![Domain Configuration Summary Before Install](https://github.com/user-attachments/assets/280e0fbd-432e-4979-afb1-5de5f3a742b1)

📸 **Confirmation of Successful Promotion:**

![Confirmation of Successful Promotion](https://github.com/user-attachments/assets/aa3b0eab-428d-4f7b-9336-bc6e325cb2f9)

---

## 🧪 5. Post-Installation Checks

- Logged in using the domain admin account
- Verified domain controller health using `dcdiag` in PowerShell
- Ensured DNS was properly installed and functioning
- Confirmed that AD-related services were running

📸 **PowerShell with `dcdiag` Results:**

![PowerShell With dcdiag Results](https://github.com/user-attachments/assets/049a9c06-d3ad-4762-8825-cfa5d0d66d93)

📸 **DNS Manager Showing Forward Lookup Zone for `hughdomain.local`:**
  
![DNS Manager Showing Forward Lookup Zone For hughdomain local](https://github.com/user-attachments/assets/8aecd964-c65b-4048-ac74-0d2ac5bfe54a)

---

## 📦 Summary

| Configuration Item    | Value                             |
|------------------------|----------------------------------|
| Server Name            | WIN-D2PQBCI88JQ                  |
| Static IP              | 192.168.1.10                     |
| Domain Name            | hughdomain.local                 |
| DNS Server             | 192.168.1.10 (local)             |
| AD Role Installed      | Active Directory Domain Services |
| Domain Controller Type | New Forest                       |

---

## 📁 Screenshot Storage

All screenshots for this section can be found in:  
📂 [`06-Screenshots/II. Windows-Server-Setup
/Server Setup.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/Windows-Server-Setup/Screenshots.md)  
