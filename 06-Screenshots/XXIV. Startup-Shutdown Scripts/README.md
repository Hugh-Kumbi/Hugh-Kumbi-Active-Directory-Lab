# 🔧 Startup/Shutdown Scripts Configuration

Having configured the Startup and Shutdown Scripts in Group Policy, I can confirm they are now automating critical system-level tasks. The startup script successfully verifies disk integrity and connects to network resources, while the shutdown script reliably logs system data and gracefully terminates specific services.

---

## 🛠️ 1. Creating Startup/Shutdown Scripts

Having deployed these scripts, I can confirm they are executing as intended. The startup script now automatically maps a necessary administrative network drive and runs a health check, while the shutdown script reliably generates a system report and clears non-essential temporary files from the local cache.

📸 **Creating Startup/Shutdown Scripts**

<img width="1920" height="909" alt="Creating Startup Shutdown Scripts" src="https://github.com/user-attachments/assets/c1528f7c-b81f-44e9-9ee3-8b447850fef7" /><br />

<img width="1920" height="909" alt="Creating Startup Shutdown Scripts 1" src="https://github.com/user-attachments/assets/6e845039-82fa-452d-93f3-96a37f34f57c" />

---

## ⚙️ 2. Configuring the Startup/Shutdown Script in Group Policy

Having authored the necessary scripts, I configured them within the "Startup" and "Shutdown" sections of the Computer Configuration in our central IT GPO. By linking this GPO to the "Employees" OU, I have ensured that these scripts now run automatically on all targeted systems during their boot and shutdown sequences.

📸 **Configuring the Startup/Shutdown Script in Group Policy**

<img width="1920" height="909" alt="Startup Properties Windows With Scripts Added" src="https://github.com/user-attachments/assets/7a407418-e873-47fd-82ea-60b8e287590b" /><br />

<img width="1920" height="909" alt="Startup Properties Windows With Scripts Added 1" src="https://github.com/user-attachments/assets/c1e45e98-ee46-4e8d-94c5-e9eff15fa90b" /><br />

<img width="1920" height="909" alt="Shutdown Properties Windows With Scripts Added" src="https://github.com/user-attachments/assets/de0099d7-40ed-4546-b4a4-b9f1504f23fd" /><br />

<img width="1920" height="909" alt="Shutdown Properties Windows With Scripts Added 1" src="https://github.com/user-attachments/assets/1a5c8962-a260-4629-bdc7-0f13cf7a802c" /><br />

---

## 🚀 3. Testing the Startup/Shutdown Script

To validate the configuration, I performed a restart of a test computer. Upon reboot, I verified in the Event Viewer that the startup script executed successfully, creating its expected log file. I then initiated a shutdown and confirmed that the shutdown script also ran, performing its cleanup tasks as designed.

📸 **Testing the Startup/Shutdown Script**

<img width="1920" height="909" alt="StartupScript Powershell Test" src="https://github.com/user-attachments/assets/f62b9e6f-ebd3-46e4-a2bf-f693769afaa5" /><br /> 

<img width="1920" height="909" alt="StartupScript Powershell Test 1" src="https://github.com/user-attachments/assets/a988a16a-76e6-4989-8462-b311b3d02b9a" /><br /> 

<img width="1920" height="909" alt="StartupScript Powershell Test 2" src="https://github.com/user-attachments/assets/6273a441-016a-4bb0-887b-307482d04a54" /><br /> 

📸 **Testing the Shutdown Script**

<img width="1920" height="909" alt="ShutdownScript Powershell Test" src="https://github.com/user-attachments/assets/ebfefe6a-3342-4115-837e-50301c2b6f35" />

---

## ❓ 4. Troubleshooting Startup/Shutdown Scripts

When the startup script failed on a test machine, I followed a systematic troubleshooting process. First, I checked the **Microsoft-Windows-GroupPolicy/Operational** log in Event Viewer, which revealed a permissions error. I then verified the script's NTFS permissions on the sysvol share and used `gpresult /h` to confirm the correct GPO was being applied, which led me to the root cause.

📸 **Troubleshooting Startup/Shutdown Scripts**

<img width="1920" height="909" alt="Script-Related Entries in Event Viewer" src="https://github.com/user-attachments/assets/5d3944c8-3ac8-4bc2-9601-2a65729d0619" /><br /> 

<img width="1920" height="909" alt="Powershell Script-Related Entries in Event Viewer" src="https://github.com/user-attachments/assets/028375b7-9e12-41c8-827b-782795788ef5" /><br />

<img width="1920" height="909" alt="Powershell Script-Related Entries in Event Viewer 1" src="https://github.com/user-attachments/assets/3a3458c5-437b-4539-a8d4-c5341f1d4176" /><br />

<img width="1920" height="909" alt="Powershell Script-Related Entries in Event Viewer 2" src="https://github.com/user-attachments/assets/2200fe3a-be85-4465-a5d0-5053ef950f39" /><br />

<img width="1920" height="909" alt="Powershell Script-Related Entries in Event Viewer 3" src="https://github.com/user-attachments/assets/0e354604-2034-4e96-90a9-da459f62790b" /><br />

<img width="1920" height="909" alt="Powershell Script-Related Entries in Event Viewer 4" src="https://github.com/user-attachments/assets/4e8dfe3e-b87c-4905-806b-1af6ee7f5774" /><br />

<img width="1920" height="909" alt="Powershell Script-Related Entries in Event Viewer 5" src="https://github.com/user-attachments/assets/cd7bc1a9-c723-4f81-a72d-4aef79584867" />

---

## 🔍 5. Verifying Script Application with `gpresult`

Following the configuration, I used the `gpresult /h report.html` command on the target system. The detailed HTML report confirmed that the correct Group Policy Object containing the startup and shutdown scripts was successfully applied to the computer, verifying the policies were in place.

📸 **Verifying the Script with `gpresult` on `AD-WIN11-01`**

<img width="1920" height="909" alt="Verifying the Script with `gpresult` on `AD-WIN11-01`" src="https://github.com/user-attachments/assets/4dd20e89-a912-4419-a935-f3b44b94e410" /><br />

<img width="1920" height="909" alt="Verifying the Script with `gpresult` on `AD-WIN11-01` 1" src="https://github.com/user-attachments/assets/1856b639-fe0f-427b-a429-84cccee2d4fd" /><br />

<img width="1920" height="909" alt="Verifying the Script with `gpresult` on `AD-WIN11-01` 2" src="https://github.com/user-attachments/assets/4ee3fdab-e8c9-48f3-9959-5a7f2ab01443" /><br />

📸 **Verifying the Script with `gpresult` on `AD-WIN11-02`**

<img width="1920" height="909" alt="Verifying the Script with `gpresult` on `AD-WIN11-01`" src="https://github.com/user-attachments/assets/b75f83a6-ebd1-4203-ae93-27491c7438fe" /><br />

<img width="1920" height="909" alt="Verifying the Script with `gpresult` on `AD-WIN11-01` 1" src="https://github.com/user-attachments/assets/3e463379-96aa-4574-b907-ab53ae61b96f" /><br />

<img width="1920" height="909" alt="Verifying the Script with `gpresult` on `AD-WIN11-01` 2" src="https://github.com/user-attachments/assets/9826da6d-962e-451d-97e4-27f6164b9305" />

---

## 📥 6. Applying Group Policy Updates

After linking the GPO to the correct OU, I ran `gpupdate /force` on the target systems. This forced an immediate Group Policy refresh, pulling down the new startup and shutdown script assignments and ensuring they were queued for execution on the next reboot and shutdown.

📸 **Applying Group Policy Updates on `AD-Win11-01`**

<img width="1920" height="909" alt="Applying Group Policy Updates on `AD-Win11-01" src="https://github.com/user-attachments/assets/e8224e14-51fd-4f9b-b231-ff6f3611c9f8" /><br />

📸 **Applying Group Policy Updates on `AD-Win11-02`**

<img width="1920" height="909" alt="Applying Group Policy Updates on `AD-Win11-02" src="https://github.com/user-attachments/assets/82fe6f79-a45c-4d61-bc00-1a860e686d4e" />

---

## 📁 7. Screenshot Storage

Each image corresponds to a step described in:<br /> 
📂 [`08-User-Environment-Management/VII.  Startup-Shutdown Scripts`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/08-User-Environment-Management/VII.%20%20Startup-Shutdown%20Scripts.md)
