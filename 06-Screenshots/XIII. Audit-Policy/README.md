# 🕵️ Audit Policy

This section outlines the configuration and results of the Audit Policy implementation, which is designed to enhance visibility into critical security events across the domain.

---

**1. GPMC Showing the Linked Domain Audit Policy GPO**

- Confirms that the audit settings are enforced through the domain-linked Audit Policy.

📸 **GPMC Showing the Linked Domain Audit Policy GPO**

<img width="1920" height="909" alt="GPMC Showing the Linked Domain Audit Policy GPO 1" src="https://github.com/user-attachments/assets/b484b68a-1821-48f8-9d8d-46f880dc072e" />

---

**2. Group Policy Editor Window Showing the Audit Policy Configuration Window**

- Displays traditional audit policy paths under:<br />
  📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Local Policies > Audit Policy`

📸 **Group Policy Editor Window**

<img width="1920" height="909" alt="Advanced Audit Policy Configuration Window 1" src="https://github.com/user-attachments/assets/1f476e51-d825-49c9-9288-e2dda482dce3" />

---

**3. Advanced Audit Policy Configuration Window**

- Shows detailed configuration of fine-grained audit categories under:<br />
  📂 `Computer Configuration > Policies > Windows Settings > Advanced Audit Policy Configuration`

📸 **Advanced Audit Policy Configuration**

<img width="1920" height="909" alt="Advanced Audit Policy Configuration Window 2" src="https://github.com/user-attachments/assets/737cb882-038d-457f-858b-5762f0b03dca" />

---

**4. Security Event Logs in Event Viewer Showing Sample Audited Events**

- Demonstrates successful logging of important audit events like logons, group membership changes, and policy changes.

📸 **Event Viewer Showing Sample Audited Events**

![Security Event Logs In Event Viewer Showing Sample Audited Events](https://github.com/user-attachments/assets/738fb487-504f-4c15-8bf6-f65a3b1cc814)

---

**5. Other Policy Change Events**

- Captures evidence of GPO or account setting changes with appropriate event IDs.

📸 **Other Policy Change Events**

<img width="3302" height="2475" alt="Picture1" src="https://github.com/user-attachments/assets/cc72e570-f395-45c5-b9be-a5c2457bb375" /><br />

---

**6. Filtering Platform Connection**

- Logs related to Windows Filtering Platform (WFP), indicating network-level auditing is active.

📸 **Filtering Platform Connection**

<img width="3302" height="2475" alt="Picture2" src="https://github.com/user-attachments/assets/2bc098fc-5638-4fd5-90e9-3b357216a079" /><br />

---

**7. Logoff / Logon / Group Membership / Special Logon**

- Separate event entries showing user authentication actions, group resolution, and elevated or service logon events.

📸 **Logoff**

![Logoff](https://github.com/user-attachments/assets/9b0a025c-851d-4b21-80b4-12ed2b057d13)

📸 **Logon**

![Logon](https://github.com/user-attachments/assets/40dd2d42-cac8-48d1-986d-3ea25db67960)

📸 **Group Membership**

![Group Membership](https://github.com/user-attachments/assets/e591efdd-1001-42b7-b1d9-e6d2f47f8fec)

📸 **Special Logon**

![Special Logon](https://github.com/user-attachments/assets/b3524807-3f8e-4ff5-8c1b-2de9212cc225)

---

Each image corresponds to a step described in:<br />
📂 [`04-Security-Policies/III. Audit-Policy`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/04-Security-Policies/III.%20Audit-Policy.md)
