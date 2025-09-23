# 👤 User Rights Assignment (Domain GPO)

This section documents the **User Rights Assignment** configured through Group Policy to define and manage the specific rights assigned to users and groups in the domain.

---

## 📛 1. GPO Name

- **GPO Name:** Win11 Security Policy
- **Linked To:** hughdomain.local (domain root)

This policy is configured using the **Group Policy Management Console (GPMC)** and applied at the domain level to ensure that all user rights are properly assigned.

📸 **GPMC Showing User Rights Assignment GPO Under Win11 Security Policy**

<img width="1920" height="909" alt="GPMC Showing User Rights Assignment GPO Under Win11 Security Policy" src="https://github.com/user-attachments/assets/5e95372d-14a8-4851-9b3f-f91ed5d57529" />

---

## ⚙️ 2. Policy Settings

The following settings were configured under:<br />
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

![Group Policy Editor Window Showing User Rights Path](https://github.com/user-attachments/assets/76170d21-d2b2-4a02-aa54-7315606c72cc)

![Group Policy Editor Window Showing User Rights Path 1](https://github.com/user-attachments/assets/685c9085-f8e7-43d2-aeef-d5e14cff2361)

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

📸 **Command Line Results from `gpresult on AD-WIN11-01`**

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-01" src="https://github.com/user-attachments/assets/18ddef13-7d98-464b-a832-1368df0658b5" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-01 1" src="https://github.com/user-attachments/assets/11880d48-7cb0-4022-bc07-5237ce9643d2" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-01 2" src="https://github.com/user-attachments/assets/af2add1e-cbf8-4920-aaaf-fb0b4351af76" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-01 3" src="https://github.com/user-attachments/assets/d2e04722-49aa-4918-b633-ecd2af19358b" /><br />

📸 **Command Line Results from `gpresult on AD-WIN11-02`**

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-02" src="https://github.com/user-attachments/assets/6ec30dd0-7908-475a-a7fc-b8ee47fddd79" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-02 1" src="https://github.com/user-attachments/assets/69a415e4-9a35-463d-a468-fc67b491b886" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-02 2" src="https://github.com/user-attachments/assets/474653f7-5c7b-4302-b729-4c44da093cdb" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-02 3" src="https://github.com/user-attachments/assets/e05a1653-6ae6-4934-8fb1-2b34e7f88149" />

---

## 📁 5. Screenshot Storage

All screenshots related to GPOs should be saved in:<br />
📂 [`06-Screenshots/XIV. User-Rights-Assignment`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/tree/main/06-Screenshots/XIV.%20User-Rights-Assignment)
