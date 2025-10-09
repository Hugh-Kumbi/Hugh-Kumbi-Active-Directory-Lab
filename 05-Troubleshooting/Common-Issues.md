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

<img width="1920" height="909" alt="Confirmation Screen for Successful Domain Join" src="https://github.com/user-attachments/assets/a9adcb06-3426-479a-b2fa-fefe2ec2581c" />

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

📸 **GPO Setting Showing Domain Admins Added to RDP Permissions**

![GPO setting Showing Domain Admins Added To RDP Permissions](https://github.com/user-attachments/assets/e31a3b6d-a423-403a-8813-782af0d30eea)

📸 **Regaining RDP Access After Adding Domain Admins**

![Regaining RDP access After Adding Domain Admins](https://github.com/user-attachments/assets/d0819674-6fa2-4f42-9274-83b793af8215)

📸 **RDP Access Granted**

![RDP Access Granted](https://github.com/user-attachments/assets/9a1d9aca-b09a-40d5-8618-93f9289db288)

---

## 💾 3. USB Device Policy Not Applying

**Issue:**
Users could still access USB storage despite the GPO.

**Root Cause:**
GPO not applied properly or user logged in before policy propagated.

**Solution:**

Forced GPO update:

```
gpupdate /force
```
- Verified policy scope and checked security filtering.

- Ensured WMI filtering was not used.

📸 **`gpupdate` Command Output for USB Restriction**

![Gpupdate Force Command Output For USB Restriction](https://github.com/user-attachments/assets/048cab8d-18ce-4d7a-a2d8-4e541cdfc323)

**📸 Output from `gpresult`Command**

<img width="1920" height="909" alt="Output from `gpresult`Command" src="https://github.com/user-attachments/assets/d51d5633-5ac7-49bc-9a6d-76d9209a20a3" /><br />

<img width="1920" height="909" alt="Output from `gpresult`Command 1" src="https://github.com/user-attachments/assets/b3287c0d-34a4-4a59-b8e0-abfa10c4d72b" /><br />

<img width="1920" height="909" alt="Output from `gpresult`Command 2" src="https://github.com/user-attachments/assets/fb01d9d8-e0ac-45cb-8f8c-45dba4734e2f" /><br />

**📸 USB Restriction Policy Successfully Implemented**

![USB Restriction Policy Successfully Implemented](https://github.com/user-attachments/assets/d2b6e6fe-30a8-45a5-8b93-998aef634777)

---

## 🔒 4. Logon Denied for Domain Users

**Issue:**
Some domain users were unable to log into their computers.

**Root Cause:**
Users were added to a GPO with the **"Deny log on locally"** setting.

**Solution:**

Removed `Domain Users` group from:

   📂 `Computer Configuration > Windows Settings > Security Settings > Local Policies > User Rights Assignment > Deny log on locally`

- Rebooted affected machines.

**📸 GPO Showing Deny Log on Locally Setting**

<img width="1920" height="909" alt="Checking Deny Log on Locally Settings" src="https://github.com/user-attachments/assets/bc34d5fe-f297-4e4b-b0f1-eef96598767c" /><br />

**📸 Resultant Set of Policy (RSoP) Output Showing Unresolved Permissions**

<img width="1920" height="909" alt="Checking Unresolved Permissions" src="https://github.com/user-attachments/assets/a1899cfe-8559-46a5-b908-2c2d6ba6e7d2" />

**📸 Logon Access Denied Because Deny Logon Setting**

![Logon Access Denied Because Deny Logon Setting](https://github.com/user-attachments/assets/ecfc4808-66a9-4190-ba6f-eda972444c5b)

**📸 Resultant Set of Policy (RSoP) Output Showing Resolved Permissions**

<img width="1920" height="909" alt="Resultant Set of Policy (RSoP) Output Showing Resolved Permissions" src="https://github.com/user-attachments/assets/31ebccb6-3586-42b2-af6c-297a2d1ebd51" /><br />

<img width="1920" height="909" alt="Resultant Set of Policy (RSoP) Output Showing Resolved Permissions 1" src="https://github.com/user-attachments/assets/2fb864d8-9883-46a7-b8c2-3c18aa9db636" />

---

## 🗂️ 5. Screenshot Storage

All screenshots for this section can be found in:<br />
📂 [`06-Screenshots/Troubleshooting`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/tree/main/06-Screenshots/XVII.%20TroubleShooting#readme)
