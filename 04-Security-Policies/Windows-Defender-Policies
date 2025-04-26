# 🛡️ Windows Defender Policies (Domain GPO)

This section describes the **Windows Defender Policies** implemented via Group Policy to secure client machines and enforce antivirus protections.

---

## 📛 1. GPO Name

- **GPO Name:** Win11 Security Policy
- **Linked To:** hughdomain.local (domain root)

This policy is configured using the **Group Policy Management Console (GPMC)** and applied at the domain level for all domain-joined computers.

📸 **GPMC Showing Windows Defender GPO**

![GPMC Showing Windows Defender GPO](https://github.com/user-attachments/assets/xxxxx-xxxxxx-xxxxxx)

---

## ⚙️ 2. Policy Settings

Configured under:

📂 `Computer Configuration > Policies > Administrative Templates > Windows Components > Windows Defender Antivirus`

| Setting                               | Value                |
|---------------------------------------|----------------------|
| Turn on Windows Defender Antivirus    | Enabled              |
| Real-time protection                  | Enabled              |
| Cloud-delivered protection           | Enabled              |
| Submit samples automatically          | Enabled              |

These settings ensure that Windows Defender is active, real-time protection is enabled, and cloud-based protections are being used.

📸 **Group Policy Editor Window Showing Windows Defender Path:**

![Group Policy Editor Window Showing Windows Defender Path](https://github.com/user-attachments/assets/xxxxx-xxxxxx-xxxxxx)

---

## 📌 3. Purpose and Justification

### 🛡️ Why These Settings?

- **Turn on Windows Defender** ensures the system is protected against malware and other threats.
- **Real-time protection** provides immediate scanning of files and processes.
- **Cloud-delivered protection** enhances threat detection with Microsoft's cloud-based security.
- **Automatic sample submission** allows Windows Defender to send suspicious files to Microsoft for analysis.

---

## ✅ 4. Testing and Validation

- Verified Windows Defender status on client machines.
- Ran sample malware tests to ensure real-time protection is active.
- Checked logs for submitted sample files.

📸 **Event Viewer Showing Windows Defender Logs:**

![Event Viewer Showing Windows Defender Logs](https://github.com/user-attachments/assets/xxxxx-xxxxxx-xxxxxx)

---

## 📁 Screenshot Storage
All screenshots related to this section should be stored in:
📂 [`06-Screenshots/Windows-Defender-Policies.png`]()
