# 🔐 Password Policy (Domain GPO)

This document outlines the **Password Policy** implemented through Group Policy to enforce strong password requirements in the domain. Password policies are essential for reducing the risk of unauthorized access through weak credentials.

---

## 📛 1. GPO Name

- **GPO Name:** Password Policy
- **Linked To:** hughdomain.local (domain root)

This policy was created using the **Group Policy Management Console (GPMC)** and linked at the domain level to ensure that it applies uniformly to all domain user accounts.

📸 **GPMC Showing the Domain Password Policy GPO**

![GPMC Showing the Domain Password Policy GPO](https://github.com/user-attachments/assets/86192e7a-509f-4998-b9bb-d188f02fe743)

---

## ⚙️ 2. Policy Settings

The following settings were configured under:

📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Account Policies > Password Policy`

| Setting                                         | Value                   |
|-------------------------------------------------|-------------------------|
| **Enforce password history**                    | 24 passwords remembered |
| **Maximum password age**                        | 90 days                 |
| **Minimum password age**                        | 1 day                   |
| **Minimum password length**                     | 12 characters           |
| **Password must meet complexity requirements**  | Enabled                 |
| **Store passwords using reversible encryption** | Disabled                |

These settings ensure users cannot reuse old passwords frequently, must use complex and lengthy passwords, and cannot store passwords insecurely.

📸 **Group Policy Editor Window Showing the Password Policy Path**

![GPMC Showing the Domain Password Policy GPO](https://github.com/user-attachments/assets/823e9888-7b67-4ae2-aa30-c658fe1b7c20)

📸 **Policy Showing Each Setting with Its Configured Value**

![Password Policy Showing Each Setting with Its Configured Value](https://github.com/user-attachments/assets/f8b39093-d77c-4b89-8974-048946e32b7d)

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

📸 **`gpresult` Showing Password Policy Application for `AD-WIN11-01`**

![`gpresult` Showing Password Policy Application for `AD-WIN11-01`](https://github.com/user-attachments/assets/b8efa2b6-49ee-4456-9005-432ae51312c1)

![`gpresult` Showing Password Policy Application for `AD-WIN11-01` 1](https://github.com/user-attachments/assets/05f7ce83-918e-4594-b4e0-d9689c050eee)

📸 **`gpresult` Showing Password Policy Application for `AD-WIN11-02`**

![presult` Showing Password Policy Application for `AD-WIN11-02`](https://github.com/user-attachments/assets/86ad4f47-f523-456c-92e5-2a85fd19ec3e)

![presult` Showing Password Policy Application for `AD-WIN11-02` 1](https://github.com/user-attachments/assets/3f5a2733-3c40-4425-9347-40b7e822cba5)

📸 **Resultant Set of Policy for AD-WIN11-01**

![Resultant Set of Policy](https://github.com/user-attachments/assets/da085e01-74f1-422b-a720-92ce52780b8e)

---

## 📁 5. Screenshot Storage

All screenshots related to this section should be stored in:
📂 [`06-Screenshots/Password-Policy.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/VII.%20Password-Policy/README.md)
