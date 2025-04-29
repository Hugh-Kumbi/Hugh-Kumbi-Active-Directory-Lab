# 🔧 Common Issues & Troubleshooting

During the setup and configuration of my Active Directory Lab, I encountered a few challenges. This section documents those issues, how I identified them, and the steps I took to resolve them. Recording these solutions not only helped me deepen my understanding but also serves as a helpful reference for future troubleshooting.

---

## 🧩 1. Domain Trust Issues

**Issue:**  

Windows 11 clients failed to authenticate or access shared resources, displaying trust relationship errors.

**Root Cause:**  

Corrupted trust relationship between the domain controller and the client.

**Solution:**  

- Removed the affected computer from the domain.
- Rebooted the system.
- Rejoined it to the domain by doing the following:

   📂 `System Properties > Computer Name > Change > Workgroup → Restart → Rejoin Domain`

📸 **Error Message Showing Trust Relationship Failure**

![Error Message Showing Trust Relationship Failure](https://github.com/user-attachments/assets/69fba4ca-38d1-424a-999f-7a7d1ba46d31)

📸 **System Properties Screen Showing Domain Rejoining**

![System Properties Screen Showing Domain Rejoining](https://github.com/user-attachments/assets/97892673-b001-4b4a-92b7-d3ad969f4bfd)

---

## 🔐 2. RDP Access Denied for Domain Admins
**Issue:**
Domain Admins could not connect via Remote Desktop to the server.

**Root Cause:**
GPO missing or misconfigured to allow RDP access to Domain Admins group.

**Solution:**

- Edited the RDP policy GPO.

- Added `Domain Admins` to:

   📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Local Policies > User Rights Assignment > Allow log on through Remote Desktop Services`

- Ran `gpupdate /force`.

📸 **RDP Access Denied**

![RDP Access Denied](https://github.com/user-attachments/assets/12745c2e-bf5c-4a8e-a41d-7a767cf172fc)

📸 **GPO setting Showing Domain Admins Added To RDP Permissions**

![GPO setting Showing Domain Admins Added To RDP Permissions](https://github.com/user-attachments/assets/e31a3b6d-a423-403a-8813-782af0d30eea)

---

## 💾 3. USB Device Policy Not Applying

**Issue:**
Users could still access USB storage despite the GPO.

**Root Cause:**
GPO not applied properly or user logged in before policy propagated.

**Solution:**

Forced GPO update:

```bash
gpupdate /force
```
- Verified policy scope and security filtering.

- Ensured WMI filtering (if used) was accurate.

📸 **`gpupdate` Command Output For USB Restriction**

![Gpupdate Force Command Output For USB Restriction](https://github.com/user-attachments/assets/048cab8d-18ce-4d7a-a2d8-4e541cdfc323)

**📸 Output From `gpresult`Command**

![Ran gpresult](https://github.com/user-attachments/assets/d2cd5644-473a-43dd-a886-ce6360f7291d)

---

## 🔒 4. Logon Denied for Domain Users

**Issue:**
Some domain users were unable to log into their computers.

**Root Cause:**
Users were added to a GPO with the **"Deny log on locally"** setting.

**Solution:**

Removed `Domain Users` group from:

```pgsql
Computer Configuration > Windows Settings > Security Settings > Local Policies > User Rights Assignment > Deny log on locally
```
- Rebooted affected machines.

**📸 GPO Showing Deny Log On Locally Setting**

![GPO Showing Deny Log On Locally Setting](https://github.com/user-attachments/assets/f23b3f25-875a-4fbe-8f56-4626fb43e0f5)

**📸 Resultant Set of Policy (RSoP) Output Showing Unresolved Permissions**

![Resultant Set of Policy (RSoP) Output Showing Unresolved Permissions](https://github.com/user-attachments/assets/2a720ab1-39da-446d-a1a3-c261d7c1c5d3)

**📸 Logon Access Denied Because Deny Logon Setting**

![Logon Access Denied Because Deny Logon Setting](https://github.com/user-attachments/assets/ecfc4808-66a9-4190-ba6f-eda972444c5b)

**📸 Resultant Set of Policy (RSoP) Output Showing Resolved Permissions**

![Resultant Set of Policy (RSoP) Output Showing Resolved Permissions](https://github.com/user-attachments/assets/0a9bf0cb-e8b1-4034-910b-b3f2f9feba28)

---

## 🗂️ 5. Screenshot Storage

All related troubleshooting screenshots are saved in:
📂 [`06-Screenshots/Troubleshooting/Trust-Issue.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/X.%20Troubleshooting/Trust-Issues.md)
