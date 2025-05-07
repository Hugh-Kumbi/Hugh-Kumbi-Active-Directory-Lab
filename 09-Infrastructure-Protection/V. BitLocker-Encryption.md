# 🔐 BitLocker Drive Encryption Policy for Windows Server 2025 Active Directory

In this section, I enforced BitLocker drive encryption policies to protect data at rest on all Windows 11 client devices. This policy ensures that all operating system drives are encrypted using secure standards and recovery mechanisms, providing resilience against data breaches caused by device loss or theft.

---

## 🏷️ 1. GPO Name

- **GPO Name:** BitLocker Policy  
- **Linked To:** Domain Computers OU

📸 **Screenshot suggestion:**  
- Group Policy Management Console showing the BitLocker GPO linked to the appropriate OU  
- GPMC Editor open to BitLocker Drive Encryption settings

---

## ⚙️ 2. Policy Configuration

The following policies were configured under:  
`Computer Configuration > Policies > Administrative Templates > Windows Components > BitLocker Drive Encryption`

### ✅ Operating System Drives

**Path:** `BitLocker Drive Encryption > Operating System Drives`

- **Require additional authentication at startup:** Enabled  
  - ✅ TPM + PIN  
  - ✅ TPM only (fallback if no PIN configured)  
- **Configure use of hardware-based encryption for operating system drives:** Disabled  
- **Choose drive encryption method and cipher strength:** Enabled  
  - **Setting:** XTS-AES 256-bit  
- **Configure TPM startup key settings:** Enabled  
  - **Allow TPM:** Yes  
  - **Allow TPM + PIN:** Yes  
  - **Allow TPM + Startup Key:** No  
  - **Allow TPM + PIN + Startup Key:** No  

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
📂 `06-Screenshots/BitLocker-Policy/`

Example embed:

```md
![BitLocker GPO Editor](../../06-Screenshots/BitLocker-Policy/bitlocker-gpo-settings.png)
