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

![Certification Authority Console](https://github.com/user-attachments/assets/304ab09f-d196-48fd-85d5-0097fa74bafe)

📸 **Certification Authority Console Showing Issued Root Certificate**

![Certification Authority Console Showing Issued Root Certificate](https://github.com/user-attachments/assets/73fff1d7-7cb7-4f69-bc1f-0b11cbc82853)

---

### 4. 🌐 Publish the Root Certificate

To ensure domain clients trust the internal CA, I:

- Opened **Group Policy Management**
- Navigated to:  

📂 `Computer Configuration → Policies → Windows Settings → Security Settings → Public Key Policies → Trusted Root Certification Authorities`

- Imported the Root CA certificate
- Forced Group Policy update using `gpupdate /force` on client machines

📸 **Root CA GPO Configuration**

<img width="1920" height="909" alt="RootCA Distribution Policy" src="https://github.com/user-attachments/assets/017edd80-8a1f-4d5a-be13-60a263535d45" /><br />

<img width="1920" height="909" alt="RootCA Distribution Policy 1" src="https://github.com/user-attachments/assets/3c086634-d98b-40b3-94a9-e4d4e0f25484" /><br />

<img width="1920" height="909" alt="RootCA Distribution Policy 2" src="https://github.com/user-attachments/assets/c43f3be8-9158-4a8c-864e-9dfd893fdaf8" /><br />

<img width="1920" height="909" alt="RootCA Distribution Policy 3" src="https://github.com/user-attachments/assets/bbd9d479-71b4-4747-817f-ac0ccb1163b9" /><br />

<img width="1920" height="909" alt="RootCA Distribution Policy 4" src="https://github.com/user-attachments/assets/afd3685d-ffd2-4030-8cc0-24dc0e1ff22b" /><br />

<img width="1920" height="909" alt="RootCA Successfully imported" src="https://github.com/user-attachments/assets/4b3d5fed-e312-4ea4-9145-e501a5aa3377" /><br />

---

### 5. 📥 Install Web Enrollment

After publishing the Root CA certificate via Group Policy, I verified that the **Certificate Authority Web Enrollment** portal was accessible from both the server and domain-joined clients. Access was successful using the FQDN `https://WinServer2025.hughdomain.local/certsrv`.

📸 **Web Enrollment Site on the CA Server**

<img width="1920" height="909" alt="Web Enrollment Site on the CA Server" src="https://github.com/user-attachments/assets/31ca30f1-fbbf-40fb-8800-bfcf215d226c" /><br />

📸 **Web Enrollment Site on the CA Server `AD-WIN11-01`**

<img width="1920" height="909" alt="Web Enrollment Site on the CA Server AD-WIN11-01" src="https://github.com/user-attachments/assets/32bc62bd-22c8-4a90-bad0-000e62562848" /><br />

📸 **Web Enrollment Site on the CA Server `AD-WIN11-02`**

<img width="1920" height="909" alt="Web Enrollment Site on the CA AD-WIN11-02" src="https://github.com/user-attachments/assets/61b7b2fb-6933-407c-bf39-433db4ad25bd" />

---

## Summary

By installing and configuring AD CS, I established a foundational internal PKI within my Active Directory lab. This service enables secure identity verification and supports various enterprise features such as BitLocker encryption, S/MIME, and certificate-based authentication. The configuration of the CA, key parameters, and trust distribution showcases my ability to manage core security infrastructure in a Windows Server environment.

📸 **CA Root Certificate Installed on `AD-WIN11-01`**

<img width="1920" height="909" alt="CA Root Certificate Installed on AD-WIN11-01" src="https://github.com/user-attachments/assets/43249b7a-4346-4e0a-b5cc-02ece0cef7a1" /><br />

📸 **CA Root Certificate Installed on `AD-WIN11-02`**

<img width="1920" height="909" alt="CA Root Certificate Installed on AD-WIN11-02" src="https://github.com/user-attachments/assets/17df66ff-60f6-46b6-8970-ae66e3bd1dfe" />

---

## 📁 6. Screenshot Storage

All screenshots for this section can be found in:  
📂 [`06-Screenshots/VII. Active-Directory-Certificate-Services`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/VII.%20Active-Directory-Certificate-Services/README.md)
