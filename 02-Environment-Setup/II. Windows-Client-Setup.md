![VirtualBox VM settings for DESKTOP-2N3JERQ 3](https://github.com/user-attachments/assets/501b0b02-18ed-4141-9eb4-7722a82e4f5f)# 💻 Windows 11 Client Setup

This section details how I configured and joined two Windows 11 Enterprise clients—**DESKTOP-74HPA3F** and **DESKTOP-2N3JERQ**—to my domain `hughdomain.local`.

---

## 🖥️ 1. Virtual Machine Configuration

I created two new VMs in **VirtualBox** with the following specifications:

- **VM Names:** DESKTOP-74HPA3F and DESKTOP-2N3JERQ
- **OS:** Windows 11 Pro
- **RAM:** 4 GB each
- **CPU:** 2 cores each
- **Disk:** 50 GB each
- Network Adapter: **Internal Network** (same as Domain Controller)

📸 **Screenshot suggestion:**
![VirtualBox VM settings for DESKTOP-2N3JERQ 1](https://github.com/user-attachments/assets/3b785c61-b39c-4bbf-8f2b-835eb31921fe)

![VirtualBox VM settings for DESKTOP-2N3JERQ 2](https://github.com/user-attachments/assets/796dd80a-70fe-4fc6-a990-0032bd4d966f)

![VirtualBox VM settings for DESKTOP-2N3JERQ 3](https://github.com/user-attachments/assets/e0dd9fb2-2906-4ffd-b09c-ed9d6ddec9fd)

![VirtualBox VM settings for DESKTOP-2N3JERQ 4](https://github.com/user-attachments/assets/2569c935-b009-4b5a-a89a-a43f24f185eb)

![VirtualBox VM settings for DESKTOP-2N3JERQ 5](https://github.com/user-attachments/assets/1dfa3395-88ea-43cd-b2b9-6244dde283f3)

![VirtualBox VM settings for DESKTOP-2N3JERQ 6](https://github.com/user-attachments/assets/096aa30b-7818-4bfd-bde1-cc75df1d117d)

![VirtualBox VM settings for DESKTOP-2N3JERQ 7](https://github.com/user-attachments/assets/c39d4368-7aab-4a02-b633-e74398ba9ce6)

![VirtualBox VM settings for DESKTOP-2N3JERQ 8](https://github.com/user-attachments/assets/409c0327-845e-4940-b192-173071cbe949)

---

## 🌐 2. Network & Hostname Setup

After installation, I did the following on both clients:

- Renamed the machines to:
  - `AD-WIN11-01`
  - `AD-WIN11-02`
- Set static IP addresses and DNS:
  - AD-WIN11-01: `192.168.1.20`
  - AD-WIN11-02: `192.168.1.30`
- Set Preferred DNS to point to the Domain Controller: `192.168.1.10`
- Restarted each machine to apply changes

📸 **Screenshot suggestion:**
- Network settings with static IP and DNS  
- System > About > showing new computer names

---

## 🏢 3. Joining the Domain

On each client:

1. Opened **Settings > System > About > Rename this PC (Advanced)**
2. Selected **Domain Join**, entered `hughdomain.local`
3. Supplied credentials for a domain admin account
4. Restarted the machine when prompted

📸 **Screenshot suggestion:**
- Domain join prompt with domain name entered  
- Confirmation screen for successful domain join

---

## 🧪 4. Verification

After reboot, I:

- Logged in using domain credentials
- Verified domain membership in **System Properties**
- Confirmed connectivity to the Domain Controller via `ping` and `nslookup`

📸 **Screenshot suggestion:**
- Login screen with domain name shown  
- System properties showing domain joined  
- PowerShell showing successful `ping` or `nslookup`

---

## 📦 Summary

| Client Name    | IP Address     | DNS Server     | Domain Joined         |
|----------------|----------------|----------------|------------------------|
| AD-WIN11-01     | 192.168.1.20   | 192.168.1.10   | hughdomain.local       |
| AD-WIN11-02     | 192.168.1.30   | 192.168.1.10   | hughdomain.local       |

---

## 📁 Screenshot Storage

All screenshots for this section should be placed in:  
📂 `06-Screenshots/Windows-Client-Setup/`

Use relative image links like:

```md
![Domain Join Confirmation](../../06-Screenshots/Windows-Client-Setup/domain-join-success.png)
