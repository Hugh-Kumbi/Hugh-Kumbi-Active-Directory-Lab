🛠️ 02-Environment-Setup
This section outlines the step-by-step setup of the virtual machines used in the lab, including the installation and configuration of Windows Server 2025, two Windows 11 Enterprise clients, and the overall network configuration.

## Windows 11 Enterprise Client Setup
Client VMs:

AD-WIN11-01 (IP: 192.168.1.20)

AD-WIN11-02 (IP: 192.168.1.30)

✅ Steps Completed:
Created two Windows 11 VMs with the following specs each:

2 vCPUs, 4GB RAM, 50GB storage

Attached the Windows 11 Enterprise ISO

Installed Windows 11 Enterprise and completed OOBE (Out-Of-Box Experience) setup

Set static IP addresses on each client

Set Preferred DNS to point to the domain controller (192.168.1.10)

Renamed the clients to AD-WIN11-01 and AD-WIN11-02 respectively

Enabled Remote Desktop for future access

Installed VirtualBox Guest Additions for smoother performance

🌐 Network Configuration
✅ Steps Completed:
Set all VMs to "Internal Network" mode in VirtualBox to isolate the AD lab from the internet

Updated Windows Server and enabled Remote Desktop for remote management

Prepared server for Active Directory Domain Services configuration in the next phase
