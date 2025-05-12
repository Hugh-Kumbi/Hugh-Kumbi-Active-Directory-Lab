# 🔐 BitLocker Encryption

This section covers the configuration of BitLocker Drive Encryption to secure data stored on devices in your Active Directory environment. BitLocker is an essential tool for ensuring that sensitive information remains protected, even in the event of device theft or unauthorized access.

---

## 1. Enabling BitLocker on the Domain Controller

On your domain controller, enable BitLocker for system drives to ensure that the OS disk is fully encrypted. This requires TPM (Trusted Platform Module) support.

📸 **Enabling BitLocker on Domain Controller**

---

## 2. Configuring Group Policy for BitLocker

Configure Group Policy to enforce BitLocker settings across the domain. Under Computer Configuration > Policies > Administrative Templates > Windows Components > BitLocker Drive Encryption, configure settings like Require additional authentication at startup and Choose drive encryption method and cipher strength.

📸 **Configuring Group Policy for BitLocker**

---

## 3. Enabling TPM for BitLocker

Ensure TPM (Trusted Platform Module) is enabled in the BIOS/UEFI settings of the system. TPM provides a secure hardware-based storage for encryption keys.

📸 **Enabling TPM for BitLocker**

---

## 4. Configuring BitLocker Recovery Options

Configure BitLocker recovery keys to ensure you can recover encrypted drives in case of failure. This is done via Group Policy, and keys are stored in Active Directory.

📸 **Configuring BitLocker Recovery Options**

---

## 5. Managing BitLocker via PowerShell

Use PowerShell to manage BitLocker on client machines. The Enable-BitLocker and Disable-BitLocker cmdlets can be used to automate encryption processes.

📸 **Managing BitLocker via PowerShell**

---

## 6. Monitoring BitLocker Status

Use BitLocker Recovery Password Viewer in Active Directory to monitor and retrieve BitLocker recovery keys for encrypted devices.

📸 **Monitoring BitLocker Status**

---

## 7. Enabling BitLocker for Removable Drives

Enable BitLocker To Go to encrypt removable drives such as USB drives. This is done through Group Policy under User Configuration > Administrative Templates > Windows Components > BitLocker Drive Encryption > Control use of BitLocker on removable drives.

📸 **Enabling BitLocker for Removable Drives**

---

## 8. Verifying BitLocker Encryption

Verify that drives are encrypted by checking the BitLocker status in the Control Panel or using PowerShell commands such as Get-BitLockerVolume.

📸 **Verifying BitLocker Encryption**

---

## 9. Troubleshooting BitLocker Issues

If BitLocker fails to encrypt a drive, check for common issues such as TPM misconfiguration, unsupported hardware, or Group Policy missettings. Use BitLocker Diagnostic Tools to identify issues.

📸 **Troubleshooting BitLocker Issues**

---

Each image corresponds to a step described in 📂 `09-Infrastructure-Protection/V.BitLocker-Encryption.md`.

