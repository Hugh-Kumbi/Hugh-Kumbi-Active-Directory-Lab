# 🖼️ Lab Architecture Overview
This screenshot illustrates the overall design and architecture of the Active Directory lab environment I built. It outlines the core components of the lab, including:

- **Domain Controller (Windows Server 2025)**
    Acts as the central authority for authentication, DNS, DHCP, and Group Policy.

- **Client Machines (Windows 11 Enterprise)**
    Two clients are joined to the domain to simulate a small enterprise environment.

- **Network Configuration**
    The setup includes a NAT network within VirtualBox with static IP addressing for the server and DHCP for the clients.

This architecture provided the foundation for all the configurations and simulations performed throughout the lab. It helped guide the logical deployment of features like DNS, DHCP, user management, and GPO policies.

![Lab Architecture](https://github.com/user-attachments/assets/9e0f2334-a862-4b43-ac28-52cf6861c98d)
