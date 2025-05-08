# Active-Directory-Certificate-Services

## Overview

In this part of my Active Directory lab, I installed and configured **Active Directory Certificate Services (AD CS)** to establish a Public Key Infrastructure (PKI) within the domain. AD CS provides customizable services for issuing and managing public key certificates, which are used for securing information exchange through authentication, digital signatures, and encryption.

This setup laid the foundation for implementing advanced features like BitLocker recovery agents, secure email, and certificate-based authentication for users and devices across the domain.

---

## Configuration Steps

### 1. Add the AD CS Role

Using **Server Manager**, I added the **Active Directory Certificate Services** role on my domain controller.

- Role selected: `Active Directory Certificate Services`
- Services selected:
  - Certification Authority (CA)
  - Certification Authority Web Enrollment *(optional)*

📸 **Server Role Selection**

---

### 2. Configure AD CS Role Services

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

---

### 3. Verify Certification Authority Installation

After completing the wizard, I verified the CA installation via:

- The **Certification Authority console** (`certsrv.msc`)
- Confirmed the root certificate was issued
- Checked Event Viewer logs for successful startup

📸 **Certification Authority Console**

---

### 4. Publish the Root Certificate

To ensure domain clients trust the internal CA, I:

- Opened **Group Policy Management**
- Navigated to:  

Computer Configuration → Policies → Windows Settings → Security Settings → Public Key Policies → Trusted Root Certification Authorities

- Imported the Root CA certificate
- Forced Group Policy update using `gpupdate /force` on client machines

📸 **Root CA GPO Configuration**

---

### 5. Optional: Install Web Enrollment

To simulate a certificate request portal, I optionally installed **Certificate Authority Web Enrollment**, which allows users to request and retrieve certificates via a browser interface.

📸 **Web Enrollment Page (certsrv)**

---

## Summary

By installing and configuring AD CS, I established a foundational internal PKI within my Active Directory lab. This service enables secure identity verification and supports various enterprise features such as BitLocker encryption, S/MIME, and certificate-based authentication. The configuration of the CA, key parameters, and trust distribution showcases my ability to manage core security infrastructure in a Windows Server environment.

📸 **CA Root Certificate Installed on Client Machine**
