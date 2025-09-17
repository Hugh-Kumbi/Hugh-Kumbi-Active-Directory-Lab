# 🖥️ Windows Client Setup

This section includes screenshots that document the full process of configuring and joining Windows 11 Enterprise clients to the Active Directory domain. Each image captures an essential step in verifying proper network settings, domain connectivity, and user login capability.

---

## 📸 Screenshot Descriptions:

**1. VirtualBox VM Settings for AD-WIN11-02**

- Displays the VirtualBox configuration for the client machine, ensuring it is connected to the same internal network as the domain controller.

📸 **VirtualBox Virtual Machine General Settings for AD-WIN11-02**

<img width="1920" height="1080" alt="VirtualBox Virtual Machine General Settings for AD-WIN11-02" src="https://github.com/user-attachments/assets/e263162f-55a8-4ced-bf71-886e2fadb534" /><br />

📸 **VirtualBox Virtual Machine System Motherboard Settings for AD-WIN11-02**

<img width="1920" height="1080" alt="VirtualBox Virtual Machine System Motherboard Settings for AD-WIN11-02" src="https://github.com/user-attachments/assets/1acc2bce-58a6-4982-a3ae-e147dc407f24" /><br />

📸 **VirtualBox Virtual Machine System Processor Settings for AD-WIN11-02**

<img width="1920" height="1080" alt="VirtualBox Virtual Machine System Processor Settings for AD-WIN11-02" src="https://github.com/user-attachments/assets/5e7b02c4-9f81-4891-b83b-f60724cf9244" /><br />

📸 **VirtualBox Virtual Machine System Acceleration Settings for AD-WIN11-02**

<img width="1920" height="1080" alt="VirtualBox Virtual Machine System Acceleration Settings for AD-WIN11-02" src="https://github.com/user-attachments/assets/5d9c4ed1-c627-4166-9de8-52842c607cdb" /><br />

📸 **VirtualBox Virtual Machine Display Screen Settings for AD-WIN11-02**

<img width="1920" height="1080" alt="VirtualBox Virtual Machine Display Screen Settings for AD-WIN11-02" src="https://github.com/user-attachments/assets/7b1ddedb-3626-44f2-ba1f-58111a9b7840" /><br />

📸 **VirtualBox Virtual Machine Display Recording Settings for AD-WIN11-02**

<img width="1920" height="1080" alt="VirtualBox Virtual Machine Display Recording Settings for AD-WIN11-02" src="https://github.com/user-attachments/assets/c8db6413-f49d-474e-869b-96478c95726a" /><br />

📸 **VirtualBox Virtual Machine Storage Settings for AD-WIN11-02**

<img width="1920" height="1080" alt="VirtualBox Virtual Machine Storage Settings for AD-WIN11-02" src="https://github.com/user-attachments/assets/7da70099-2394-4b5a-b614-2343dc3ed5db" /><br />

📸 **VirtualBox Virtual Machine Network Settings for AD-WIN11-02**

<img width="1920" height="1080" alt="VirtualBox Virtual Machine Network Settings for AD-WIN11-02" src="https://github.com/user-attachments/assets/953dda80-c5fa-49df-bf0d-163432ac6e49" /><br />

📸 **VirtualBox Virtual Machine USB Settings for AD-WIN11-02**

<img width="1920" height="1080" alt="VirtualBox Virtual Machine USB Settings for AD-WIN11-02" src="https://github.com/user-attachments/assets/c30c8e0e-76ea-445e-b6a6-36e6204e4ae9" /><br />

**2. Network Settings with Static IP and DNS for `AD-WIN11-01` & `AD-WIN11-02`**

- Shows the client’s manually configured IP address and DNS pointing to the domain controller, a critical step for domain communication.

![Network settings with static IP and DNS](https://github.com/user-attachments/assets/df273dd0-bc9b-4550-992f-8e2aab110a8c)

![Network settings with static IP and DNS](https://github.com/user-attachments/assets/a10095ff-e4f6-4635-9459-7e0333493914)

**3. Domain Join Prompt with Domain Name Entered**

- Captures the moment the domain name hughdomain.local is entered in the System Properties dialog to initiate the domain join process.

![Domain Join Prompt With Domain Name Entered1](https://github.com/user-attachments/assets/52dfe7a0-4b2d-4716-920e-eafb4f79dca3)

![Domain Join Prompt With Domain Name Entered1](https://github.com/user-attachments/assets/52dfe7a0-4b2d-4716-920e-eafb4f79dca3)

**4 Confirmation Screen for Successful Domain Join**

- Verifies that the client was successfully joined to the domain with the appropriate confirmation message.

![Confirmation Screen For Successful Domain Join](https://github.com/user-attachments/assets/4a39927b-ba5d-4fd6-8b1a-455943c53533)

![Confirmation Screen For Successful Domain Join](https://github.com/user-attachments/assets/3dfb83d6-5da0-4982-b765-07c5135e3f95)

**5. Login Screen with Domain Name Shown**

- Displays the Windows login screen where the domain name is now visible, confirming the system recognizes domain credentials.

![Login Screen With Domain Name Shown](https://github.com/user-attachments/assets/60ffc840-6c1d-4db0-bed2-1af49fd3f053)

![Login Screen With Domain Name Shown](https://github.com/user-attachments/assets/9ff3b78a-7e31-4b3a-87c9-a9d30626c624)

**6. System Properties Showing Domain Joined**

- Confirms through the System Properties panel that the client is now a member of hughdomain.local.

![System properties showing domain joined](https://github.com/user-attachments/assets/afdbaec2-139e-44b0-a573-16005268edc4)

![System properties showing domain joined](https://github.com/user-attachments/assets/9d55c881-e968-40ee-ab5f-1b3c8baf73b3)

**7. PowerShell Showing Successful Ping**

- Demonstrates network connectivity by showing a successful ping to the domain controller via PowerShell.

![PowerShell Showing Successful Ping](https://github.com/user-attachments/assets/7920886b-afa6-45ca-87ec-83f85a2364e5)

![PowerShell Showing Successful Ping](https://github.com/user-attachments/assets/786662b4-9a08-4464-9acf-d0c0973b9002)

---

Each image corresponds to a step described in 📂 02-Environment-Setup/Windows-Client-Setup.md
