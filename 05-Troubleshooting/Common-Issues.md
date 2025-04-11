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
- Rejoined it to the domain using:

  ```bash
  System Properties > Computer Name > Change > Workgroup → Restart → Rejoin Domain
  ```

📸 **Screenshot:**

- Error message showing trust relationship failure

- System Properties screen showing domain rejoining

## 🔐 2. RDP Access Denied for Domain Admins
**Issue:**
Domain Admins could not connect via Remote Desktop to the server.

**Root Cause:**
GPO missing or misconfigured to allow RDP access to Domain Admins group.

**Solution:**

- Edited the RDP policy GPO.

- Added `Domain Admins` to:

```pgsql
Computer Configuration > Policies > Windows Settings > Security Settings > Local Policies > User Rights Assignment > Allow log on through Remote Desktop Services
```
- Ran `gpupdate /force`.

📸 **Screenshot:**
![RDP Access Denied](https://github.com/user-attachments/assets/12745c2e-bf5c-4a8e-a41d-7a767cf172fc)

![GPO setting Showing Domain Admins Added To RDP Permissions](https://github.com/user-attachments/assets/e31a3b6d-a423-403a-8813-782af0d30eea)


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

📸 **Screenshot:**

- gpupdate /force command output

- GPO Result Wizard showing USB restrictions applied

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

**📸 Screenshot:**

- GPO showing "Deny log on locally" setting

- Resultant Set of Policy (RSoP) output showing resolved permissions

🗂️ 5. Screenshot Storage
All related troubleshooting screenshots are saved in:
📂 [`06-Screenshots/Troubleshooting/Trust-Issue.png`]()
