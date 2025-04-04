# 02-Environment-Setup
This section outlines the step-by-step installation and configuration of Windows Server 2025.

## Windows Server 2025 Installation & Configuration
**VM Name:** `WS-2025-DC`
**Operating System:** Windows Server 2025
**Roles:** Domain Controller, DNS Server, DHCP Server

## Steps Completed:
**1. Created a new VM** in VirtualBox with the following specs:

  * 4 vCPUs, 8GB RAM, 80GB storage

  * Attached the Windows Server 2025 ISO

**2. Installed Windows Server 2025** and completed initial setup

**3. Set a static IP address**

  * IP: 192.168.1.10

  * Subnet Mask: 255.255.255.0

  * Gateway: 192.168.1.1
 
  * Preferred DNS: 192.168.1.10 (self)

**4. Renamed the server** to `WS-2025-DC`

**5. Updated Windows Server** and enabled Remote Desktop for remote management

**6. Prepared server** for Active Directory Domain Services configuration in the next phase
Validated name resolution (after DNS setup) to confirm proper hostname resolution in future phases
