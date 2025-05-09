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

---

### 2. 🛠️ Configure WDS

After installation, I launched the **WDS Configuration Wizard** from the **WDS console**:

- **Server configuration**: Integrated with Active Directory
- **RemoteInstall folder location**: D:\RemoteInstall
- **PXE response settings**:
  - Respond to all client computers
  - Require administrator approval (for controlled testing)

📸 **WDS Configuration Wizard Summary Page**

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

