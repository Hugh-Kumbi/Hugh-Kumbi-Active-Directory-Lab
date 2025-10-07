# 🖥️ Windows Client Setup

This section includes screenshots that document the full process of configuring and joining Windows 11 Enterprise clients to the Active Directory domain. Each image captures an essential step in verifying proper network settings, domain connectivity, and user login capability.

---

## 1. VirtualBox VM Settings for `AD-WIN11-02`

- Displays the VirtualBox configuration for the client machine, ensuring it is connected to the same internal network as the domain controller.

📸 **VirtualBox Virtual Machine General Settings for `AD-WIN11-02`**

<img width="1920" height="1080" alt="VirtualBox Virtual Machine General Settings for AD-WIN11-02" src="https://github.com/user-attachments/assets/e263162f-55a8-4ced-bf71-886e2fadb534" /><br />

📸 **VirtualBox Virtual Machine System Motherboard Settings for `AD-WIN11-02`**

<img width="1920" height="1080" alt="VirtualBox Virtual Machine System Motherboard Settings for AD-WIN11-02" src="https://github.com/user-attachments/assets/1acc2bce-58a6-4982-a3ae-e147dc407f24" /><br />

📸 **VirtualBox Virtual Machine System Processor Settings for `AD-WIN11-02`**

<img width="1920" height="1080" alt="VirtualBox Virtual Machine System Processor Settings for AD-WIN11-02" src="https://github.com/user-attachments/assets/5e7b02c4-9f81-4891-b83b-f60724cf9244" /><br />

📸 **VirtualBox Virtual Machine System Acceleration Settings for `AD-WIN11-02`**

<img width="1920" height="1080" alt="VirtualBox Virtual Machine System Acceleration Settings for AD-WIN11-02" src="https://github.com/user-attachments/assets/5d9c4ed1-c627-4166-9de8-52842c607cdb" /><br />

📸 **VirtualBox Virtual Machine Display Screen Settings for `AD-WIN11-02`**

<img width="1920" height="1080" alt="VirtualBox Virtual Machine Display Screen Settings for AD-WIN11-02" src="https://github.com/user-attachments/assets/7b1ddedb-3626-44f2-ba1f-58111a9b7840" /><br />

📸 **VirtualBox Virtual Machine Display Recording Settings for `AD-WIN11-02`**

<img width="1920" height="1080" alt="VirtualBox Virtual Machine Display Recording Settings for AD-WIN11-02" src="https://github.com/user-attachments/assets/c8db6413-f49d-474e-869b-96478c95726a" /><br />

📸 **VirtualBox Virtual Machine Storage Settings for `AD-WIN11-02`**

<img width="1920" height="1080" alt="VirtualBox Virtual Machine Storage Settings for AD-WIN11-02" src="https://github.com/user-attachments/assets/7da70099-2394-4b5a-b614-2343dc3ed5db" /><br />

📸 **VirtualBox Virtual Machine Network Settings for `AD-WIN11-02`**

<img width="1920" height="1080" alt="VirtualBox Virtual Machine Network Settings for AD-WIN11-02" src="https://github.com/user-attachments/assets/953dda80-c5fa-49df-bf0d-163432ac6e49" /><br />

📸 **VirtualBox Virtual Machine USB Settings for `AD-WIN11-02`**

<img width="1920" height="1080" alt="VirtualBox Virtual Machine USB Settings for AD-WIN11-02" src="https://github.com/user-attachments/assets/c30c8e0e-76ea-445e-b6a6-36e6204e4ae9" /><br />

---

##  2. Network Settings with Static IP and DNS for `AD-WIN11-01` & `AD-WIN11-02`

- Shows the client’s manually configured IP address and DNS pointing to the domain controller, a critical step for domain communication.

📸 **Network Settings with Static IP and DNS for `AD-WIN11-01`**

<img width="1920" height="909" alt="Windows IP Configuration for AD-WIN11-01" src="https://github.com/user-attachments/assets/bb8e002b-cc38-4dbf-bf19-10d1436e369f" /><br />

📸 **Network Settings with Static IP and DNS for `AD-WIN11-02`**

<img width="1920" height="909" alt="Windows IP Configuration for AD-WIN11-02" src="https://github.com/user-attachments/assets/0cd9ed8d-3ffe-43d1-aba3-a63acc6e97d2" /><br />

---

## 3. Domain Join Prompt with Domain Name Entered

- Captures the moment the domain name hughdomain.local is entered in the System Properties dialog to initiate the domain join process.

📸 **Domain Join Prompt with Domain Name Entered for `AD-WIN11-01`**

<img width="1920" height="909" alt="Domain Join Prompt with Domain Name Entered" src="https://github.com/user-attachments/assets/b3ce556b-3685-412e-8b93-7eeb705d4451" /><br />

📸 **Domain Join Prompt with Domain Name Entered for `AD-WIN11-02`**

<img width="1920" height="909" alt="Domain Join Prompt with Domain Name Entered" src="https://github.com/user-attachments/assets/a064c15d-74a7-4982-a5ad-475275e5d80a" /><br />

---

## 4 Confirmation Screen for Successful Domain Join

- Verifies that the client was successfully joined to the domain with the appropriate confirmation message.

📸 **Confirmation Screen for Successful Domain Join for `AD-WIN11-01`**

<img width="1920" height="909" alt="Confirmation Screen for Successful Domain Join" src="https://github.com/user-attachments/assets/b6d99baa-410f-42bb-a001-fc7e954a3a38" /><br />

📸 **Confirmation Screen for Successful Domain Join for `AD-WIN11-02`**

<img width="1920" height="909" alt="Confirmation Screen for Successful Domain Join" src="https://github.com/user-attachments/assets/3d30496f-7885-4ad8-a0f1-b219114f428b" /><br />

---

## 5. Login Screen with Domain Name Shown

- Displays the Windows login screen where the domain name is now visible, confirming the system recognizes domain credentials.

📸 **Login Screen with Domain Name Shown for `AD-WIN11-01`**

<img width="1920" height="909" alt="Login Screen Showing Domain User for AD-WIN11-01" src="https://github.com/user-attachments/assets/26d4d764-b848-465e-bb50-7a5d9810cfa7" /><br />

📸 **Login Screen with Domain Name Shown for `AD-WIN11-02`**

<img width="1920" height="909" alt="Login Screen Showing Domain User for AD-WIN11-02" src="https://github.com/user-attachments/assets/df2ad298-53a5-44e5-acf5-0288490b0d64" /><br />

---

## 6. System Properties Showing Domain Joined

- Confirms through the System Properties panel that the client is now a member of hughdomain.local.

📸 **System Properties Showing Domain Joined for `AD-WIN11-01`**

<img width="1920" height="909" alt="System Properties Showing Domain Joined for AD-WIN11-01" src="https://github.com/user-attachments/assets/8d50ae2b-bd7a-4be1-95ce-0472cf3a332b" /><br />

<img width="1920" height="909" alt="System Properties Showing Domain Joined for AD-WIN11-01 1" src="https://github.com/user-attachments/assets/54a06f95-6276-4b1f-9677-6fad62401d44" /><br />

📸 **System Properties Showing Domain Joined for `AD-WIN11-02`**

<img width="1920" height="909" alt="System Properties Showing Domain Joined for AD-WIN11-02" src="https://github.com/user-attachments/assets/aa85469a-eb0b-45e6-8993-1e50e24e7b74" /><br />

<img width="1920" height="909" alt="System Properties Showing Domain Joined for `AD-WIN11-02 1" src="https://github.com/user-attachments/assets/05b2beb1-84f5-46b3-a184-c6172ec5eac8" /><br />

---

## 7. PowerShell Showing Successful Ping

- Demonstrates network connectivity by showing a successful ping to the domain controller via PowerShell.

📸 **PowerShell Showing Successful Ping for `AD-WIN11-01`**

<img width="1920" height="909" alt="PowerShell Showing Successful Ping for AD-WIN11-01" src="https://github.com/user-attachments/assets/1209c08e-a4d2-4268-b011-f0a72f930ce6" /><br />

📸 **PowerShell Showing Successful Ping for `AD-WIN11-02`**

<img width="1920" height="909" alt="PowerShell Showing Successful Ping for AD-WIN11-02" src="https://github.com/user-attachments/assets/c6e15040-4ea4-4684-9527-c052a699486b" />

---

Each image corresponds to a step described in:<br />
📂 [`02-Environment-Setup/Windows-Client-Setup.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/edit/main/02-Environment-Setup/II.%20Windows-Client-Setup.md)
