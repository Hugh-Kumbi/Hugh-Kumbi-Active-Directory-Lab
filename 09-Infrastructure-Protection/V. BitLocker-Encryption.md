# 🔐 BitLocker Drive Encryption Policies for Windows Server 2025 Active Directory

In this section, I enforced BitLocker drive encryption policies to protect data at rest on all Windows 11 client devices. This policy ensures that all operating system drives are encrypted using secure standards and recovery mechanisms, providing resilience against data breaches caused by device loss or theft.

---

## 🏷️ 1. GPO Names

- **GPO Name:** BitLocker Drive Encryption Policy  
- **Linked To:** MeiVaultComputers

📸 **Group Policy Management Console showing the BitLocker Encryption Policy linked to MeiVaultComputers**  

<img width="1920" height="909" alt="Group Policy Management Console showing the BitLocker Encryption Policy linked to MeiVaultComputers" src="https://github.com/user-attachments/assets/63e29fb3-bad1-4f53-9c40-9eec4d723890" /><br />

- **GPO Name:** BitLocker DRA Deployment Policy   
- **Linked To:** hughdomain.local (domain root)

📸 **Group Policy Management Console showing the BitLocker DRA Deployment Policy linked to Domain**  

<img width="1920" height="909" alt="Group Policy Management Console showing the BitLocker DRA Deployment Policy linked to Domain" src="https://github.com/user-attachments/assets/35c211ed-5eb4-4f31-8ca9-640ad4ed4385" />

---

## ⚙️ 2. Policy Configuration

### ✅ Operating System Drives

In the GPO, I navigated to:

  📂 `Computer Configuration > Policies > Administrative Templates > Windows Components > BitLocker Drive Encryption > Operating System Drives`

- **Require additional authentication at startup:** Enabled  
- **Checked** "Requires a password or startup key on a USB flash drive"
- **Configure TPM startup key settings:** Enabled  
  - **Allow TPM:** Yes  
  - **Do not allow PIN + TPM:** Yes  
  - **Do not allow Startup Key + TPM:** Yes  
  - **Do not allow TPM + PIN + Startup Key:** Yes

📸 **Additional Authentication at Startupfor Operating System Drives Overview** 

<img width="1920" height="909" alt="Additional Authentication at Startupfor Operating System Drives Overview" src="https://github.com/user-attachments/assets/88ee2cf5-6d74-47dd-b17b-1a2a56182f0c" />

- **Enable use of BitLocker authentication requiring preboot keyboard input on slates:** Enabled
- **Configure minimum PIN length for startup:** Enabled
- **Choose how BitLocker-protected operating system drives can be recovered:** Enabled  
- **Configure use of hardware-based encryption for operating system drives:** Disabled
- **Allow enhanced PINs for startup:** Enabled
- **Choose drive encryption method and cipher strength:** Enabled  
  - **Setting:** XTS-AES 256-bit  

📸 **BitLocker-Protected Operating System Drives Settings** 

<img width="1920" height="909" alt="BitLocker-Protected Operating System Drives Settings" src="https://github.com/user-attachments/assets/e64c44b1-9fb3-4887-959f-344ec10b0cd8" /><br />

📸 **BitLocker Drive Encryption Method and Cipher Strength**

<img width="1920" height="909" alt="BitLocker Drive Encryption Method and Cipher Strength" src="https://github.com/user-attachments/assets/d8c675f6-21a6-459d-84fe-2e623fd3bcd3" /><br />

📸 **BitLocker Drive Encryption Overview**

<img width="1920" height="909" alt="BitLocker Drive Encryption Overview" src="https://github.com/user-attachments/assets/71015976-bb58-469c-9265-3bf38c7a91d3" /><br />

📸 **BitLocker Drive Encryption Policies for Operating System Drives Overview** 

<img width="1920" height="909" alt="BitLocker Drive Encryption Policies for Operating System Drives Overview" src="https://github.com/user-attachments/assets/c84d3785-c5be-4eec-9bd8-893ec3e2f974" /><br />

### 3. 🧩 Configure Fixed Data Drive Encryption

In the GPO, I navigated to:

  📂 `Computer Configuration → Administrative Templates → Windows Components → BitLocker Drive Encryption → Fixed Data Drives`

I enabled:

- **Allow access to BitLocker-protected fixed data drives from earlier versions of Windows:** Enabled
- **Choose how BitLocker-protected fixed drives can be recovered:** Enabled
- **Configure use of hardware-based encryption for fixed data drives:** Enable
- **Configure use of passwords for fixed data drives:** Enabled
- **Configure use of smart cards on fixed data drives:** Enabled
- **Deny write access to removable drives not protected by BitLocker:** Enabled
- **Enforce drive encryption type on fixed data drives:** Enabled

📸 **BitLocker Drive Encryption Fixed Drive Settings Overview** 

<img width="1920" height="909" alt="BitLocker Drive Encryption Fixed Drive Settings Overview" src="https://github.com/user-attachments/assets/eae3f23f-f672-4a8f-a7ec-8b703b7d6191" />

### 4. 🔑 Configure Removable Drive Encryption

In the GPO, I navigated to:

  📂 `Computer Configuration → Administrative Templates → Windows Components → BitLocker Drive Encryption → Removable Data Drives`

I enabled:

- **Configure use of password for removable data drives:** Enabled
- **Control use of BitLocker on removable drives** Enabled 
- **Deny write access to removable drives not protected by BitLocker:** Enabled

📸 **BitLocker Drive Encryption Removable Data Drives Overview** 

<img width="1920" height="909" alt="BitLocker Drive Encryption Removable Data Drives Overview" src="https://github.com/user-attachments/assets/c53fa362-fb2d-4fbd-9836-7e7bd278cfe1" />

---

### 5. 🌐 Enable Network Unlock

To allow systems to automatically unlock BitLocker-protected OS drives on domain-joined systems with TPM, I enabled:

- **Store BitLocker recovery information in Active Directory Domain Services(Windows Server 2008 and Windows Vista):** Enabled
- **Choose default folder for recovery password:** Enabled
- **Choose how users can recover BitLocker-protected drives(Windows & Windows Server2012, Windows 8.1, Windows Server 2012 R2, Windows 10 [Version 1507):** Enabled
- **Choose drive encryption method and cipher strength(Windows 8, Windows Server2012, Windows 8.1, Windows Server 2012 R2, Windows 10 [Version 1507):** Enabled
- **Disable new DMA devices when this computer is locked (Windows 10 [Version 1511):** Enabled
- **Provide the unique identifiers for your organization:** Enabled
- **Prevent memory overwrite on restart:** Enabled
- **Validate smart card certificate usage rule compliance:** Enabled

#### 📶 Network Unlock Settings

📸 **Store BitLocker Recovery Information in Active Directory Domain Services Settings**

<img width="1920" height="909" alt="Store BitLocker Recovery Information in Active Directory Domain Services Settings" src="https://github.com/user-attachments/assets/5be16696-b5fe-453d-a7a0-52d343e3052e" /><br />

📸 **Choose Default Folder for Recovery Password Settings**

<img width="1920" height="909" alt="Choose Default Folder for Recovery Password Settings" src="https://github.com/user-attachments/assets/06219e11-6e18-4901-8ea2-e0ef0a8b80d3" /><br />

📸 **Choose how Users can Recover BitLocker-protected Drives Settings**

<img width="1920" height="909" alt="Choose how Users can Recover BitLocker-protected Drives Settings" src="https://github.com/user-attachments/assets/97e99fe1-5bc5-40e9-b191-92449b2ccd2c" /><br />

📸 **Choose Drive Encryption Method and Cipher Strength Settings**

<img width="1920" height="909" alt="Choose Drive Encryption Method and Cipher Strength Settings" src="https://github.com/user-attachments/assets/72e08a89-f5a9-4538-ab6e-f91d28c28bf7" /><br />

📸 **Provide the Unique Identifiers for your Organization Settings**

<img width="1920" height="909" alt="Provide the Unique Identifiers for your Organization Settings" src="https://github.com/user-attachments/assets/5e98e096-3867-4a08-a0ca-e5c187ceb7b6" /><br />

📸 **Validate Smart Card Certificate Usage Rule Compliance Settings**

<img width="1920" height="909" alt="Validate Smart Card Certificate Usage Rule Compliance Settings" src="https://github.com/user-attachments/assets/569e10fe-da85-4b37-8e54-b79c9b112968" /><br />

📸 **Network Unlock Settings Overview**

<img width="1920" height="909" alt="Network Unlock Settings Overview" src="https://github.com/user-attachments/assets/779dbbd0-25ab-4f54-833a-ee90407e0c5a" />

---

### 6. 🗄️ Configure Data Recovery Agents (DRA)

To manage data recovery securely, I:

1. Created a DRA certificate using the `manage-bde -protectors` command.
2. Exported the certificate and added it to the GPO under:

  📂 `Computer Configuration → Policies → Windows Settings → Security Settings → Public Key Policies → BitLocker Drive Encryption`

📸 **DRA Certificate Configuration**

<img width="1920" height="909" alt="BitLocker Drive Encryption Policies for Importing DRA Certificate Into BitLocker policy" src="https://github.com/user-attachments/assets/0fa54b2f-4322-418a-a325-6c89acd38860" /><br />

<img width="1920" height="909" alt="BitLocker Drive Encryption Policies for Importing DRA Certificate Into BitLocker policy 1" src="https://github.com/user-attachments/assets/147a6da9-e04f-4353-99c7-9d51c7361449" /><br />

<img width="1920" height="909" alt="BitLocker Drive Encryption Policies for Importing DRA Certificate Into BitLocker policy 2" src="https://github.com/user-attachments/assets/aca56a92-4568-475a-9185-77a3520c16b3" /><br />

<img width="1920" height="909" alt="BitLocker Drive Encryption Policies for Importing DRA Certificate Into BitLocker policy 3" src="https://github.com/user-attachments/assets/964670b6-355c-4d12-b70a-053fde057e4a" /><br />

<img width="1920" height="909" alt="BitLocker Drive Encryption Policies for Importing DRA Certificate Into BitLocker policy 4" src="https://github.com/user-attachments/assets/fe0de28a-f12c-4bd0-8ac1-79c0ce081cae" /><br />

<img width="1920" height="909" alt="BitLocker Drive Encryption Policies for Importing DRA Certificate Into BitLocker policy 5" src="https://github.com/user-attachments/assets/d464cb8c-0ead-49a8-b6e9-cf78de9be937" /><br />

---

## Summary

This section demonstrated how to manage full-disk encryption across different drive types using Group Policy. It reflects a practical understanding of enterprise-grade BitLocker deployment, compliance enforcement, and data recovery preparedness in an Active Directory environment.

📸 **AD-WIN11-01 System With BitLocker Status**

<img width="1920" height="909" alt="AD-WIN11-01 System With BitLocker Status" src="https://github.com/user-attachments/assets/eed3e722-7e74-41b6-86d5-e9327865b1c1" />

📸 **AD-WIN11-02 System With BitLocker Status**

<img width="1920" height="909" alt="AD-WIN11-02 System With BitLocker Status" src="https://github.com/user-attachments/assets/7678e610-d9cd-420b-8671-9dd29216cfbb" />

### ✅ BitLocker Recovery

**Path:** 📂 `BitLocker Drive Encryption > Operating System Drives > BitLocker Recovery`

- **Save BitLocker recovery information to Active Directory Domain Services:** Enabled  
  - ✅ Store recovery passwords and key packages  
- **Do not enable BitLocker until recovery information is stored to AD DS:** Enabled  

📸 **BitLocker Drive Encryption Policy Settings**  

<img width="1920" height="909" alt="BitLocker Drive Encryption Policy Settings" src="https://github.com/user-attachments/assets/40b725be-5822-4e43-a293-d3eb663c0f0f" /><br />

<img width="1920" height="909" alt="BitLocker Drive Encryption Policy Settings 1" src="https://github.com/user-attachments/assets/f7cd6cd1-7de0-49d8-b8a3-2a322957ff81" /><br />

<img width="1920" height="909" alt="BitLocker Drive Encryption Policy Settings 2" src="https://github.com/user-attachments/assets/cff20b4c-26da-490b-835b-8f266934e540" /><br />

<img width="1920" height="909" alt="BitLocker Drive Encryption Policy Settings 3" src="https://github.com/user-attachments/assets/4ab6782c-ff45-453e-87b6-e3f9dbc937e4" /><br />

<img width="1920" height="909" alt="BitLocker Drive Encryption Policy Settings 4" src="https://github.com/user-attachments/assets/d84c2b38-86a3-491f-a1af-68cf9ae63447" /><br />

<img width="1920" height="909" alt="BitLocker Drive Encryption Policy Settings 5" src="https://github.com/user-attachments/assets/689bf53c-8764-45fd-bd02-1552757011b3" /><br />

<img width="1920" height="909" alt="BitLocker Drive Encryption Policy Settings 6" src="https://github.com/user-attachments/assets/087cf28c-c71e-42cb-9a1a-dfb7b1e2ad65" /><br />

<img width="1920" height="909" alt="BitLocker Drive Encryption Policy Settings 7" src="https://github.com/user-attachments/assets/31d9230a-3727-4579-bbc4-c247119901d0" /><br />

📸 **BitLocker DRA Deployment Policy Settings**

<img width="1920" height="909" alt="BitLocker DRA Deployment Policy Settings" src="https://github.com/user-attachments/assets/1d44f184-aad8-4998-ae06-bee70ef84b9a" /><br />

<img width="1920" height="909" alt="BitLocker DRA Deployment Policy Settings 1" src="https://github.com/user-attachments/assets/cf7effec-8c49-4e0f-bd3c-a239ad4313e2" />

---

## 🧪 3. Verification and Testing

- Ran `gpupdate /force` on a Windows 11 domain-joined client.  
- Used `manage-bde -status` and `Get-BitLockerVolume` in PowerShell to verify BitLocker encryption status.  
- Confirmed recovery keys were stored in Active Directory via the **Active Directory Users and Computers (ADUC)** console.  
- Rebooted to test TPM + PIN prompt on startup.

📸 **PowerShell Output Showing BitLocker Status for AD-WIN11-01**  

<img width="1920" height="909" alt="PowerShell Output Showing BitLocker Status for AD-WIN11-01" src="https://github.com/user-attachments/assets/b28caf31-51e9-42df-892d-820ae9ab30ed" /><br />

<img width="1920" height="909" alt="PowerShell Output Showing BitLocker Status for AD-WIN11-01 1" src="https://github.com/user-attachments/assets/cda688e4-9476-4ef6-8324-bc65bcc58ba1" /><br />

📸 **PowerShell Output Showing BitLocker Status for AD-WIN11-02**  

<img width="1920" height="909" alt="PowerShell Output Showing BitLocker Status for AD-WIN11-02" src="https://github.com/user-attachments/assets/65dfbed8-ae19-4988-a476-2606b271963c" /><br />

<img width="1920" height="909" alt="PowerShell Output Showing BitLocker Status for AD-WIN11-02 1" src="https://github.com/user-attachments/assets/d4a32e8e-c1d4-46fd-ba9b-d143e1b7fa81" /><br />

📸 **ADUC Interface Displaying BitLocker Recovery Tab for AD-WIN11-01**  

<img width="1920" height="909" alt="ADUC Interface Displaying BitLocker Recovery Tab for AD-WIN11-01" src="https://github.com/user-attachments/assets/3817c0ba-d37c-48e7-8534-3db99e85c1ba" /><br />

📸 **ADUC Interface Displaying BitLocker Recovery Tab for AD-WIN11-02**  

<img width="1920" height="909" alt="ADUC Interface Displaying BitLocker Recovery Tab for AD-WIN11-02" src="https://github.com/user-attachments/assets/900b2cde-6088-4a10-8eda-f24edf0e9a4a" />

---

## 🗂️ 4. Screenshot Storage

All images related to this section are stored in:  
📂 [[06-Screenshots/XXXI. BitLocker-Encryption/README.md](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/XXXI.%20BitLocker-Encryption/README.md)
