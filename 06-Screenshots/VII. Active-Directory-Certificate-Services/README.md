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
   - Certification Authority Web Enrollment

📸 **Server Role Selection**

![AD CS Server Role Selection](https://github.com/user-attachments/assets/a35854bd-81f3-4d09-8680-97323ba0823f)

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

![AD CS Configuration Wizard Results](https://github.com/user-attachments/assets/97b55a6b-4865-482e-9f6c-8a7299cb8cd5)

---

3. **🔗 Integration with Active Directory**  
   The CA was published to AD, enabling domain-joined clients to trust issued certificates automatically.

📸 **Root CA GPO Configuration**

<img width="1920" height="909" alt="RootCA Distribution Policy" src="https://github.com/user-attachments/assets/017edd80-8a1f-4d5a-be13-60a263535d45" /><br />

<img width="1920" height="909" alt="RootCA Distribution Policy 1" src="https://github.com/user-attachments/assets/3c086634-d98b-40b3-94a9-e4d4e0f25484" /><br />

<img width="1920" height="909" alt="RootCA Distribution Policy 2" src="https://github.com/user-attachments/assets/c43f3be8-9158-4a8c-864e-9dfd893fdaf8" /><br />

<img width="1920" height="909" alt="RootCA Distribution Policy 3" src="https://github.com/user-attachments/assets/bbd9d479-71b4-4747-817f-ac0ccb1163b9" /><br />

<img width="1920" height="909" alt="RootCA Distribution Policy 4" src="https://github.com/user-attachments/assets/afd3685d-ffd2-4030-8cc0-24dc0e1ff22b" /><br />

<img width="1920" height="909" alt="RootCA Successfully imported" src="https://github.com/user-attachments/assets/4b3d5fed-e312-4ea4-9145-e501a5aa3377" /><br />

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

---

Each image corresponds to a step described in:<br /> 
📂 [`03-Configuration/IV. Active-Directory-Certificate-Services.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/edit/main/03-Configuration/IV.%20Active-Directory-Certificate-Services.md)
