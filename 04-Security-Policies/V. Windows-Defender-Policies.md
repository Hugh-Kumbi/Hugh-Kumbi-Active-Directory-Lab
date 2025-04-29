# 🛡️ Windows Defender Policies (Domain GPO)

This section describes the **Windows Defender Policies** implemented via Group Policy to secure client machines and enforce antivirus protections.

---

## 📛 1. GPO Name

- **GPO Name:** Win11 Security Policy
- **Linked To:** hughdomain.local (domain root)

This policy is configured using the **Group Policy Management Console (GPMC)** and applied at the domain level for all domain-joined computers.

📸 **GPMC Showing Windows Defender GPO**

![GPMC Showing Windows Defender GPO](https://github.com/user-attachments/assets/1ff694c6-a51f-4b23-9f7a-c77933b6a512)

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

![Group Policy Editor Window Showing Windows Defender Path](https://github.com/user-attachments/assets/553e98c7-e411-4659-97e4-a95a74238fad)

---

## 📌 3. Purpose and Justification

### 🛡️ Why These Settings?

- **Turn off Microsoft Defender Antivirus** ensures the system is protected against malware and other threats.
- **Turn off real-time protection** provides immediate scanning of files and processes.
- **Join Microsoft MAPS** enhances threat detection with Microsoft's cloud-based security.
- **Send file samples when further analysis is required** allows Windows Defender to send suspicious files to Microsoft for analysis.
- **Scan Removable Drives**  ensures that when USB drives, external hard disks, and other removable storage are connected to the system, they are automatically scanned for malware before users can access their contents. This prevents malicious software from spreading through removable media, which is a common attack vector in environments where users frequently share files via external drives.

📸 **Turn off Microsoft Defender Antivirus**

![Turn off Microsoft Defender Antivirus](https://github.com/user-attachments/assets/e5fafd0b-04ba-4e22-8c15-1aba168fb161)

📸 **Turn Off Peal-time Protection**

![Turn off real-time protection](https://github.com/user-attachments/assets/ee5102da-74f4-4950-98b3-2f92aa10c97f)

📸 **Join Microsoft MAPS**

![Join Microsoft MAPS](https://github.com/user-attachments/assets/135e8714-b973-4efa-bf7a-9bb16e055c59)

📸 **Send File Samples When Further Analysis is Required:**

![Send File Samples When Further Analysis is Required](https://github.com/user-attachments/assets/e6f0b85b-d1ec-421e-83b6-d9a883b3d596)

📸 **Scan Removable Drives**

![Scan Removable Drives](https://github.com/user-attachments/assets/802704c0-1658-4330-95ec-d93ca50b56fa)

---

## ✅ 4. Testing and Validation

- Verified Windows Defender status on client machines.
- Ran sample malware tests to ensure real-time protection is active.
- Checked logs for submitted sample files.

📸 **Event Viewer Showing Windows Defender Logs:**

![Event Viewer Showing Windows Defender Logs](https://github.com/user-attachments/assets/d8b8d38d-5d94-4c11-a26d-f5083fe43318)

---

## 📁 5. Screenshot Storage

All screenshots related to this section should be stored in:
📂 [`06-Screenshots/Windows-Defender-Policies.png`]()
