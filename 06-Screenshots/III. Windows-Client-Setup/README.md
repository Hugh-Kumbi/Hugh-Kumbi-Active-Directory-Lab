# 🖥️ Windows Client Setup

This section includes screenshots that document the full process of configuring and joining Windows 11 Enterprise clients to the Active Directory domain. Each image captures an essential step in verifying proper network settings, domain connectivity, and user login capability.

## 📸 Screenshot Descriptions:

**1. VirtualBox VM Settings for DESKTOP-2N3JERQ**

- Displays the VirtualBox configuration for the client machine, ensuring it is connected to the same internal network as the domain controller.

📸 **VirtualBox VM Settings for DESKTOP-2N3JERQ:**

![VirtualBox VM settings for DESKTOP-2N3JERQ 1](https://github.com/user-attachments/assets/3b785c61-b39c-4bbf-8f2b-835eb31921fe)

![VirtualBox VM settings for DESKTOP-2N3JERQ 2](https://github.com/user-attachments/assets/796dd80a-70fe-4fc6-a990-0032bd4d966f)

![VirtualBox VM settings for DESKTOP-2N3JERQ 3](https://github.com/user-attachments/assets/e0dd9fb2-2906-4ffd-b09c-ed9d6ddec9fd)

![VirtualBox VM settings for DESKTOP-2N3JERQ 4](https://github.com/user-attachments/assets/2569c935-b009-4b5a-a89a-a43f24f185eb)

![VirtualBox VM settings for DESKTOP-2N3JERQ 5](https://github.com/user-attachments/assets/1dfa3395-88ea-43cd-b2b9-6244dde283f3)

![VirtualBox VM settings for DESKTOP-2N3JERQ 6](https://github.com/user-attachments/assets/096aa30b-7818-4bfd-bde1-cc75df1d117d)

![VirtualBox VM settings for DESKTOP-2N3JERQ 7](https://github.com/user-attachments/assets/c39d4368-7aab-4a02-b633-e74398ba9ce6)

![VirtualBox VM settings for DESKTOP-2N3JERQ 8](https://github.com/user-attachments/assets/409c0327-845e-4940-b192-173071cbe949)

**2. Network Settings With Static IP and DNS for `DESKTOP-74HPA3F` & `DESKTOP-2N3JERQ`**
- Shows the client’s manually configured IP address and DNS pointing to the domain controller, a critical step for domain communication.

![Network settings with static IP and DNS](https://github.com/user-attachments/assets/df273dd0-bc9b-4550-992f-8e2aab110a8c)

![Network settings with static IP and DNS](https://github.com/user-attachments/assets/a10095ff-e4f6-4635-9459-7e0333493914)

**3. Domain Join Prompt With Domain Name Entered**
- Captures the moment the domain name hughdomain.local is entered in the System Properties dialog to initiate the domain join process.

![Domain Join Prompt With Domain Name Entered1](https://github.com/user-attachments/assets/52dfe7a0-4b2d-4716-920e-eafb4f79dca3)

![Domain Join Prompt With Domain Name Entered1](https://github.com/user-attachments/assets/52dfe7a0-4b2d-4716-920e-eafb4f79dca3)

**4 Confirmation Screen For Successful Domain Join**
- Verifies that the client was successfully joined to the domain with the appropriate confirmation message.

![Confirmation Screen For Successful Domain Join](https://github.com/user-attachments/assets/4a39927b-ba5d-4fd6-8b1a-455943c53533)

![Confirmation Screen For Successful Domain Join](https://github.com/user-attachments/assets/3dfb83d6-5da0-4982-b765-07c5135e3f95)

**5. Login Screen With Domain Name Shown**
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

Each image corresponds to a step described in 📂 02-Environment-Setup/Windows-Client-Setup.md
