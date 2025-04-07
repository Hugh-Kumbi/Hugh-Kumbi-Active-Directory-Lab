# 💻 Windows 11 Client Setup

This section details how I configured and joined two Windows 11 Pro clients—**DESKTOP-74HPA3F** and **DESKTOP-2N3JERQ**—to my domain `hughdomain.local`.

---

## 🖥️ 1. Virtual Machine Configuration

I created two new VMs in **VirtualBox** with the following specifications:

- **VM Names:** DESKTOP-74HPA3F and DESKTOP-2N3JERQ
- **OS:** Windows 11 Pro
- **RAM:** 4 GB each
- **CPU:** 2 cores each
- **Disk:** 50 GB each
- Network Adapter: **Internal Network** (same as Domain Controller)

📸 **Screenshots:**
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

- Kept machine names as:
  - `DESKTOP-74HPA3F`
  - `DESKTOP-2N3JERQ`
- Set static IP addresses and DNS:
  - DESKTOP-74HPA3F: `192.168.1.101`
  - DESKTOP-2N3JERQ: `192.168.1.12`
- Set Preferred DNS to point to the Domain Controller: `192.168.1.10`
- Restarted each machine to apply changes

📸 **Screenshot:**
![Network settings with static IP and DNS](https://github.com/user-attachments/assets/df273dd0-bc9b-4550-992f-8e2aab110a8c)
 
![Uploading System  About  Showing Kept Computer Names.png…]()


---

## 🏢 3. Joining the Domain

On each client:

1. Opened **Settings > System > About > Rename this PC (Advanced)**
2. Selected **Domain Join**, entered `hughdomain.local`
3. Supplied credentials for a domain admin account
4. Restarted the machine when prompted

📸 **Screenshot:**
![Domain Join Prompt With Domain Name Entered2](https://github.com/user-attachments/assets/f007182c-786d-4447-b72f-f085bbe0cece)

![Confirmation Screen For Successful Domain Join](https://github.com/user-attachments/assets/4a39927b-ba5d-4fd6-8b1a-455943c53533)

![Domain Join Prompt With Domain Name Entered1](https://github.com/user-attachments/assets/52dfe7a0-4b2d-4716-920e-eafb4f79dca3)

![Confirmation Screen For Successful Domain Join](https://github.com/user-attachments/assets/3dfb83d6-5da0-4982-b765-07c5135e3f95)

---

## 🧪 4. Verification

After reboot, I:

- Logged in using domain credentials
- Verified domain membership in **System Properties**
- Confirmed connectivity to the Domain Controller via `ping` and `nslookup`

📸 **Screenshot:**
![Login Screen With Domain Name Shown](https://github.com/user-attachments/assets/60ffc840-6c1d-4db0-bed2-1af49fd3f053)

- System properties showing domain joined  

![Uploading PowerShell Showing Successful ping.png…]()

![Login Screen With Domain Name Shown](https://github.com/user-attachments/assets/9ff3b78a-7e31-4b3a-87c9-a9d30626c624)


---

## 📦 Summary

| Client Name    | IP Address     | DNS Server     | Domain Joined         |
|----------------|----------------|----------------|------------------------|
| AD-WIN11-01     | 192.168.1.20   | 192.168.1.10   | hughdomain.local       |
| AD-WIN11-02     | 192.168.1.30   | 192.168.1.10   | hughdomain.local       |

---

## 📁 Screenshot Storage

All screenshots for this section should be placed in:  
📂 [`06-Screenshots/Windows-Client-Setup/`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/Domain%20Join%20Success.md)
