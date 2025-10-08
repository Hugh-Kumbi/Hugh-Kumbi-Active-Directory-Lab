# 🖼️ Screenshot Gallery: Troubleshooting & Evidence

This document serves as a centralized repository for all screenshots taken during the troubleshooting and resolution of issues within the Active Directory Lab. The images are organized by issue for easy reference.

---

## 🔗🚫 1. Domain Trust Issues

- Error message showing the trust relationship failure.	

📸 **Trust Relationship Failure**

![Error Message Showing Trust Relationship Failure](https://github.com/user-attachments/assets/69fba4ca-38d1-424a-999f-7a7d1ba46d31)

- System Properties window showing the process of rejoining the domain.	

📸 **Rejoining the Domain**

<img width="1920" height="909" alt="Confirmation Screen for Successful Domain Join" src="https://github.com/user-attachments/assets/34595e5f-905f-4d74-94f6-9b89658a49c5" />

---

## 🖥️⛔ 2. RDP Access Denied for Domain Admins

The "Access is denied" error when trying to RDP.	

📸 **Access Denied**

![RDP Access Denied](https://github.com/user-attachments/assets/12745c2e-bf5c-4a8e-a41d-7a767cf172fc)

GPO editor showing Domain Admins added to the "Allow log on through Remote Desktop Services" policy.	

📸 **Adding Domain Admins**

![GPO setting Showing Domain Admins Added To RDP Permissions](https://github.com/user-attachments/assets/e31a3b6d-a423-403a-8813-782af0d30eea)

Successful RDP connection prompt after the policy was applied.	

📸 **Validating RDP Access**

![Regaining RDP access After Adding Domain Admins](https://github.com/user-attachments/assets/d0819674-6fa2-4f42-9274-83b793af8215)

A full, established RDP session to the server.	

📸 **Successful RDP Connection**

![RDP Access Granted](https://github.com/user-attachments/assets/9a1d9aca-b09a-40d5-8618-93f9289db288)

---

## 🔌❌ 3. USB Device Policy Not Applying

Command Prompt output after running gpupdate /force to apply the USB policy.	

📸 **Applying USB Policy**

![Gpupdate Force Command Output For USB Restriction](https://github.com/user-attachments/assets/048cab8d-18ce-4d7a-a2d8-4e541cdfc323)

Output from the gpresult command showing applied Group Policy Objects.	

📸 **Checking USB Policy Application**

![Ran gpresult](https://github.com/user-attachments/assets/d2cd5644-473a-43dd-a886-ce6360f7291d)

Evidence of the policy working: "Access is denied" when trying to open a USB drive.	

📸 **Validating Successful Application**

![USB Restriction Policy Successfully Implemented](https://github.com/user-attachments/assets/d2b6e6fe-30a8-45a5-8b93-998aef634777)

---

## 👤🚫 4. Logon Denied for Domain Users

The problematic GPO setting with "Domain Users" in the "Deny log on locally" policy.	

📸 **Checking Deny Log on Locally Settings**

![GPO Showing Deny Log On Locally Setting](https://github.com/user-attachments/assets/f23b3f25-875a-4fbe-8f56-4626fb43e0f5)

RSoP output showing the unresolved permissions and the source of the "Deny" policy.	

📸 **Checking Unresolved Permissions**

![Resultant Set of Policy (RSoP) Output Showing Unresolved Permissions](https://github.com/user-attachments/assets/2a720ab1-39da-446d-a1a3-c261d7c1c5d3)

The "Sign-in is disabled" error message a user would see on the logon screen.	

📸 **Logon Access Denied**

![Logon Access Denied Because Deny Logon Setting](https://github.com/user-attachments/assets/ecfc4808-66a9-4190-ba6f-eda972444c5b)

RSoP output after the fix, showing the "Deny log on locally" policy is now empty and not applied.	

📸 **Successful Resolved Permissions**

<img width="1920" height="909" alt="Resultant Set of Policy (RSoP) Output Showing Resolved Permissions" src="https://github.com/user-attachments/assets/31ebccb6-3586-42b2-af6c-297a2d1ebd51" /><br />

<img width="1920" height="909" alt="Resultant Set of Policy (RSoP) Output Showing Resolved Permissions 1" src="https://github.com/user-attachments/assets/2fb864d8-9883-46a7-b8c2-3c18aa9db636" />

---
Each image corresponds to a step described in: <br />
📂 [`05-Troubleshooting/Common-Issues`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/05-Troubleshooting/Common-Issues.md)
