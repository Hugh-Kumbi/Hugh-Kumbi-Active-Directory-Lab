# 🔍 Audit Policy (Domain GPO)

This document outlines the **Audit Policy** applied to the domain via Group Policy. Audit policies help monitor authentication, privilege use, and changes to critical objects in Active Directory, aiding in both proactive security and incident response.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Audit Policy  
- **Linked To:** hughdomain.local

Created using the **Group Policy Management Console (GPMC)**, this GPO was applied at the domain level to ensure consistent audit logging across all domain-joined systems.

📸 **GPMC Showing the Linked Domain Audit Policy GPO**

![GPMC Showing the Linked Domain Audit Policy GPO](https://github.com/user-attachments/assets/359144f9-5834-4f01-ac62-ee0d118d8e2b)

---

## ⚙️ 2. Policy Settings

Path to settings:  
  📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies`

| Category               | Setting                          | Audit Type        |
|------------------------|----------------------------------|-------------------|
| **Account Logon**      | Credential Validation            | Success/Failure   |
| **Account Management** | User Account Management          | Success/Failure   |
| **Detailed Tracking**  | Process Creation                 | Success           |
| **Logon/Logoff**       | Logon Events                     | Success/Failure   |
| **Object Access**      | File System Access               | Success/Failure   |
| **Policy Change**      | Audit Policy Changes             | Success/Failure   |
| **Privilege Use**      | Sensitive Privilege Use          | Success/Failure   |
| **System**             | Security System Extension        | Success/Failure   |

📸 **Group Policy Editor Window Showing the Audit Policy Configuration Window**

![Group Policy Editor Window Showing the Audit Policy Configuration Window](https://github.com/user-attachments/assets/9d82e1ac-04f2-4c97-be37-abdb595dc055)

📸 **Advanced Audit Policy Configuration Window:**

![Advanced Audit Policy Configuration Window](https://github.com/user-attachments/assets/1219e42e-26b1-46a9-bae6-ce7b512d5ff9)

---

## 🛡️ 3. Purpose and Justification

Audit policies provide visibility into actions that may indicate unauthorized behavior. These logs are essential for:

- **Compliance** with standards like ISO 27001, NIST 800-53, and CIS Controls.
- **Forensics** in the event of an incident or breach.
- **Alerting** through SIEM tools or manual log reviews.

By auditing both successful and failed events, I ensured I could track both normal user activity and suspicious behavior.

---

## 🔎 4. Testing and Verification

- Performed logon attempts, privilege use, and file access actions.
- Opened **Event Viewer** on the domain controller:

  📂 `Event Viewer > Windows Logs > Security`
  
- Verified audit entries matched the expected activities.

📸 **Security Event Logs in Event Viewer Showing Sample Audited Events**

![Security Event Logs in Event Viewer Showing Sample Audited Events](https://github.com/user-attachments/assets/b5d91f9f-503a-4e6b-9a02-b0a811733335)

📸 **Other Policy Change Events**

![Other Policy Change Events](https://github.com/user-attachments/assets/2ad71fbf-4573-4a44-80ac-80e0efa8ce0e)

📸 **Filtering Platform Connection**

![Filtering Platform Connection](https://github.com/user-attachments/assets/a2afb7b9-5ce3-4e7e-b243-576ad26e3c52)

📸 **Logoff**

![Logoff](https://github.com/user-attachments/assets/9b0a025c-851d-4b21-80b4-12ed2b057d13)

📸 **Logon**

![Logon](https://github.com/user-attachments/assets/40dd2d42-cac8-48d1-986d-3ea25db67960)

📸 **Group Membership**

![Group Membership](https://github.com/user-attachments/assets/e591efdd-1001-42b7-b1d9-e6d2f47f8fec)

📸 **Special Logon**

![Special Logon](https://github.com/user-attachments/assets/b3524807-3f8e-4ff5-8c1b-2de9212cc225)

---

## 📁 5. Screenshot Storage

Screenshots for this section should be saved in:  
📂 [`06-Screenshots/Audit-Policy.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/IX.%20Audit-Policy/README.md)
