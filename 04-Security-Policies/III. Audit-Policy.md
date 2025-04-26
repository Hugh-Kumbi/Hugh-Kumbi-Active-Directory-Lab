# 🔍 Audit Policy (Domain GPO)

This document outlines the **Audit Policy** applied to the domain via Group Policy. Audit policies help monitor authentication, privilege use, and changes to critical objects in Active Directory, aiding in both proactive security and incident response.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Win11 Security Policy  
- **Linked To:** hughdomain.local

Created using the **Group Policy Management Console (GPMC)**, this GPO was applied at the domain level to ensure consistent audit logging across all domain-joined systems.

📸 **GPMC showing the linked Domain Audit Policy GPO:**

![GPMC showing the linked Domain Audit Policy GPO](https://github.com/user-attachments/assets/31bb11fb-730e-4dc4-ab12-e201766397f2)

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

📸 **Group Policy Editor Window Showing the Audit Policy Configuration Window:**

![Group Policy Editor Window Showing the Audit Policy Configuration Window](https://github.com/user-attachments/assets/1ce841d1-5c09-4be7-9196-b48c0d8c84ae)

📸 **Advanced Audit Policy Configuration Window:**

![Advanced Audit Policy Configuration Window](https://github.com/user-attachments/assets/8e17d6d2-3340-4b6e-985e-61d71588b74b)

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

📸 **Security Event Logs In Event Viewer Showing Sample Audited Events:**

![Security Event Logs In Event Viewer Showing Sample Audited Events](https://github.com/user-attachments/assets/738fb487-504f-4c15-8bf6-f65a3b1cc814)

📸 **Other Policy Change Events:**

![Other Policy Change Events](https://github.com/user-attachments/assets/2ad71fbf-4573-4a44-80ac-80e0efa8ce0e)

📸 **Filtering Platform Connection:**

![Filtering Platform Connection](https://github.com/user-attachments/assets/a2afb7b9-5ce3-4e7e-b243-576ad26e3c52)

📸 **Logoff:**

![Logoff](https://github.com/user-attachments/assets/094b2bd8-7893-45ab-8725-23c1d9ac8d5e)

📸 **Logon:**

![Logon](https://github.com/user-attachments/assets/ee69efda-3b3b-4a1f-ab4b-efbc6e7c0c7d)

📸 **Group Membership:**

![Group Membership](https://github.com/user-attachments/assets/a62ca287-2a0e-4a86-8825-8635b18675f4)

📸 **Special Logon:**

![Special Logon](https://github.com/user-attachments/assets/e1eea46d-5a9e-4802-8415-037fceed0530)

---

## 📁 Screenshot Storage

Screenshots for this section should be saved in:  
📂 [`06-Screenshots/Audit-Policy.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/VIII.%20Audit-Policy/Audit-Policy-Settings.md)
