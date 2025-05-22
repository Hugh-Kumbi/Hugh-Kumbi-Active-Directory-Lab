# 📜 Active Directory Certificate Services

## 📊 Overview

In this part of my Active Directory lab, I installed and configured **Active Directory Certificate Services (AD CS)** to establish a Public Key Infrastructure (PKI) within the domain. AD CS provides customizable services for issuing and managing public key certificates, which are used for securing information exchange through authentication, digital signatures, and encryption.

This setup laid the foundation for implementing advanced features like BitLocker recovery agents, secure email, and certificate-based authentication for users and devices across the domain.

---

## 🛠️ Configuration Steps

### 1. 🖥️ Add the AD CS Role

Using **Server Manager**, I added the **Active Directory Certificate Services** role on my domain controller.

- Role selected: `Active Directory Certificate Services`
- Services selected:
  - Certification Authority (CA)
  - Certification Authority Web Enrollment

📸 **Server Role Selection**

![AD CS Server Role Selection](https://github.com/user-attachments/assets/a35854bd-81f3-4d09-8680-97323ba0823f)

---

### 2. 📡 Configure AD CS Role Services

After the role installation, I launched the **AD CS Configuration Wizard** to set up the CA:

- **Role services configured**:
  - Certification Authority
  - Certification Authority Web Enrollment
- **Setup type**: Enterprise CA
- **CA type**: Root CA
- **Private key**: Created a new private key
- **Cryptography settings**: RSA 2048-bit
- **CA name**: Auto-generated using domain and hostname
- **Validity period**: 10 years
- **Certificate database locations**: Used default paths

📸 **AD CS Configuration Wizard Credentials**

![AD CS Configuration Wizard Credentials](https://github.com/user-attachments/assets/b0924a25-a74d-4e2e-ac55-a5c787223bc6)

📸 **AD CS Configuration Wizard Role Services**

![AD CS Configuration Wizard Role Services](https://github.com/user-attachments/assets/099502c9-e730-4d31-b29a-f372555f4cd7)

📸 **AD CS Configuration Wizard Setup Type**

![AD CS Configuration Wizard Setup Type](https://github.com/user-attachments/assets/99a258bb-e8a6-4877-b169-b7f419c6eee6)

📸 **AD CS Configuration Wizard CA Type**

![AD CS Configuration Wizard CA Type](https://github.com/user-attachments/assets/726b4b7c-b38d-4af7-b0ed-a599e9e3766a)

📸 **AD CS Configuration Wizard Private Key**

![AD CS Configuration Wizard Private Key](https://github.com/user-attachments/assets/d2454eef-e52f-4a73-a6bc-4fed9741545e)

📸 **AD CS Configuration Wizard Cryptography**

![AD CS Configuration Wizard Cryptography](https://github.com/user-attachments/assets/2f051796-4f8a-4315-9be3-36870a5f3f11)

📸 **AD CS Configuration Wizard CA Name**

![AD CS Configuration Wizard CA Name](https://github.com/user-attachments/assets/593ca3bc-c6cd-42e6-b60e-e72b940d3d6f)

📸 **AD CS Configuration Wizard Validity Period**

![AD CS Configuration Wizard Validity Period](https://github.com/user-attachments/assets/73c1d3a6-5f34-4831-afbf-43d56f29e5c5)

📸 **AD CS Configuration Wizard Certificate Database**

![AD CS Configuration Wizard Certificate Database](https://github.com/user-attachments/assets/002323f5-63da-4798-97c0-b193c276cbc1)

📸 **AD CS Configuration Wizard Authentification Type for CEP**

![AD CS Configuration Wizard Authentification Type for CEP](https://github.com/user-attachments/assets/8c2346a7-beae-4d4f-8308-7d78a972dfae)

📸 **AD CS Configuration Wizard Server Certificate**

![AD CS Configuration Wizard Server Certificate](https://github.com/user-attachments/assets/0e60bc55-1ba0-4adb-8fc7-f0bb87cf1aba)

📸 **AD CS Configuration Wizard Confirmation**

![AD CS Configuration Wizard Confirmation](https://github.com/user-attachments/assets/c0033221-fdee-4fa9-b3ba-6134e7a4985a)

📸 **AD CS Configuration Wizard Progress**

![AD CS Configuration Wizard Progress](https://github.com/user-attachments/assets/58d8de44-111e-412c-88d8-c8308e20e85c)

📸 **AD CS Configuration Wizard Results**

![AD CS Configuration Wizard Results](https://github.com/user-attachments/assets/97b55a6b-4865-482e-9f6c-8a7299cb8cd5)

📸 **AD CS Configuration Final Result**

![AD CS Configuration Final Result](https://github.com/user-attachments/assets/365b5ae9-1547-4f06-8084-ad09423d9e28)

---

### 3. 🔍 Verify Certification Authority Installation

After completing the wizard, I verified the CA installation via:

- The **Certification Authority console** (`certsrv.msc`)
- Confirmed the root certificate was issued
- Checked Event Viewer logs for successful startup

📸 **Certification Authority Console**

![Specify Credentials to Configure Role Services 12](https://github.com/user-attachments/assets/cb859fd7-5977-4d81-a4cc-8360309f7e34)

📸 **Certification Authority Console Showing Issued Root Certificate**

![Issued Root Certificate](https://github.com/user-attachments/assets/c612d45b-6acb-4bac-af93-f4a3bd1bff3b)

---

### 4. 🌐 Publish the Root Certificate

To ensure domain clients trust the internal CA, I:

- Opened **Group Policy Management**
- Navigated to:  

Computer Configuration → Policies → Windows Settings → Security Settings → Public Key Policies → Trusted Root Certification Authorities

- Imported the Root CA certificate
- Forced Group Policy update using `gpupdate /force` on client machines

📸 **Root CA GPO Configuration**

---

### 5. Optional: 📥 Install Web Enrollment

To simulate a certificate request portal, I optionally installed **Certificate Authority Web Enrollment**, which allows users to request and retrieve certificates via a browser interface.

📸 **Web Enrollment Page (certsrv)**

---

## Summary

By installing and configuring AD CS, I established a foundational internal PKI within my Active Directory lab. This service enables secure identity verification and supports various enterprise features such as BitLocker encryption, S/MIME, and certificate-based authentication. The configuration of the CA, key parameters, and trust distribution showcases my ability to manage core security infrastructure in a Windows Server environment.

📸 **CA Root Certificate Installed on Client Machine**

---

## 📁 6. Screenshot Storage

All screenshots for this section should be placed in:  
📂 [`06-Screenshots/IV. Active-Directory-Setup.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/IV.%20Active-Directory-Setup/README.md)
