# 👨‍💻 Local Administrator Restrictions (Domain GPO)

This section outlines the **Local Administrator Restrictions** to limit access and control for local administrators across all machines in the domain.

---

## 📛 1. GPO Name

- **GPO Name:** Win11 Security Policy
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

📸 **Remote Desktop Access with Local Admin Credentials Showing Test Denied**

![Remote Desktop Access With Local Admin Credentials Showing Test Denied](https://github.com/user-attachments/assets/8393a084-ff77-4a2a-9b7f-903c64103cd8)

![Remote Desktop Access With Local Admin Credentials Showing Test Denied 2](https://github.com/user-attachments/assets/af762531-4192-48ed-9cbc-bb12c644a288)

📸 **Remote Desktop Access with Local Admin Credentials Showing Test Denied**

![Remote Desktop Access With Local Admin Credentials Showing Test Denied](https://github.com/user-attachments/assets/8393a084-ff77-4a2a-9b7f-903c64103cd8)

![Remote Desktop Access With Local Admin Credentials Showing Test Denied 2](https://github.com/user-attachments/assets/af762531-4192-48ed-9cbc-bb12c644a288)

---

## 📁 5. Screenshot Storage

All screenshots related to this section should be stored in:
📂 [`06-Screenshots/Local-Administrator-Restrictions.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/VII.%20Password-Policy/README.md)
