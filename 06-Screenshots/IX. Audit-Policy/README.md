# 🕵️ Audit Policy

This section outlines the configuration and results of the Audit Policy implemented through the Win11 Security Policy GPO, which is designed to enhance visibility into critical security events across the domain.

---

**1. GPMC Showing the Linked Domain Audit Policy GPO**

- Confirms that the audit settings are enforced through the domain-linked Win11 Security Policy.

![GPMC showing the linked Domain Audit Policy GPO](https://github.com/user-attachments/assets/31bb11fb-730e-4dc4-ab12-e201766397f2)

**2. Group Policy Editor Window Showing the Audit Policy Configuration Window**

- Displays traditional audit policy paths under:
`Computer Configuration > Policies > Windows Settings > Security Settings > Local Policies > Audit Policy`.

![Group Policy Editor Window Showing the Audit Policy Configuration Window](https://github.com/user-attachments/assets/1ce841d1-5c09-4be7-9196-b48c0d8c84ae)

**3. Advanced Audit Policy Configuration Window**

- Shows detailed configuration of fine-grained audit categories under:
`Computer Configuration > Policies > Windows Settings > Advanced Audit Policy Configuration`.

![Advanced Audit Policy Configuration Window](https://github.com/user-attachments/assets/8e17d6d2-3340-4b6e-985e-61d71588b74b)

**4. Security Event Logs in Event Viewer Showing Sample Audited Events**

- Demonstrates successful logging of important audit events like logons, group membership changes, and policy changes.

![Security Event Logs In Event Viewer Showing Sample Audited Events](https://github.com/user-attachments/assets/738fb487-504f-4c15-8bf6-f65a3b1cc814)

**5. Other Policy Change Events**

- Captures evidence of GPO or account setting changes with appropriate event IDs.

![Other Policy Change Events](https://github.com/user-attachments/assets/2ad71fbf-4573-4a44-80ac-80e0efa8ce0e)

**6. Filtering Platform Connection**

- Logs related to Windows Filtering Platform (WFP), indicating network-level auditing is active.

![Filtering Platform Connection](https://github.com/user-attachments/assets/a2afb7b9-5ce3-4e7e-b243-576ad26e3c52)

**7. Logoff / Logon / Group Membership / Special Logon**

- Separate event entries showing user authentication actions, group resolution, and elevated or service logon events.

![Logoff](https://github.com/user-attachments/assets/094b2bd8-7893-45ab-8725-23c1d9ac8d5e)

![Logon](https://github.com/user-attachments/assets/ee69efda-3b3b-4a1f-ab4b-efbc6e7c0c7d)

![Group Membership](https://github.com/user-attachments/assets/a62ca287-2a0e-4a86-8825-8635b18675f4)

![Special Logon](https://github.com/user-attachments/assets/e1eea46d-5a9e-4802-8415-037fceed0530)

---

Each image corresponds to a step described in 📂 04-Security-Policies/Audit-Policy.md
