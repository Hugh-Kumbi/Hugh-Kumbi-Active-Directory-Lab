# 📜 Active Directory Certificate Services (AD CS)

This section documents the installation and configuration of **Active Directory Certificate Services (AD CS)** in the Windows Server 2025 lab environment. AD CS provides customizable services for issuing and managing public key certificates used in software security systems employing public key technologies.

---

## 🎯 Objectives

- Install and configure AD CS as an Enterprise Root Certification Authority (CA)
- Integrate the CA with Active Directory Domain Services (AD DS)
- Prepare the lab environment for certificate-based security features (e.g., BitLocker)

---

## 📅 Key Tasks Completed

1. **📦 Role Installation**  
   Installed the **Active Directory Certificate Services** role using Server Manager with the following role services:
   - Certification Authority

📸 **Server Role Selection**

![Active Directory Certificate Services (AD CS) Installation 6](https://github.com/user-attachments/assets/f956db8a-1a5e-4775-a8ef-7c98dcd4049e)

---

2. **⚙️ Post-Installation Configuration**  
   Configured the Certification Authority with the following settings:
   - **CA Type:** Enterprise CA  
   - **CA Role:** Root CA  
   - **Private Key:** Created a new private key  
   - **Cryptography:** Default settings (RSA 2048, SHA256)  
   - **Common Name:** Chosen to match the internal domain name  
   - **Validity Period:** Default (5 years)

📸 **AD CS Configuration Wizard Results**

![Specify Credentials to Configure Role Services 11](https://github.com/user-attachments/assets/66071b85-11cc-4ce6-b0cb-d6665ffe3a58)

---

3. **🔗 Integration with Active Directory**  
   The CA was published to AD, enabling domain-joined clients to trust issued certificates automatically.

📸 **Root CA GPO Configuration**

---

4. **✔️ Verification**  
   - Confirmed CA is listed in `certsrv.msc`
   - Ensured the CA is trusted by domain-joined client machines

## ✅ Benefits of AD CS in the Lab

- Enables certificate-based authentication and encryption
- Supports advanced features like:
  - **BitLocker Network Unlock**
  - **Secure Email (S/MIME)**
  - **Smart Card Logon**
- Enhances lab realism for enterprise-level testing and security policy deployment

📸 **Certification Authority Console**

![Specify Credentials to Configure Role Services 12](https://github.com/user-attachments/assets/cb859fd7-5977-4d81-a4cc-8360309f7e34)

📸 **Certification Authority Console Showing Issued Root Certificate**

![Issued Root Certificate](https://github.com/user-attachments/assets/c612d45b-6acb-4bac-af93-f4a3bd1bff3b)
