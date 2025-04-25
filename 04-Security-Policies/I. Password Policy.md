# 🔐 Password Policy (Domain GPO)

This document outlines the **Password Policy** implemented through Group Policy to enforce strong password requirements in the domain. Password policies are essential for reducing the risk of unauthorized access through weak credentials.

---

## 📛 1. GPO Name

- **GPO Name:** Win11 Security Policy
- **Linked To:** hughdomain.local (domain root)

This policy was created using the **Group Policy Management Console (GPMC)** and linked at the domain level to ensure that it applies uniformly to all domain user accounts.

📸 **GPMC Showing The Domain Password Policy GPO**

![GPMC Showing The Domain Password Policy GPO](https://github.com/user-attachments/assets/29c96aa3-0f43-4468-8f87-873f40e98004)

---

## ⚙️ 2. Policy Settings

The following settings were configured under:

📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Account Policies > Password Policy`

| Setting                               | Value                |
|---------------------------------------|----------------------|
| Enforce password history              | 24 passwords         |
| Maximum password age                  | 90 days              |
| Minimum password age                  | 1 day                |
| Minimum password length               | 12 characters        |
| Password must meet complexity         | Enabled              |
| Store passwords using reversible encryption | Disabled         |

These settings ensure users cannot reuse old passwords frequently, must use complex and lengthy passwords, and cannot store passwords insecurely.

📸 **Group Policy Editor Window Showing the Password Policy Path:**

![Group Policy Editor Window Showing the Password Policy Path](https://github.com/user-attachments/assets/1ce841d1-5c09-4be7-9196-b48c0d8c84ae)

📸 **Each Setting With Its Configured Value:**

![Each Setting With Its Configured Value](https://github.com/user-attachments/assets/4938bd3a-8efd-421a-9a8c-82eaf0f54a4f)

---

## 📌 3. Purpose and Justification

### 🛡️ Why These Settings?

- **Password history** prevents reuse of recently used passwords.
- **Expiration** ensures users periodically change their passwords.
- **Complexity requirements** force users to use a mix of characters.
- **Minimum length** increases entropy and password strength.
- **Reversible encryption** is disabled to avoid plaintext storage.

These settings align with best practices and compliance requirements such as NIST and CIS Benchmarks.

---

## ✅ 4. Testing and Validation

- Logged into a test account and attempted to change the password using a weak one — blocked by GPO.
- Verified GPO application using:
```powershell
gpresult /r
```
- Checked rsop.msc (Resultant Set of Policy) to confirm applied settings.

📸 **`gpresult` Showing WIN Security Policy Application:**

![`gpresult` Showing WIN Security Policy Application 1](https://github.com/user-attachments/assets/c63c2776-fa06-4c92-bdc7-04b2bb9a799c)

![`gpresult` Showing WIN Security Policy Application 2](https://github.com/user-attachments/assets/9b587325-82d6-496c-b71c-08e89f52737d)

📸 **Resultant Set of Policy:**

![Resultant Set of Policy](https://github.com/user-attachments/assets/2427206f-ffe8-4c92-9ec9-854ad33702a6)

---

## 📁 Screenshot Storage
All screenshots related to this section should be stored in:
📂 [`06-Screenshots/Password-Policy.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/VII.%20Password-Policy/README.md)
