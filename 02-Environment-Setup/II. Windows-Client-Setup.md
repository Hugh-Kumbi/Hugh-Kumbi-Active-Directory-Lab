# 💻 Windows 11 Client Setup

This section details how I configured and joined two Windows 11 Pro clients—**AD-WIN11-01** and **AD-WIN11-02**—to my domain `hughdomain.local`.

---

## 🖥️ 1. Virtual Machine Configuration

I created two new VMs in **VirtualBox** with the following specifications:

- **VM Names:** AD-WIN11-01 and AD-WIN11-02
- **OS:** Windows 11 Pro
- **RAM:** 4 GB each
- **CPU:** 2 cores each
- **Disk:** 60 GB each
- **Network Adapter:** Internal Network (same as Domain Controller)

📸 **VirtualBox Virtual Machine General Settings for AD-WIN11-01**

![VirtualBox VM General Settings for AD-WIN11-01](https://github.com/user-attachments/assets/8da28c73-02bf-4688-b908-1af65d8b30e5)

📸 **VirtualBox Virtual Machine System Motherboard Settings for AD-WIN11-01**

![VirtualBox VM System Motherboard Settings for AD-WIN11-01](https://github.com/user-attachments/assets/dd51caf8-2558-497c-baf8-6e6b83042bf2)

📸 **VirtualBox Virtual Machine System Processor Settings for AD-WIN11-01**

![VirtualBox VM System Processor Settings for AD-WIN11-01](https://github.com/user-attachments/assets/3febf267-9362-45f6-be6c-7edb8149189e)

📸 **VirtualBox Virtual Machine System Acceleration Settings for AD-WIN11-01**

![VirtualBox VM System Acceleration Settings for AD-WIN11-01](https://github.com/user-attachments/assets/82c218ca-a10f-4561-94cc-53fd3d8738a7)

📸 **VirtualBox Virtual Machine Display Screen Settings for AD-WIN11-01**

![VirtualBox VM Display Screen Settings for AD-WIN11-01](https://github.com/user-attachments/assets/5395c314-ac3d-4826-b21a-bfc9ed74732a)

📸 **VirtualBox Virtual Machine Display Recording Settings for AD-WIN11-01**

![VirtualBox VM Display Recording Settings for AD-WIN11-01](https://github.com/user-attachments/assets/76037d83-952d-4d58-bc2e-4bf21267e024)

📸 **VirtualBox Virtual Machine Storage Settings for AD-WIN11-01**

![VirtualBox VM Storage Settings for AD-WIN11-01](https://github.com/user-attachments/assets/c7329dad-1fd4-4999-af5e-d28656bbda93)

📸 **VirtualBox Virtual Machine Network Settings for AD-WIN11-01**

![VirtualBox VM Network Settings for AD-WIN11-01](https://github.com/user-attachments/assets/e6e8b8a7-8baa-4498-84a7-448d5aabf7e7)

📸 **VirtualBox Virtual Machine USB Settings for AD-WIN11-01**

![VirtualBox VM USB Settings for AD-WIN11-01](https://github.com/user-attachments/assets/e2219acf-0c0d-4e36-84a4-edfbcf93e087)


---

## 🌐 2. Network & Hostname Setup

After installation, I did the following on both clients:

- Changed host machine names as:
  - `AD-WIN11-01`
  - `AD-WIN11-02`
- Set static IP addresses and DNS:
  - AD-WIN11-01: `192.168.1.11`
  - AD-WIN11-02: `192.168.1.12`
- Set Preferred DNS to point to the Domain Controller: `192.168.1.10`
- Restarted each machine to apply changes

📸 **Network Settings With Static IP and DNS For `AD-WIN11-01`**

![Network Settings With Static IP and DNS For `AD-WIN11-01](https://github.com/user-attachments/assets/56804e76-f1bd-4fa3-9dfe-b085a1fe9e43)

📸 **Windows IP Configuration for `AD-WIN11-01`**

![Windows IP Configuration for AD-WIN11-01](https://github.com/user-attachments/assets/a4ede77c-2a9e-4af1-b2b3-964a608f182c)

📸 **System > About > Showing Changed Computer Name**

![System - About - Showing Changed Computer Name 1](https://github.com/user-attachments/assets/1e124501-0f94-413e-a88c-3681087c3c99)

📸 **Network Settings With Static IP and DNS For `AD-WIN11-02`**

![Network settings with static IP and DNS](https://github.com/user-attachments/assets/a10095ff-e4f6-4635-9459-7e0333493914)

📸 **Windows IP Configuration for `AD-WIN11-02`**

![Windows IP Configuration for AD-WIN11-02](https://github.com/user-attachments/assets/4dff8c8c-ee88-4877-974f-5e48629e5403)

📸 **System > About > Showing Changed Computer Name**

![System - About - Showing Changed Computer Name](https://github.com/user-attachments/assets/e8f8deae-6ed3-4fc7-8e58-8191d547d59e)

---

## 🏢 3. Joining the Domain

On each client:

1. Opened **📂 `Settings > System > About > Rename this PC (Advanced)`**
2. Selected **Domain Join**, entered `hughdomain.local`
3. Supplied credentials for a domain admin account
4. Restarted the machine when prompted

📸 **Domain Join Prompt With Domain Name Entered For `AD-WIN11-01`**

![Domain Join Prompt with Domain Name Entered](https://github.com/user-attachments/assets/dc7540d2-de7f-4f32-be2b-fcf0998c53f1)

![Confirmation Screen for Successful Domain Join](https://github.com/user-attachments/assets/84a03122-8d70-48ac-b7d3-e7a9b464722f)

📸 **Confirmation Screen For Successful Domain Join For `AD-WIN11-01`**

![Confirmation Screen for Successful Domain Join 1](https://github.com/user-attachments/assets/06c695ad-39af-4467-b560-ba8d8d600e10)

📸 **Domain Join Prompt With Domain Name Entered For `AD-WIN11-02`**

![Domain Join Prompt with Domain Name Entered](https://github.com/user-attachments/assets/fc5bfcb1-afc5-46ba-8c8b-b49768ae6981)

![Confirmation Screen for Successful Domain Join](https://github.com/user-attachments/assets/4c02ba18-e465-4167-8d42-c2b24110f5b1)

📸 **Confirmation Screen For Successful Domain Join For `AD-WIN11-02`**

![Confirmation Screen for Successful Domain Join 1](https://github.com/user-attachments/assets/11c484a7-0a8d-4b4f-bffd-3ae36bce120b)

---

## 🧪 4. Verification

After reboot, I:

- Logged in using domain credentials
- Verified domain membership in **System Properties**
- Confirmed connectivity to the Domain Controller via `ping` and `nslookup`

📸 **Login Screen With Domain Name Shown**

![Login Screen With Domain Name Shown](https://github.com/user-attachments/assets/60ffc840-6c1d-4db0-bed2-1af49fd3f053)

📸 **System Properties Showing Domain Joined**

![System properties showing domain joined](https://github.com/user-attachments/assets/afdbaec2-139e-44b0-a573-16005268edc4)

📸 **PowerShell Showing Successful Ping**

![PowerShell Showing Successful Ping](https://github.com/user-attachments/assets/7920886b-afa6-45ca-87ec-83f85a2364e5)

📸 **Login Screen With Domain Name Shown**

![Login Screen With Domain Name Shown](https://github.com/user-attachments/assets/9ff3b78a-7e31-4b3a-87c9-a9d30626c624)

📸 **System Properties Showing Domain Joined**

![System properties showing domain joined](https://github.com/user-attachments/assets/9d55c881-e968-40ee-ab5f-1b3c8baf73b3)

📸 **PowerShell Showing Successful Ping**

![PowerShell Showing Successful Ping](https://github.com/user-attachments/assets/786662b4-9a08-4464-9acf-d0c0973b9002)

---

## 📦 7. Summary

| Client Name         | IP Address    | DNS Server     | Domain Joined    |
|---------------------|---------------|----------------|------------------|
| **AD-WIN11-01**     | 192.168.1.11  | 192.168.1.10   | hughdomain.local |
| **AD-WIN11-02**     | 192.168.1.12  | 192.168.1.10   | hughdomain.local |

---

## 📁 8. Screenshot Storage

All screenshots for this section should be placed in:  
📂 [`06-Screenshots/III. Windows-Client-Setup
/Domain Join Success.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/III.%20Windows-Client-Setup/README.md)
