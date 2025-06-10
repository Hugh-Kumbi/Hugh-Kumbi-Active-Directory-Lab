# 🔐 BitLocker Drive Encryption Policy for Windows Server 2025 Active Directory

In this section, I enforced BitLocker drive encryption policies to protect data at rest on all Windows 11 client devices. This policy ensures that all operating system drives are encrypted using secure standards and recovery mechanisms, providing resilience against data breaches caused by device loss or theft.

---

## 🏷️ 1. GPO Name

- **GPO Name:** BitLocker Encryption Policy  
- **Linked To:** hughdomain.local (domain root)

📸 **Group Policy Management Console showing the BitLocker Encryption Policy linked to Domain**  

![Group Policy Management Console showing the BitLocker Encryption Policy linked to Domain](https://github.com/user-attachments/assets/5b215626-ebe6-4c08-865e-f1ea05014f33)

---

## ⚙️ 2. Policy Configuration

### ✅ Operating System Drives

In the GPO, I navigated to:

  📂 `Computer Configuration > Policies > Administrative Templates > Windows Components > BitLocker Drive Encryption > Operating System Drives`

- **Require additional authentication at startup:** Enabled  
- **Checked** "Requires a password or startup key on a USB flash drive"
- **Configure TPM startup key settings:** Enabled  
  - **Allow TPM:** Yes  
  - **Allow PIN + TPM:** Yes  
  - **Allow Startup Key + TPM:** Yes  
  - **Allow TPM + PIN + Startup Key:** Yes

📸 **Additional Authentication at Startup For Operating System Drives Overview** 

![Additional Authentication at Startup For Operating System Drives Overview](https://github.com/user-attachments/assets/1db8d4ef-527f-4610-af4b-36280c02aba0)

- **Enable use of BitLocker authentication requiring preboot keyboard input on slates:** Enabled
- **Configure minimum PIN length for startup:** Enabled
- **Choose how BitLocker-protected operating system drives can be recovered:** Enabled  
- **Configure use of hardware-based encryption for operating system drives:** Disabled
- **Allow enhanced PINs for startup:** Enabled
- **Choose drive encryption method and cipher strength:** Enabled  
  - **Setting:** XTS-AES 256-bit  

📸 **BitLocker-Protected Operating System Drives Settings** 

![BitLocker-Protected Operating System Drives Settings](https://github.com/user-attachments/assets/3e8c922a-636c-4a01-b647-290dacb5033e)

📸 **BitLocker Drive Encryption Method and Cipher Strength**

![BitLocker Drive Encryption Policies for Operating System Drives 3](https://github.com/user-attachments/assets/eb4bcf7b-8aa6-4b84-b495-4e5769a32ce9)

📸 **BitLocker Drive Encryption Overview**

![BitLocker Drive Encryption Policies for Operating System Drives 4](https://github.com/user-attachments/assets/1ef6eec1-bb0a-4a7a-aebd-e975e407eaed)

📸 **BitLocker Drive Encryption Policies for Operating System Drives Overview** 

![BitLocker Drive Encryption Policies for Operating System Drives Overview](https://github.com/user-attachments/assets/37bdd867-c4d7-47b1-b0d4-67a83b5ff55d)

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

![BitLocker Drive Encryption Fixed Drive Settings Overview](https://github.com/user-attachments/assets/4a784e3a-6046-41fd-bb49-dacc95cb9e69)

### 4. 🔑 Configure Removable Drive Encryption

In the GPO, I navigated to:

  📂 `Computer Configuration → Administrative Templates → Windows Components → BitLocker Drive Encryption → Removable Data Drives`

I enabled:

- **Configure use of password for removable data drives:** Enabled
- **Control use of BitLocker on removable drives** Enabled 
- **Deny write access to removable drives not protected by BitLocker:** Enabled

📸 **BitLocker Drive Encryption Removable Data Drives Overview** 

![BitLocker Drive Encryption Removable Data Drives Overview](https://github.com/user-attachments/assets/bb7d38ab-357c-4f9b-a12c-6c79d702ff7c)

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

![BitLocker Drive Encryption Options for Network Unlock Feature](https://github.com/user-attachments/assets/df624485-fd6a-4b1e-bb47-b3298e4f7bc2)

📸 **Choose Default Folder For Recovery Password Settings**

![BitLocker Drive Encryption Options for Network Unlock Feature 1](https://github.com/user-attachments/assets/3aa58a18-da3a-4912-8065-a4661a32fa99)

📸 **Choose How Users Can Recover BitLocker-protected drives Settings**

![BitLocker Drive Encryption Options for Network Unlock Feature 2](https://github.com/user-attachments/assets/939c1f22-2aa3-455e-90d7-742305c08fe0)

📸 **Choose Drive Encryption Method and Cipher Strength Settings**

![BitLocker Drive Encryption Options for Network Unlock Feature 3](https://github.com/user-attachments/assets/4b7a867a-2b6b-4c80-a805-77ccde54344f)

📸 **Provide The Unique Identifiers For Your Organization Settings**

![BitLocker Drive Encryption Options for Network Unlock Feature 4](https://github.com/user-attachments/assets/3e583e4d-94d0-439e-a956-7bf652dea338)

📸 **Validate Smart Card Certificate Usage Rule Compliance Settings**

![BitLocker Drive Encryption Options for Network Unlock Feature 5](https://github.com/user-attachments/assets/64878673-a3e6-47ff-bf47-e6634ee4b9e2)

📸 **Network Unlock Settings Overview**

![BitLocker Drive Encryption Options for Network Unlock Feature Overview](https://github.com/user-attachments/assets/8fa82a9c-d03c-4473-939d-b1503fc6c41a)

---

### 6. 🗄️ Configure Data Recovery Agents (DRA)

To manage data recovery securely, I:

1. Created a DRA certificate using the `manage-bde -protectors` command.
2. Exported the certificate and added it to the GPO under:

  📂 `Computer Configuration → Policies → Windows Settings → Security Settings → Public Key Policies → BitLocker Drive Encryption`

📸 **DRA Certificate Configuration**

![BitLocker Drive Encryption Policies for Importing DRA Certificate Into BitLocker policy](https://github.com/user-attachments/assets/4557a403-391b-414b-8e6b-d8ecadeb6904)

![BitLocker Drive Encryption Policies for Importing DRA Certificate Into BitLocker policy 1](https://github.com/user-attachments/assets/1c2b2636-d771-4778-ae1b-af9a245d240f)

![BitLocker Drive Encryption Policies for Importing DRA Certificate Into BitLocker policy 2](https://github.com/user-attachments/assets/e110f2cf-ceba-467f-a693-be4bda7142fb)

![BitLocker Drive Encryption Policies for Importing DRA Certificate Into BitLocker policy 3](https://github.com/user-attachments/assets/ea28a692-ccd0-4a25-93eb-558eabefd645)

![BitLocker Drive Encryption Policies for Importing DRA Certificate Into BitLocker policy 4](https://github.com/user-attachments/assets/ea6129bd-eef8-4ccd-a18e-b2b5e3ff421f)

![BitLocker Drive Encryption Policies for Importing DRA Certificate Into BitLocker policy 5](https://github.com/user-attachments/assets/dab51797-353e-481d-95a2-70224a4f3ace)

---

## Summary

This section demonstrated how to manage full-disk encryption across different drive types using Group Policy. It reflects a practical understanding of enterprise-grade BitLocker deployment, compliance enforcement, and data recovery preparedness in an Active Directory environment.

📸 **Client System With BitLocker Status**

![Client System with BitLocker Status](https://github.com/user-attachments/assets/41121d23-03d1-4c2c-bfd1-49a0a5fb5e1f)

### ✅ BitLocker Recovery

**Path:** 📂 `BitLocker Drive Encryption > Operating System Drives > BitLocker Recovery`

- **Save BitLocker recovery information to Active Directory Domain Services:** Enabled  
  - ✅ Store recovery passwords and key packages  
- **Do not enable BitLocker until recovery information is stored to AD DS:** Enabled  

📸 **BitLocker Policy Settings**  

![BitLocker Policy Settings](https://github.com/user-attachments/assets/29c60283-bdfd-479c-8c79-504872af8158)

![BitLocker Policy Settings 1](https://github.com/user-attachments/assets/8d4f7c52-d317-4c67-8f0f-384237d68308)

![BitLocker Policy Settings 2](https://github.com/user-attachments/assets/86d22d63-248f-425f-be94-d33b3c41275d)

![BitLocker Policy Settings 3](https://github.com/user-attachments/assets/7837af5e-d06c-4078-b2e1-95d72b10399d)

![BitLocker Policy Settings 4](https://github.com/user-attachments/assets/f7c3c76a-5244-474d-9eb4-49ffa161b7db)

![BitLocker Policy Settings 5](https://github.com/user-attachments/assets/02a4f6c8-c0ec-43fa-bfb3-e82d260f8567)

![BitLocker Policy Settings 6](https://github.com/user-attachments/assets/ad355001-a11c-48af-82ac-7ff24b3110e4)

![BitLocker Policy Settings 7](https://github.com/user-attachments/assets/8d40e5a1-4549-4883-b304-f32463ce21d6)

---

## 🧪 3. Verification and Testing

- Ran `gpupdate /force` on a Windows 11 domain-joined client.  
- Used `manage-bde -status` and `Get-BitLockerVolume` in PowerShell to verify BitLocker encryption status.  
- Confirmed recovery keys were stored in Active Directory via the **Active Directory Users and Computers (ADUC)** console.  
- Rebooted to test TPM + PIN prompt on startup.

📸 **PowerShell Output Showing BitLocker Status:**  

![PowerShell Output Showing BitLocker Status 1](https://github.com/user-attachments/assets/e4686c98-a1ea-43bb-9c17-c1651d5fb452)

📸 **ADUC Interface Displaying BitLocker Recovery Tab:**  

![BitLocker Recovery Tab at AUDC For DESKTOP-2N3JERQ](https://github.com/user-attachments/assets/10ee3290-3395-45ad-9c36-10d30dfc985a)

---

## 🗂️ 4. Screenshot Storage

All images related to this section are stored in:  
📂 `06-Screenshots/BitLocker-Policy/`![BitLocker GPO Editor](../../06-Screenshots/BitLocker-Policy/bitlocker-gpo-settings.png)
