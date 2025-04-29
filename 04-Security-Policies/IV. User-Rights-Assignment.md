# 👤 User Rights Assignment (Domain GPO)

This section documents the **User Rights Assignment** configured through Group Policy to define and manage the specific rights assigned to users and groups in the domain.

---

## 📛 1. GPO Name

- **GPO Name:** Win11 Security Policy
- **Linked To:** hughdomain.local (domain root)

This policy is configured using the **Group Policy Management Console (GPMC)** and applied at the domain level to ensure that all user rights are properly assigned.

📸 **GPMC Showing User Rights Assignment GPO**

![Win 11 Security Policy Linked to Domain](https://github.com/user-attachments/assets/41d02b02-6eff-41ca-95c6-6cf19b33bb1d)

---

## ⚙️ 2. Policy Settings

The following settings were configured under:

📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Local Policies > User Rights Assignment`

| Setting                                                            | Value                           |
|--------------------------------------------------------------------|---------------------------------|
| **Allow Log on locally**                                           | Administrators, Domain Users    |
| **Allow Log on through Remote Desktop Services**                   | Administrators, Domain Users    |
| **Log on as a service**                                            | Local Service, Network Service  |
| **Log on as a batch job**                                          | Administrators, Backup Admins   |
| **Shut down the system**                                           | Administrators                  |

These rights control the ability of users or groups to log on to the system, run services, and perform administrative tasks like shutting down the computer.

📸 **Group Policy Editor Window Showing User Rights Path**

![Group Policy Editor Window Showing User Rights Path 1](https://github.com/user-attachments/assets/d0495faf-a128-4a38-b694-375bf8577ed3)

![Group Policy Editor Window Showing User Rights Path 2](https://github.com/user-attachments/assets/0fcd640d-aafb-4c24-b619-e13e5be83ade)

---

## 📌 3. Purpose and Justification

### 🛡️ Why These Settings?

- **Log on locally** allows users to log into the local machine.
- **Log on as a service** grants specific system accounts the ability to run services.
- **Log on as a batch job** allows the user to execute batch scripts.
- **Shut down the system** restricts this action to administrators to avoid unintentional shutdowns by non-privileged users.

---

## ✅ 4. Testing and Validation

- Tested by attempting to log in with different user accounts to validate the policy application.
- Verified user rights using:

```powershell
gpresult /r
```
---

## 📁 5. Screenshot Storage

All screenshots related to this section should be stored in:
📂 [`06-Screenshots/User-Rights-Assignment.png`]()
