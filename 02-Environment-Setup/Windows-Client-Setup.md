🛠️ 02-Environment-Setup
This section outlines the step-by-step setup of the virtual machines used in the lab, including the installation and configuration of Windows Server 2025, two Windows 11 Enterprise clients, and the overall network configuration.

🖥️ Windows Server 2025 Installation & Configuration
VM Name: AD-DC-01
Operating System: Windows Server 2025
Roles: Domain Controller, DNS Server, DHCP Server

✅ Steps Completed:
Created a new VM in VirtualBox with the following specs:

4 vCPUs, 8GB RAM, 80GB storage

Attached the Windows Server 2025 ISO

Installed Windows Server 2025 and completed initial setup

Set a static IP address

IP: 192.168.1.10

Subnet Mask: 255.255.255.0

Gateway: 192.168.1.1

Preferred DNS: 192.168.1.10 (self)

Renamed the server to AD-DC-01

Updated Windows Server and enabled Remote Desktop for remote management

Prepared server for Active Directory Domain Services configuration in the next phase
