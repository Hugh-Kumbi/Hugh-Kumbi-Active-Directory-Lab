# 👨‍💻 Local Administrator Restrictions (Domain GPO)

This section outlines the **Local Administrator Restrictions** to limit access and control for local administrators across all machines in the domain.

---

## 📛 1. GPO Name

- **GPO Name:** Win11 Security Policy
- **Linked To:** hughdomain.local (domain root)

This policy is configured using the **Group Policy Management Console (GPMC)** and applied at the domain level.

📸 **GPMC Showing Local Administrator Restrictions GPO**

![GPMC Showing Local Administrator Restrictions GPO](https://github.com/user-attachments/assets/1ef8739a-0e6a-4708-8851-14aacd1dd13e)

---

## ⚙️ 2. Policy Settings

Configured under:

📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Restricted Groups`

| Setting                                                   | Value                       |
|-----------------------------------------------------------|-----------------------------|
| Administrators                                            | Domain Admins, Local Admins |
| Deny Local Administrators from Remotely Accessing Systems | Enabled                     |

These settings restrict local administrators from accessing systems remotely and enforce the use of domain-based administrative rights.

📸 **Group Policy Editor Window Showing Local Administrator Restrictions Path:**

![Group Policy Editor Window Showing Local Administrator Restrictions Path](https://github.com/user-attachments/assets/6dcc0043-1f3a-40e2-a156-29e8b427d46a)

---

## 📌 3. Purpose and Justification

### 🛡️ Why These Settings?

- **Restricting local administrator access** reduces the possibility of unauthorized access to sensitive systems.
- **Denying remote access** ensures that administrators cannot connect remotely without proper authorization.

---

## ✅ 4. Testing and Validation

- Tested remote access restrictions by attempting to log in with local administrator credentials.
- Verified that only domain admins had the ability to perform administrative tasks.

📸 **Command Prompt Showing Remote Access Denied:**

![Command Prompt Showing Remote Access Denied](https://github.com/user

---

## 📁 Screenshot Storage
All screenshots related to this section should be stored in:
📂 [`06-Screenshots/Local-Administrator-Restrictions.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/VII.%20Password-Policy/README.md)
