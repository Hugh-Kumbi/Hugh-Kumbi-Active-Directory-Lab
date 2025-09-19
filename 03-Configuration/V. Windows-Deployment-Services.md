# 💻 Windows-Deployment-Services

## 🔍 Overview

In this section of my Active Directory lab, I configured **Windows Deployment Services (WDS)** on **Windows Server 2025** to enable centralized image-based deployment of Windows 11 to domain-joined client machines. WDS allows IT administrators to streamline operating system rollouts by booting client devices over the network and applying pre-configured images via PXE (Preboot Execution Environment).

This lab setup demonstrates how I managed a complete deployment cycle—from image capture to remote installation—using WDS and two Windows 11 clients joined to the AD domain.

---

## ⚙️ Configuration Steps

### 1. 📥 Install the WDS Role

Using **Server Manager**, I installed the **Windows Deployment Services** role.

- Role selected: `Windows Deployment Services`
- Services installed:
  - Deployment Server
  - Transport Server

📸 **WDS Role Installation in Server Manager**

<img width="1920" height="909" alt="WDS Role Installation in Server Manager" src="https://github.com/user-attachments/assets/52244292-df8d-4f4d-a7d1-87972617f019" />

---

### 2. 🛠️ Configure WDS

After installation, I launched the **WDS Configuration Wizard** from the **WDS console**:

- **Server configuration**: Integrated with Active Directory
- **RemoteInstall folder location**: D:\RemoteInstall
- **PXE response settings**:
  - Respond to all client computers
  - Require administrator approval (for controlled testing)

📸 **WDS Configuration Wizard Summary Page**

<img width="1920" height="909" alt="Configuring WDS" src="https://github.com/user-attachments/assets/e55afd25-0901-41a7-b1b7-a4a6ee32a83e" /><br />

<img width="1920" height="909" alt="Configuring WDS 1" src="https://github.com/user-attachments/assets/46f60ab9-af15-4dc7-99b7-52cf82743a33" /><br />

<img width="1920" height="909" alt="Configuring WDS 2" src="https://github.com/user-attachments/assets/0c803582-c457-4b18-96e5-29ff7911a16b" /><br />

<img width="1920" height="909" alt="Configuring WDS 3" src="https://github.com/user-attachments/assets/3434b547-b2bf-49c3-91ae-97b25842a42e" /><br />

<img width="1920" height="909" alt="Configuring WDS 4" src="https://github.com/user-attachments/assets/5323256c-8608-43e6-8c3f-2989da094f20" /><br />

<img width="1920" height="909" alt="Configuring WDS 5" src="https://github.com/user-attachments/assets/8d249e11-661b-4355-8621-9148459384b1" /><br />

<img width="1920" height="909" alt="Configuring WDS 6" src="https://github.com/user-attachments/assets/c8b2e6e6-42f8-4258-b53b-0a9d95261f82" /><br />

<img width="1920" height="909" alt="Configuring WDS 7" src="https://github.com/user-attachments/assets/3a30fbdc-8ffc-4e91-984a-9f9542cd1065" />

---

### 3. 💾 Add Boot and Install Images

I mounted a Windows 11 ISO and extracted the necessary files:

- **Boot Image**:  
  Located in `\sources\boot.wim`
- **Install Image**:  
  Located in `\sources\install.wim`

I added these to WDS via the **Boot Images** and **Install Images** nodes in the WDS console:

- Created a new **Image Group** for Windows 11
- Added the boot and install images to the appropriate categories

📸 **Boot and Install Images Added to WDS Console**

---

### 4. 🚀 Configure DHCP and PXE Boot

To support PXE boot:

- I verified **DHCP was running** on the domain controller
- Ensured the following DHCP options were configured:
  - Option 66: IP address of the WDS server
  - Option 67: `boot\x64\wdsmgfw.efi` (for UEFI systems)

📸 **DHCP Scope Options for PXE Boot**

---

### 5. 🖥️ Test PXE Boot on Windows 11 Clients

I configured two Windows 11 VMs to boot from network:

- Enabled PXE boot in the VM firmware settings
- Upon startup, the VMs received IP addresses and connected to the WDS server
- I selected the Windows 11 image and initiated deployment

📸 **PXE Boot Menu on Client**

📸 **Windows Setup Starting via Network**

---

### 6. ✅ Post-Deployment Domain Join and Setup

After image deployment:

- The Windows 11 clients booted successfully into the Windows 11 environment
- I joined both machines to the domain: `corp.local`
- Verified connectivity and domain group policy application

📸 **Client Machine Joined to Domain**

---

## ✏️ Summary

By configuring Windows Deployment Services on Windows Server 2025, I successfully deployed a standardized Windows 11 image to multiple clients over the network. This implementation demonstrates how to efficiently automate system provisioning in a scalable enterprise environment, ensuring consistency and reduced manual setup. The lab reflects my understanding of PXE, WDS, DHCP, and domain integration.

📸 **Client Desktop with Domain Info Displayed**

---

📁 5. Screenshot Storage
All screenshots related to GPOs should be saved in: 📂 06-Screenshots/GPO-Configurations.png
