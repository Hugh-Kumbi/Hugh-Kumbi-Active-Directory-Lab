# 🔐 BitLocker Drive Encryption Policy for Windows Server 2025 Active Directory

In this section, I enforced BitLocker drive encryption policies to protect data at rest on all Windows 11 client devices. This policy ensures that all operating system drives are encrypted using secure standards and recovery mechanisms, providing resilience against data breaches caused by device loss or theft.

---

## 🏷️ 1. GPO Name

- **GPO Name:** BitLocker Policy  
- **Linked To:** Domain-wide

📸 **Group Policy Management Console showing the BitLocker GPO linked to Domain Root**  

![Group Policy Management Console showing the BitLocker GPO linked to Domain Root](https://github.com/user-attachments/assets/e3a06f9e-8bc6-45a7-8b11-4a9d64e8c230)

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

![BitLocker Drive Encryption Policies for Operating System Drives](https://github.com/user-attachments/assets/fbed651b-51f5-47b3-b452-ca364c48e123)

- **Enable use of BitLocker authentication requiring preboot keyboard input on slates:** Enabled
- **Configure minimum PIN length for startup:** Enabled
- **Configure recovery options:** Enabled  
- **Configure use of hardware-based encryption for operating system drives:** Disabled
- **Allow enhanced PINs for startup:** Enabled
- **Choose drive encryption method and cipher strength:** Enabled  
  - **Setting:** XTS-AES 256-bit  

📸 **BitLocker-Protected Operating System Drives Overview** 

![BitLocker Drive Encryption Policies for Operating System Drives 2](https://github.com/user-attachments/assets/6252125b-12bf-40c5-80e9-2766931ca8bd)

📸 **BitLocker Drive Encryption Policies for Operating System Drives Overview** 

![BitLocker Drive Encryption Policies for Operating System Drives Overview](https://github.com/user-attachments/assets/37bdd867-c4d7-47b1-b0d4-67a83b5ff55d)

### 3. Configure Fixed Data Drive Encryption

I navigated to:

  📂 `Computer Configuration → Administrative Templates → Windows Components → BitLocker Drive Encryption → Fixed Data Drives`

I enabled:

- **Deny write access to fixed drives not protected by BitLocker**
- **Choose how BitLocker-protected fixed drives can be recovered**

📸 **BitLocker Drive Encryption Fixed Drive Settings Overview** 

![BitLocker Drive Encryption Fixed Drive Settings Overview](https://github.com/user-attachments/assets/4a784e3a-6046-41fd-bb49-dacc95cb9e69)

### 4. Configure Removable Drive Encryption

I navigated to:

  📂 `Computer Configuration → Administrative Templates → Windows Components → BitLocker Drive Encryption → Removable Data Drives`

I enabled:

- **Control use of BitLocker on removable drives**
- **Deny write access to removable drives not protected by BitLocker**

📸 **BitLocker Drive Encryption Removable Data Drives Overview** 

![BitLocker Drive Encryption Removable Data Drives Overview](https://github.com/user-attachments/assets/bb7d38ab-357c-4f9b-a12c-6c79d702ff7c)

---

### 5. Enable Network Unlock

To allow systems to automatically unlock BitLocker-protected OS drives on domain-joined systems with TPM, I enabled:

- **Enable BitLocker Network Unlock**

📸 **Insert Screenshot of Network Unlock Settings Here**

![BitLocker Drive Encryption Options for Network Unlock Feature Overview](https://github.com/user-attachments/assets/8fa82a9c-d03c-4473-939d-b1503fc6c41a)

---

### 6. Configure Data Recovery Agents (DRA)

To manage data recovery securely, I:

1. Created a DRA certificate using the `manage-bde -protectors` command.
2. Exported the certificate and added it to the GPO under:

  📂 `Computer Configuration → Policies → Windows Settings → Security Settings → Public Key Policies → BitLocker Drive Encryption`

📸 **Insert Screenshot of DRA Certificate Configuration Here**

![BitLocker Drive Encryption Policies for Importing DRA Certificate Into BitLocker policy](https://github.com/user-attachments/assets/4557a403-391b-414b-8e6b-d8ecadeb6904)

![BitLocker Drive Encryption Policies for Importing DRA Certificate Into BitLocker policy 1](https://github.com/user-attachments/assets/1c2b2636-d771-4778-ae1b-af9a245d240f)

![BitLocker Drive Encryption Policies for Importing DRA Certificate Into BitLocker policy 2](https://github.com/user-attachments/assets/e110f2cf-ceba-467f-a693-be4bda7142fb)

![BitLocker Drive Encryption Policies for Importing DRA Certificate Into BitLocker policy 3](https://github.com/user-attachments/assets/ea28a692-ccd0-4a25-93eb-558eabefd645)

![BitLocker Drive Encryption Policies for Importing DRA Certificate Into BitLocker policy 4](https://github.com/user-attachments/assets/ea6129bd-eef8-4ccd-a18e-b2b5e3ff421f)

![BitLocker Drive Encryption Policies for Importing DRA Certificate Into BitLocker policy 5](https://github.com/user-attachments/assets/dab51797-353e-481d-95a2-70224a4f3ace)

---

## Summary

This section demonstrated how to manage full-disk encryption across different drive types using Group Policy. It reflects a practical understanding of enterprise-grade BitLocker deployment, compliance enforcement, and data recovery preparedness in an Active Directory environment.

📸 **Insert Screenshot of Client System with BitLocker Status Here**




### ✅ BitLocker Recovery

**Path:** `BitLocker Drive Encryption > Operating System Drives > BitLocker Recovery`

- **Save BitLocker recovery information to Active Directory Domain Services:** Enabled  
  - ✅ Store recovery passwords and key packages  
- **Do not enable BitLocker until recovery information is stored to AD DS:** Enabled  

📸 **Screenshot suggestions:**  
- BitLocker policy settings shown in the GPO Editor  
- Recovery options and encryption method selections

---

## 🧪 3. Verification and Testing

- Ran `gpupdate /force` on a Windows 11 domain-joined client.  
- Used `manage-bde -status` and `Get-BitLockerVolume` in PowerShell to verify BitLocker encryption status.  
- Confirmed recovery keys were stored in Active Directory via the **Active Directory Users and Computers (ADUC)** console.  
- Rebooted to test TPM + PIN prompt on startup.

📸 **Screenshot suggestion:**  
- PowerShell output showing BitLocker status  
- ADUC interface displaying BitLocker recovery tab

---

## 🗂️ 4. Screenshot Storage

All images related to this section are stored in:  
📂 `06-Screenshots/BitLocker-Policy/`![BitLocker GPO Editor](../../06-Screenshots/BitLocker-Policy/bitlocker-gpo-settings.png)
