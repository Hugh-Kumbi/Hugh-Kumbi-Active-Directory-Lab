# 🖥️ Environment Setup

## 📘 Overview

This section of the Active Directory Lab focuses on setting up the foundational environment required for deploying Active Directory services. It encompasses the installation and configuration of Windows Server and Windows Client operating systems within a virtualized environment, ensuring a controlled and isolated setup for testing and learning purposes.

---

## 🏗️ 1. Windows Server Setup

### 📝 Description

The initial step involves setting up a Windows Server machine that will later be configured as a Domain Controller. This server will host the Active Directory Domain Services (AD DS) and manage domain resources.

### 🛠️ Steps Performed

- **Installation of Windows Server:** Deployed Windows Server 2025 on a virtual machine using a hypervisor called VirtualBox.
- **System Configuration:**
  - Assigned a static IP address to ensure consistent network communication.
  - Changed the server hostname to `WinServer2025` for easier identification.
  - Updated the system with the latest patches and updates to ensure security and stability.

Detailed instructions and configurations can be found in the [`I. Windows-Server-Setup`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/02-Environment-Setup/I.%20Windows-Server-Setup.md) file.

---

## 🖥️ 2. Windows Client Setup

### 📝 Description

Set up Windows Client machines that will later join the Active Directory domain. These clients will be used to simulate user workstations within the domain environment.

### 🛠️ Steps Performed

- **Installation of Windows Client OS:** Deployed Windows 11 on virtual machines.
- **System Configuration:**
  - Configured network settings to communicate with the Domain Controller.
  - Changed the client machines to identifiable hostnames namely `AD-WIN11-01` & `AD-WIN11-02`.
  - Updated the systems with the latest patches and updates.

Detailed instructions and configurations can be found in the [`II. Windows-Client-Setup`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/02-Environment-Setup/II.%20Windows-Client-Setup.md) file.

---

## 📂 Files Included

- [`I. Windows-Server-Setup`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/02-Environment-Setup/I.%20Windows-Server-Setup.md): Step-by-step guide for installing and configuring the Windows Server operating system.
- [`II. Windows-Client-Setup`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/02-Environment-Setup/II.%20Windows-Client-Setup.md): Instructions for setting up Windows Client machines to prepare them for domain joining.
- [`README`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/02-Environment-Setup/README.md): This documentation file summarizing the environment setup steps and their significance.

---

## ✅ Outcome

By completing these setup steps:
- **Prepared a Virtualized Environment:** Established isolated virtual machines for both server and client systems, facilitating a controlled lab setup.
- **Ensured Network Communication:** Configured network settings to allow seamless communication between the server and client machines.
- **Laid the Foundation for Active Directory Deployment:** Set up the necessary infrastructure to proceed with Active Directory installation and configuration in subsequent steps.

---

## 📚 References

[Building an Active Directory Home Lab](https://medium.com/@gwenilorac/empowering-your-learning-journey-building-an-active-directory-home-lab-807c436a7f04)

[Create Active Directory Test Environment (Complete Guide)](https://activedirectorypro.com/create-active-directory-test-environment/)

[Home Lab Series: Setting Up an Active Directory Environment](https://medium.com/@josegpach/home-lab-series-setting-up-an-active-directory-environment-19a3fc938463)
