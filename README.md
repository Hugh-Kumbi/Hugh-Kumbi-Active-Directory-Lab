# 🛡️ Active Directory Home Lab - Windows Server 2025

Welcome to my Active Directory (AD) Home Lab, designed to simulate a small enterprise network using **Windows Server 2025** and **Windows 11 Pro** clients. This lab provides hands-on experience with deploying and managing AD, DNS, GPOs, and security policies in a virtualized environment using VirtualBox.

---

## 🎯 Key Learning Objectives

- Build and manage an Active Directory domain environment.
- Configure DNS and DHCP services for domain operations.
- Create and manage Group Policies to enforce security standards.
- Implement security policies like password complexity, account lockout, auditing, and firewall rules.
- Automate user environment management with logon/startup scripts.
- Protect the infrastructure with encryption and patch management.

---

## 🧰 Tools & Technologies

- **VirtualBox** – Virtualization platform
- **Windows Server 2025** – Domain Controller (AD DS, DNS, GPOs)
- **Windows 11 Pro** – Domain-joined clients
- **Group Policy Management Console (GPMC)** – Policy configuration
- **PowerShell / Command Prompt** – Administration and scripting
- **Active Directory Users and Computers (ADUC)** – User and group management

---

## 🗺️ Architecture Overview

Below is the high-level architecture of the lab environment:

📷 [View Architecture Diagram](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/tree/main/06-Screenshots/I.%20Planning)

---

## 📚 Documentation

All configuration steps, screenshots, and explanations are organized in folders for easy navigation.

🔗 [📚 View Full Table of Contents](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/Table-of-Contents.md)

---

## 🗂️ Project Structure

To ensure clarity, scalability, and professional documentation, I organized the lab into a structured folder hierarchy. Each main folder contains detailed explanations, configuration steps, and relevant screenshots. This layout allows for easy navigation, future expansion, and efficient reference as the environment evolves.

```plaintext
📂 Active-Directory-Lab
│── README.md
│── Table-of-Contents.md
│── 01-Planning/
│   ├── Overview.md
│   ├── Architecture-Diagram.png
│── 02-Environment-Setup/
│   ├── Windows-Server-Setup.md
│   ├── Windows-Client-Setup.md
│── 03-Configuration/
│   ├── Active-Directory-Setup.md
│   ├── GPO-Configurations.md
│   ├── DNS-Setup.md
│── 04-Security-Policies/
│   ├── Password-Policy.md
│   ├── Account-Lockout-Policy.md
│   ├── Audit-Policy.md
│── 05-Troubleshooting/
│   ├── Common-Issues.md
│── 06-Screenshots/
│   ├── Planning-And-Overview/
│   │   ├── Lab-Architecture.png
│   ├── Environment-Setup/
│   │   ├── Windows-Server-Installation.png
│   │   ├── Windows-11-Installation.png
│   ├── Configuration/
│   │   ├── Active-Directory-Installation.png
│   │   ├── DNS-Configuration.png
│   ├── Security-Policies/
│   │   ├── Password-Policy-Settings.png
│   │   ├── Audit-Policy-Settings.png
│   ├── User-Environment-Management/
│   │   ├── Logon-Script-Configuration.png
│   ├── Infrastructure-Protection/
│   │   ├── Firewall-Rules-Setup.png
│── 07-GPO-Security-Policies/
│   ├── GPO-Backup-Export.md
│   ├── GPO-Important-Settings.md
│── 08-User-Environment-Management/
│   ├── Logon-Scripts.md
│   ├── Startup-Scripts.md
│   ├── Group-Policy-Deployment.md
│── 09-Infrastructure-Protection/
│   ├── Windows-Firewall-Rules.md
│   ├── BitLocker-Encryption.md
│   ├── WSUS-Configuration.md
```

---

## 📘 License

MIT License

Copyright (c) 2025 Hugh Chanetsa

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES, OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
