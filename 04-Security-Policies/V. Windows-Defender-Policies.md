# 🛡️ Windows Defender Policies (Domain GPO)

This section describes the **Windows Defender Policies** implemented via Group Policy to secure client machines and enforce antivirus protections.

---

## 📛 1. GPO Name

- **GPO Name:** Windows Defender
- **Linked To:** hughdomain.local (domain root)

This policy is configured using the **Group Policy Management Console (GPMC)** and applied at the domain level for all domain-joined computers.

📸 **GPMC Showing Windows Defender GPO**

![GPMC Showing Windows Defender GPO](https://github.com/user-attachments/assets/3d860883-4a42-4231-aec8-392ffd1dbecc)

---

## ⚙️ 2. Policy Settings

Configured under:

📂 `Computer Configuration > Policies > Administrative Templates > Windows Components > Windows Defender Antivirus`

| Setting                                                 | Value                |
|---------------------------------------------------------|----------------------|
| **Turn off Microsoft Defender Antivirus**               | Disabled             |
| **Turn off real-time protection**                       | Disabled             |
| **Join Microsoft MAPS**                                 | Enabled              |
| **Scan Removable Drives**                               | Enabled              |
| **Send file samples when further analysis is required** | Enabled              |

These settings ensure that Windows Defender is active, real-time protection is enabled, and cloud-based protections are being used.

📸 **Group Policy Editor Window Showing Windows Defender Path**

![Group Policy Editor Window Showing Windows Defender Path](https://github.com/user-attachments/assets/b0f07d8e-9b61-41a6-8518-c2854dbe3af1)

---

## 📌 3. Purpose and Justification

### 🛡️ Why These Settings?

- **Turn off Microsoft Defender Antivirus** ensures the system is protected against malware and other threats.
- **Turn off real-time protection** provides immediate scanning of files and processes.
- **Join Microsoft MAPS** enhances threat detection with Microsoft's cloud-based security.
- **Send file samples when further analysis is required** allows Windows Defender to send suspicious files to Microsoft for analysis.
- **Scan Removable Drives**  ensures that when USB drives, external hard disks, and other removable storage are connected to the system, they are automatically scanned for malware before users can access their contents. This prevents malicious software from spreading through removable media, which is a common attack vector in environments where users frequently share files via external drives.

📸 **Turn off Microsoft Defender Antivirus**

![Turn off Microsoft Defender Antivirus](https://github.com/user-attachments/assets/8b63608a-f614-41bd-8b95-9a6c4f8f3909)

📸 **Turn Off Peal-time Protection**

![Turn Off Peal-time Protection](https://github.com/user-attachments/assets/1d32c43c-ab99-4151-80a2-18bd3e836800)

📸 **Join Microsoft MAPS**

![Join Microsoft MAPS](https://github.com/user-attachments/assets/5a5bf971-fd82-41b5-82ae-b3f6843f495d)

📸 **Send File Samples When Further Analysis is Required**

![Send File Samples When Further Analysis is Required](https://github.com/user-attachments/assets/9693b41f-1d80-4026-9c5e-8348080cb561)

📸 **Scan Removable Drives**

![Scan Removable Drives](https://github.com/user-attachments/assets/df7dbffa-8a61-456c-bff2-b1cff536fc81)

---

## ✅ 4. Testing and Validation

- Verified Windows Defender status on client machines.
- Ran sample malware tests to ensure real-time protection is active.
- Checked logs for submitted sample files.

📸 **Event Viewer Showing Windows Defender Logs**

![Event Viewer Showing Windows Defender Logs](https://github.com/user-attachments/assets/2678c61d-e157-4605-80a8-f6a5e3da4ce5)

---

## 📁 5. Screenshot Storage

All screenshots related to this section should be stored in:
📂 [`06-Screenshots/Windows-Defender-Policies.png`]()
