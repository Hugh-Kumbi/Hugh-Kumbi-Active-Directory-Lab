# 02-Environment-Setup
This section outlines the step-by-step setup of the two Windows 11 Enterprise clients, and the overall network configuration.

## Windows 11 Enterprise Client Setup
### Client VMs:

  * `AD-WIN11-01` (IP: `192.168.1.20`)

 * `AD-WIN11-02` (IP: `192.168.1.30`)

## Steps Completed:
1. **Created two Windows 11 VMs** with the following specs each:

  * 2 vCPUs, 4GB RAM, 50GB storage

  * Attached the Windows 11 Enterprise ISO

2. **Installed Windows 11 Enterprise** and completed OOBE (Out-Of-Box Experience) setup

3. **Set static IP addresses** on each client

4. **Set Preferred DNS** to point to the domain controller (192.168.1.10)

5. **Renamed the clients** to `AD-WIN11-01` and `AD-WIN11-02` respectively

6. **Enabled Remote Desktop** for future access

7. **Installed VirtualBox Guest Additions** for smoother performance
