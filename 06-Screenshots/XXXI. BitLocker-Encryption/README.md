# 🔐 BitLocker Encryption

This section covers the configuration of BitLocker Drive Encryption to secure data stored on devices in the Active Directory environment. BitLocker is an essential tool for ensuring that sensitive information remains protected, even in the event of device theft or unauthorized access.

---

## 1. Enabling BitLocker on the Domain Controller

On the domain controller, I enabled BitLocker for system drives to ensure that the OS disk is fully encrypted. This requires TPM (Trusted Platform Module) support.

📸 **Enabling BitLocker on Domain Controller**

<img width="1920" height="909" alt="BitLocker-Protected Operating System Drives Settings" src="https://github.com/user-attachments/assets/e64c44b1-9fb3-4887-959f-344ec10b0cd8" />

---

## 2. Configuring Group Policy for BitLocker

I configured Group Policy to enforce BitLocker settings across our domain. I navigated to `Computer Configuration > Policies > Administrative Templates > Windows Components > BitLocker Drive Encryption` and configured the necessary settings. I specifically enabled and configured policies like "Require additional authentication at startup" and "Choose drive encryption method and cipher strength" to meet our security requirements.

📸 **Configuring Group Policy for BitLocker**

<img width="1920" height="909" alt="BitLocker Drive Encryption Policies for Operating System Drives Overview" src="https://github.com/user-attachments/assets/c84d3785-c5be-4eec-9bd8-893ec3e2f974" />

---

## 3. Enabling TPM for BitLocker

I ensured the TPM (Trusted Platform Module) was enabled in the BIOS/UEFI settings of the system. I did this because I know the TPM provides a secure, hardware-based storage for the encryption keys, which is a critical foundation for BitLocker's security.

📸 **Enabling TPM for BitLocker**

<img width="1920" height="909" alt="Enabling TPM for BitLocker" src="https://github.com/user-attachments/assets/8cd9c1d2-c118-4472-be3e-66c3dd1fd61e" />

---

## 4. Configuring BitLocker Recovery Options

I configured BitLocker to automatically back up the recovery keys to Active Directory. I did this through Group Policy to ensure that I, or another administrator, can recover any encrypted drive in case of a hardware failure, TPM issue, or other boot problem. This guarantees we never lose access to our encrypted data.

📸 **Configuring BitLocker Recovery Options**

<img width="1920" height="909" alt="Store BitLocker Recovery Information in Active Directory Domain Services Settings" src="https://github.com/user-attachments/assets/5be16696-b5fe-453d-a7a0-52d343e3052e" />

---

## 5. Managing BitLocker via PowerShell

I used PowerShell to manage BitLocker on client machines. I used cmdlets like Enable-BitLocker and Disable-BitLocker to automate the encryption and decryption processes, which helped me deploy and manage drive encryption consistently across the entire environment.

📸 **Managing BitLocker via PowerShell**

<img width="1920" height="909" alt="PowerShell Output Showing BitLocker Status for AD-WIN11-01" src="https://github.com/user-attachments/assets/89072965-156c-4d6c-b9b9-3cc09f14fc55" /><br />

<img width="1920" height="909" alt="PowerShell Output Showing BitLocker Status for AD-WIN11-01 1" src="https://github.com/user-attachments/assets/267d1b63-55a0-4636-872b-0c47e6e6e321" /><br />

<img width="1920" height="909" alt="PowerShell Output Showing BitLocker Status for AD-WIN11-02" src="https://github.com/user-attachments/assets/9acaec94-3be3-4308-b49d-e5725b3b4b46" /><br />

<img width="1920" height="909" alt="PowerShell Output Showing BitLocker Status for AD-WIN11-02 1" src="https://github.com/user-attachments/assets/ecabe17e-753d-496e-a96f-443101af56a1" /><br />

---

## 6. Monitoring BitLocker Status

I used the BitLocker Recovery Password Viewer feature in Active Directory Users and Computers to monitor and retrieve the BitLocker recovery keys for our encrypted devices. This allows me to quickly assist users who are locked out of their machines and ensures we always have secure access to our company data.

📸 **Monitoring BitLocker Status**

<img width="1920" height="909" alt="AD-WIN11-01 System With BitLocker Status" src="https://github.com/user-attachments/assets/eed3e722-7e74-41b6-86d5-e9327865b1c1" /><br />

<img width="1920" height="909" alt="AD-WIN11-02 System With BitLocker Status" src="https://github.com/user-attachments/assets/7678e610-d9cd-420b-8671-9dd29216cfbb" /><br />

---

## 7. Enabling BitLocker for Removable Drives

I enabled BitLocker to go through Group Policy to enforce encryption on all removable drives, like USB drives. I did this by navigating to `User Configuration > Administrative Templates > Windows Components > BitLocker Drive Encryption > Control use of BitLocker on removable drives and configuring the policy to require encryption.` This ensures that any data saved to a removable drive is automatically protected.

📸 **Enabling BitLocker for Removable Drives**

<img width="1920" height="909" alt="BitLocker Drive Encryption Removable Data Drives Overview" src="https://github.com/user-attachments/assets/c53fa362-fb2d-4fbd-9836-7e7bd278cfe1" />

---

## 8. Verifying BitLocker Encryption

I verified that all drives are properly encrypted by regularly checking their BitLocker status. I could have done this through the Control Panel on individual machines but, more efficiently, I ran the Get-BitLockerVolume PowerShell command to get a quick status report for all volumes on a system. This ensures our encryption policies are actively protecting our data.


📸 **Verifying BitLocker Encryption**

<img width="1920" height="909" alt="AD-WIN11-01 System With BitLocker Status" src="https://github.com/user-attachments/assets/b9ce0487-d0d2-49d2-8a6b-1f3cf7110de6" /><br />

<img width="1920" height="909" alt="AD-WIN11-02 System With BitLocker Status" src="https://github.com/user-attachments/assets/dda21e5d-e0b5-4063-b770-367407726754" /><br />


---

## 9. Troubleshooting BitLocker Issues

When BitLocker failed to encrypt a drive, I checked for common issues like a TPM misconfiguration, unsupported hardware, or incorrect Group Policy settings. I used the built-in BitLocker diagnostic tools, such as manage-bde -status and the event logs, to help me quickly identify and resolve the specific problem.

---

Each image corresponds to a step described in 📂 `09-Infrastructure-Protection/V.BitLocker-Encryption.md`.
