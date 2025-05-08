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
  - Certification Authority Web Enrollment *(optional)*

📸 **Server Role Selection**

![Active Directory Certificate Services (AD CS) Installation 6](https://github.com/user-attachments/assets/f956db8a-1a5e-4775-a8ef-7c98dcd4049e)

---

### 2. 📡 Configure AD CS Role Services

After the role installation, I launched the **AD CS Configuration Wizard** to set up the CA:

- **Role services configured**:
  - Certification Authority
- **Setup type**: Enterprise CA
- **CA type**: Root CA
- **Private key**: Created a new private key
- **Cryptography settings**: RSA 2048-bit
- **CA name**: Auto-generated using domain and hostname
- **Validity period**: 5 years
- **Certificate database locations**: Used default paths

📸 **AD CS Configuration Wizard**

![Specify Credentials to Configure Role Services](https://github.com/user-attachments/assets/475d8cf2-16a5-4ce3-b44e-ab34e2a517fb)

![Specify Credentials to Configure Role Services 1](https://github.com/user-attachments/assets/731c71f9-9088-4b2e-9df8-2eca8460872f)

![Specify Credentials to Configure Role Services 2](https://github.com/user-attachments/assets/80f9378b-9cf1-42a6-ab87-ca82f12b4bf4)

![Specify Credentials to Configure Role Services 3](https://github.com/user-attachments/assets/3c13d88c-0834-453a-ba3c-c611b0df9a1b)

![Specify Credentials to Configure Role Services 4](https://github.com/user-attachments/assets/6a889e4d-7ed5-4a4b-9b6b-6f9d6a3c3488)

![Specify Credentials to Configure Role Services 5](https://github.com/user-attachments/assets/b4d1ae35-abc2-476f-935a-6f24f8e12010)

![Specify Credentials to Configure Role Services 6](https://github.com/user-attachments/assets/6f23e3a5-1171-45aa-836d-26c0d14b6310)

![Specify Credentials to Configure Role Services 7](https://github.com/user-attachments/assets/99d9bfc8-2b33-4f7d-9f9e-51345b01be3d)

![Specify Credentials to Configure Role Services 8](https://github.com/user-attachments/assets/c190e951-92d2-4e98-814b-7b2946f760ca)

![Specify Credentials to Configure Role Services 9](https://github.com/user-attachments/assets/1cf9f466-1889-419c-a479-ae0aba6e8bd1)

![Specify Credentials to Configure Role Services 10](https://github.com/user-attachments/assets/db878a5c-fe90-4f9a-88db-c46a74c5d399)

![Specify Credentials to Configure Role Services 11](https://github.com/user-attachments/assets/66071b85-11cc-4ce6-b0cb-d6665ffe3a58)

---

### 3. 🔍 Verify Certification Authority Installation

After completing the wizard, I verified the CA installation via:

- The **Certification Authority console** (`certsrv.msc`)
- Confirmed the root certificate was issued
- Checked Event Viewer logs for successful startup

📸 **Certification Authority Console**

![Specify Credentials to Configure Role Services 12](https://github.com/user-attachments/assets/cb859fd7-5977-4d81-a4cc-8360309f7e34)

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
