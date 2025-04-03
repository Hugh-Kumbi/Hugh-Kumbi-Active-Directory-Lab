## Project Goals
The goal of this project is to build a **fully functional Active Directory (AD) home lab** for hands-on learning and security testing. This lab simulates a real-world enterprise environment and allows me to:

**- Deploy & Configure Active Directory on Windows Server 2025.**

**- Manage User Accounts & Security Groups** to control access.

**- Implement Group Policy Objects (GPOs)** for system hardening and automation.

**- Configure DNS & DHCP** for network name resolution and IP address assignment.

**- Enhance Security** by applying industry best practices (password policies, account lockout, RDP restrictions, etc.).

**- Troubleshoot Common AD Issues** and improve problem-solving skills.

This project strengthens my **Active Directory, Windows Server, and enterprise security administration skills,** making it a key addition to my cybersecurity portfolio.

## Architecture Diagram
The following diagram illustrates the Active Directory lab network topology:

+--------------------------+                +---------------------------+
|    Windows Server 2025   |                |    Windows 11 Client 1    |
|    Domain Controller     |                |    (AD-WIN11-01)          |
|    hughdomain.local      |                |    192.168.1.20           |
|    192.168.1.10          |                |    Joined to AD Domain    |
+--------------------------+                +---------------------------+
          |  (DNS, DHCP)                                  |
          |                                              |
+---------------------------+                +--------------------------+
|    Windows 11 Client 2    |                |    Router / Firewall     |
|    (AD-WIN11-02)          |                |    192.168.1.1           |
|    192.168.1.30           |                |    NAT / Internet        |
|    Joined to AD Domain    |                +--------------------------+
+---------- ----------------+
## Pre-requisites
Before setting up the Active Directory lab, I ensured that I had the following:

## Hardware Requirements
**- Host Machine:** Mac computer (running VirtualBox)

**- Virtualization Software:** VirtualBox

  **- System Resources:**

    **- Windows Server 2025 VM:** 4 vCPUs, 8GB RAM, 80GB Storage

    **- Windows 11 Clients (2):** 2 vCPUs, 4GB RAM, 50GB Storage (each)

### Software Requirements
**Windows Server 2025 ISO** for the Domain Controller

**Windows 11 Enterprise ISO** for client machines

**VirtualBox Guest Additions** for smooth VM performance

### Networking Setup
**- Static IP Addressing:** Ensured all machines had static IPs assigned

**- DNS Configuration:** Windows Server 2025 serves as the DNS Server

**- Domain Name:** 'hughdomain.local'
