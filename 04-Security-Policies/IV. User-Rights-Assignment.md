# 👤 User Rights Assignment (Domain GPO)

This section documents the **User Rights Assignment** configured through Group Policy to define and manage the specific rights assigned to users and groups in the domain.

---

## 📛 1. GPO Name

- **GPO Name:** Win11 Security Policy
- **Linked To:** hughdomain.local (domain root)

This policy is configured using the **Group Policy Management Console (GPMC)** and applied at the domain level to ensure that all user rights are properly assigned.

📸 **GPMC Showing User Rights Assignment GPO**

![GPMC Showing User Rights Assignment GPO](https://github.com/user-attachments/assets/xxxxx-xxxxxx-xxxxxx)

---

## ⚙️ 2. Policy Settings

The following settings were configured under:

📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Local Policies > User Rights Assignment`

| Setting                               | Value                           |
|---------------------------------------|---------------------------------|
| Log on locally                        | Administrators, Users           |
| Log on as a service                   | Local Service, Network Service  |
| Log on as a batch job                 | Administrators, Backup Operators|
| Shut down the system                  | Administrators                  |

These rights control the ability of users or groups to log on to the system, run services, and perform administrative tasks like shutting down the computer.

📸 **Group Policy Editor Window Showing User Rights Path:**

![Group Policy Editor Window Showing User Rights Path](https://github.com/user-attachments/assets/xxxxx-xxxxxx-xxxxxx)

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
- 
```powershell
gpresult /r

---


## 📁 Screenshot Storage
All screenshots related to this section should be stored in:
📂 [`06-Screenshots/User-Rights-Assignment.png`]()
