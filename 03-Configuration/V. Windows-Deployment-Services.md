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
- **RemoteInstall folder location**: F:\RemoteInstall
- **PXE response settings**:
  - Respond to all client computers
  - Require administrator approval (for controlled testing)

📸 **WDS Configuration Wizard Summary Page**

<img width="1920" height="909" alt="Configuring WDS" src="https://github.com/user-attachments/assets/e55afd25-0901-41a7-b1b7-a4a6ee32a83e" /><br />

<img width="1920" height="909" alt="Configuring WDS 1" src="https://github.com/user-attachments/assets/46f60ab9-af15-4dc7-99b7-52cf82743a33" /><br />

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

<img width="1920" height="909" alt="Bootable Image Successfully Added" src="https://github.com/user-attachments/assets/6463a87b-be0c-4f52-b0d3-48915636707e" /><br />

<img width="1920" height="909" alt="Installing Image Successfully Completed 1" src="https://github.com/user-attachments/assets/0cd66fbe-4851-4786-887b-045ae45e9602" />

---

### 4. 🚀 Configure DHCP and PXE Boot

To support PXE boot:

- I verified **DHCP was running** on the domain controller
- Ensured the following DHCP options were configured:
  - Option 66: IP address of the WDS server
  - Option 67: `boot\x64\wdsmgfw.efi` (for UEFI systems)

📸 **DHCP Scope Options for PXE Boot**

<img width="1920" height="909" alt="Verifying set Options" src="https://github.com/user-attachments/assets/1b77db78-ed8b-49c2-a764-e3ad0c3f32de" />

---

### 5. 🖥️ Test PXE Boot on Windows 11 Clients

I configured two Windows 11 VMs to boot from network:

- Enabled PXE boot in the VM firmware settings
- Upon startup, the VMs received IP addresses and connected to the WDS server
- I selected the Windows 11 image and initiated deployment

📸 **PXE Boot Menu on Client**

<img width="640" height="480" alt="PXE Boot Menu on Client" src="https://github.com/user-attachments/assets/f0453f80-3eaa-4fae-b08f-1db79ad1d927" /><br />

<img width="1024" height="768" alt="PXE Boot Menu on Client 1" src="https://github.com/user-attachments/assets/8627358d-3b9b-442a-a8c6-2849859cc5f5" /><br />

<img width="1024" height="768" alt="PXE Boot Menu on Client 2" src="https://github.com/user-attachments/assets/09777c0d-a846-48a7-b815-489f6fe03f90" /><br />

<img width="1024" height="768" alt="PXE Boot Menu on Client 3" src="https://github.com/user-attachments/assets/a05f8f29-630f-4a29-875d-f813568a4b42" /><br />

<img width="1024" height="768" alt="PXE Boot Menu on Client 4" src="https://github.com/user-attachments/assets/2ec0eca0-3aaa-496e-ab0e-4bdeb35a6145" /><br />

📸 **Windows Setup Starting via Network**

<img width="1024" height="768" alt="Windows Setup Starting via Network" src="https://github.com/user-attachments/assets/9f192366-92c5-47bc-a4fb-8f8dbb6ac3e6" /><br />

<img width="1024" height="768" alt="Windows Setup Starting via Network 1" src="https://github.com/user-attachments/assets/55aa76ee-21a2-418e-b3db-0d1c192bbf76" /><br />

<img width="1024" height="768" alt="Windows Setup Starting via Network 2" src="https://github.com/user-attachments/assets/bcccfac3-916a-468f-a859-b75e3ccb8919" /><br />

<img width="1024" height="768" alt="Windows Setup Starting via Network 3" src="https://github.com/user-attachments/assets/5352bd04-cd3a-44d6-9202-81b1785a7db1" /><br />

<img width="1024" height="768" alt="Windows Setup Starting via Network 4" src="https://github.com/user-attachments/assets/57aba422-495a-4444-9c83-4a2b0e56e408" /><br />

<img width="1024" height="768" alt="Windows Setup Starting via Network 5" src="https://github.com/user-attachments/assets/332e161f-8c7c-464b-adc7-6c30162fa6e4" /><br />

<img width="1024" height="768" alt="Windows Setup Starting via Network 6" src="https://github.com/user-attachments/assets/1a7b9df6-b4d1-4d27-97e7-01b7d3a91fdd" /><br />

<img width="1024" height="768" alt="Windows Setup Starting via Network 7" src="https://github.com/user-attachments/assets/e31f4c40-8073-42ae-94c6-1ef28a826b6d" /><br />

<img width="1024" height="768" alt="Windows Setup Starting via Network 8" src="https://github.com/user-attachments/assets/1ad77543-7870-4c5c-b7af-b5fdffb475fb" /><br />

<img width="1024" height="768" alt="Windows Setup Starting via Network 9" src="https://github.com/user-attachments/assets/c9f740f8-d6e8-437b-b670-34946a38334e" /><br />

<img width="1024" height="768" alt="Windows Setup Starting via Network 10" src="https://github.com/user-attachments/assets/f4a304ad-ff57-4b01-bebf-54124fe56fd8" /><br />

<img width="1024" height="768" alt="Windows Setup Starting via Network 11" src="https://github.com/user-attachments/assets/2b9a770e-9b82-476e-bca1-4dc0f8a780ab" />

---

### 6. ✅ Post-Deployment Domain Join and Setup

After image deployment:

- The Windows 11 clients booted successfully into the Windows 11 environment
- I joined both machines to the domain: `hughdomain.local`
- Verified connectivity and domain group policy application

📸 **Client Machine Joined to Domain**

<img width="1920" height="909" alt="Client Machines Joined to Domain" src="https://github.com/user-attachments/assets/5980e1d4-6991-450d-a38b-3b505aaca29c" />

---

## ✏️ Summary

By configuring Windows Deployment Services on Windows Server 2025, I successfully deployed a standardized Windows 11 image to multiple clients over the network. This implementation demonstrates how to efficiently automate system provisioning in a scalable enterprise environment, ensuring consistency and reduced manual setup. The lab reflects my understanding of PXE, WDS, DHCP, and domain integration.

📸 **Client Desktop with Domain Info Displayed**

<img width="1024" height="768" alt="Login Screen With Domain Name Shown" src="https://github.com/user-attachments/assets/056f3ff4-3e86-40f7-82a7-db89440b0264" />

---

## 📁 7. Screenshot Storage

All screenshots for this section can be found in:<br />
📂 [`06-Screenshots/VIII. Windows-Deployment-Services`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/VIII.%20Windows-Deployment-Services/README.md)
