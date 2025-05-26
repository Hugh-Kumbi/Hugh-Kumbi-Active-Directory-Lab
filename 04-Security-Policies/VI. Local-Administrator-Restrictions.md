# 👨‍💻 Local Administrator Restrictions (Domain GPO)

This section outlines the **Local Administrator Restrictions** to limit access and control for local administrators across all machines in the domain.

---

## 📛 1. GPO Name

- **GPO Name:** Local Administrator Restrictions Policy
- **Linked To:** hughdomain.local (domain root)

This policy is configured using the **Group Policy Management Console (GPMC)** and applied at the domain level.

📸 **GPMC Showing Local Administrator Restrictions GPO**

![GPMC Showing Local Administrator Restrictions Policy GPO](https://github.com/user-attachments/assets/dc502975-922f-414a-823f-850fe60a8080)

---

## ⚙️ 2. Policy Settings

Configured under:

  📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Restricted Groups`

| Setting                                                       | Value                       |
|---------------------------------------------------------------|-----------------------------|
| **Administrators**                                            | Domain Admins, Local Admins |
| **Deny Local Administrators from Remotely Accessing Systems** | Enabled                     |

These settings restrict local administrators from accessing systems remotely and enforce the use of domain-based administrative rights.

📸 **Group Policy Editor Window Showing Local Administrator Restrictions Path**

![Group Policy Editor Window Showing Local Administrator Restrictions Path](https://github.com/user-attachments/assets/c81bebe3-544b-4f45-b233-d9fcbf9b84bd)

---

## 📌 3. Purpose and Justification

### 🛡️ Why These Settings?

- **Restricting local administrator access** reduces the possibility of unauthorized access to sensitive systems.
- **Denying remote access** ensures that administrators cannot connect remotely without proper authorization.

---

## ✅ 4. Testing and Validation

- Tested remote access restrictions by attempting to log in with local administrator credentials.
- Verified that only domain admins had the ability to perform administrative tasks.

📸 **Remote Desktop RDP Enabled on Server for `WinServer2025`**

![Remote Desktop RDP Enabled on Server](https://github.com/user-attachments/assets/0c074a0b-de79-4fbb-9172-b4c626c8ee2f)

📸 **Command Prompt Showing the IP Configuration Necessary for RDP Connection**

![Command Prompt Showing the IP Configuration Necessary for RDP Connection](https://github.com/user-attachments/assets/675f72ed-7724-48c3-a771-8cedc1fe539c)

📸 **Remote Desktop Access with Domain Admin Credentials Showing Test Success for `AD-WIN11-01`**

![Remote Desktop Access with Domain Admin Credentials Showing Test Success for `AD-WIN11-01`](https://github.com/user-attachments/assets/909d2664-2695-4784-89ec-f271b1175d70)

![Remote Desktop RDP Attempt 2](https://github.com/user-attachments/assets/aea5bf2a-6291-4e5f-8457-f3a80fa0441c)

![Remote Desktop RDP Attempt Successful](https://github.com/user-attachments/assets/214f5e88-1387-4e38-bde2-1b7775da1f67)

📸 **Remote Desktop Access with Domain Admin Credentials Showing Test Denied for `AD-WIN11-01`**

![Local Admin Account Login to Test RDP](https://github.com/user-attachments/assets/c29851d1-e1d2-46fe-941d-c09de3e381a2)

![Remote Desktop RDP Attempt 3](https://github.com/user-attachments/assets/583ecded-f813-4d97-ae4c-9f397e835715)

![Remote Desktop RDP Attempt 4](https://github.com/user-attachments/assets/856f1f1a-0175-46a2-a45e-002cc3afaecb)

![Remote Desktop RDP Attempt failed 1](https://github.com/user-attachments/assets/dbea4eb1-f0b2-47ec-97bc-9ec30cff5bc4)

📸 **Remote Desktop Access with Local Admin Credentials Showing Test Denied for `AD-WIN11-02`**

![Accessing AD-WIN11-02 Using LocalAdmin Credentials](https://github.com/user-attachments/assets/adcb2ce7-0eea-4f6b-9a9b-834ea3caad55)

![Remote Desktop Access With Local Admin Credentials Showing Test Denied](https://github.com/user-attachments/assets/8393a084-ff77-4a2a-9b7f-903c64103cd8)

![Remote Desktop Access With Local Admin Credentials Showing Test Denied 2](https://github.com/user-attachments/assets/af762531-4192-48ed-9cbc-bb12c644a288)

📸 **Remote Desktop Access with Local Admin Credentials Showing Test Denied for `AD-WIN11-02`**

![Accessing AD-WIN11-02 Using LocalAdmin Credentials](https://github.com/user-attachments/assets/597c861b-e0e5-44e2-903b-4d7c5f777bd1)

![Remote Desktop RDP Attempt for AD-Win11-02 5](https://github.com/user-attachments/assets/a93aec6c-0d50-4b5a-ae1b-ffe373ced144)

![Remote Desktop RDP Attempt for AD-Win11-02 4](https://github.com/user-attachments/assets/0c7fe2a9-51d1-41ce-a431-ce66bfef3d90)

![Remote Desktop RDP Attempt for AD-Win11-02 Successful](https://github.com/user-attachments/assets/ea29dc15-c0c8-4a30-a83d-66168de564ee)

---

## 📁 5. Screenshot Storage

All screenshots related to this section should be stored in:
📂 [`06-Screenshots/Local-Administrator-Restrictions.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/VII.%20Password-Policy/README.md)
