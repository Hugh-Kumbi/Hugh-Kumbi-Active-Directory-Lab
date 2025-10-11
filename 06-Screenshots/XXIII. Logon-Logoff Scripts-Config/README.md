# 🔧 Logon/Logoff Scripts Configuration

Having now deployed the Logon and Logoff Scripts via Group Policy, I can confirm they are successfully automating key tasks. The logon script maps network printers and drives for users, while the logoff script cleans up temporary files and logs session data, streamlining our user environment management.

---

## 📜 1. Creating Logon/Logoff Scripts

Having configured these scripts, I can confirm they now run automatically at each user session. The logon script successfully establishes the user's environment by mapping necessary network drives and printers, while the logoff script reliably cleans up temporary files and logs usage data for audit purposes.

📸 **Creating Logon/Logoff Scripts**

<img width="1920" height="909" alt="Group Policy Management Console Showing Logon Scripts Policy Linked to the Employees OU" src="https://github.com/user-attachments/assets/198af621-f61b-4782-9519-47e3337c1447" />

---

## 👨‍💻 2. Configuring the Logon/Logoff Script in Group Policy

Having created the necessary scripts, I assigned them by configuring the "Logon" and "Logoff" sections within the User Configuration of the Logon-Logoff Scripts Policy. By linking this GPO to the "Employees" OU, I ensured the scripts are deployed to the entire targeted user base.

📸 **Configuring the Logon Script in Group Policy**

<img width="1920" height="909" alt="Logon Script Configuration Dialog Box With Script Path" src="https://github.com/user-attachments/assets/3a36c199-28b1-4226-ba93-522161375ce1" />

<img width="1920" height="909" alt="Logon Script Configuration Dialog Box With Script Path 1" src="https://github.com/user-attachments/assets/b3aa944a-0354-4c2c-8e30-7cb67a2e23cb" />

📸 **Configuring the Logoff Script in Group Policy**

<img width="1920" height="909" alt="Logoff Script Configuration Dialog Box With Script Path" src="https://github.com/user-attachments/assets/c9845852-dd3e-44ff-a7a0-056e113e3c0f" />

<img width="1920" height="909" alt="Logoff Script Configuration Dialog Box With Script Path 1" src="https://github.com/user-attachments/assets/d650fb35-16fe-48a5-8234-9a44f11beba2" />

---

## 🖥️ 3. Testing Logon/Logoff Script Execution

Before rolling out the scripts, I thoroughly tested them on a pilot group. I used `gpresult` to confirm the policy was applying and then checked the `Applications and Services Logs > Microsoft > Windows > PowerShell > Operational log` in Event Viewer to verify the scripts executed without errors and performed their intended actions.

📸 **Testing Logon/Logoff Script Execution**

<img width="1920" height="909" alt="Logon Script Contents in PowerShell ISE" src="https://github.com/user-attachments/assets/50655371-2729-4520-bb03-5954a742ddbf" /><br />

<img width="1920" height="909" alt="Logon Script Contents in PowerShell ISE 1" src="https://github.com/user-attachments/assets/4cb20f61-d727-4767-8460-9814b27db6cc" /><br />

<img width="1920" height="909" alt="Logon Script Contents in PowerShell ISE 2" src="https://github.com/user-attachments/assets/c56f0b71-a77c-47a6-8649-93c8d61aa35a" /><br />

<img width="1920" height="909" alt="Logoff Script Contents in PowerShell ISE" src="https://github.com/user-attachments/assets/d171d4a5-c53b-4551-a50c-aa4e45c68558" /><br />

<img width="1920" height="909" alt="Logoff Script Contents in PowerShell ISE 1" src="https://github.com/user-attachments/assets/8cc4a7f3-ffa0-43f2-91f7-315500a645d4" />

---

## ❓ 4. Troubleshooting Logon/Logoff Scripts

When the scripts did not execute as expected, troubleshooting steps included checking script permissions, ensuring proper network connectivity, and reviewing Event Viewer logs for any error messages related to script execution.

📸 **Checking NTFS Permissions for `Logon Script`**

<img width="1920" height="909" alt="Checking NTFS Permissions for Logon Script" src="https://github.com/user-attachments/assets/27418340-ec82-4c37-acab-5ebf9a62e2fd" /><br />

📸 **Checking NTFS Permissions for `Logoff Script`**

<img width="1920" height="909" alt="Checking NTFS Permissions for Logoff Script" src="https://github.com/user-attachments/assets/360d931a-e94f-46ea-b954-c7e3e90e4d84" /><br />

📸 **Checking SYSVOL share permissions for `Logon Script`**

<img width="1920" height="909" alt="Checking Share Permissions for Logon Script" src="https://github.com/user-attachments/assets/0d224056-2b1b-4717-a8f7-feb96e7b8fb6" /><br />

📸 **Checking SYSVOL share permissions for `Logoff Script`**

<img width="1920" height="909" alt="Checking Share Permissions for Logoff Script" src="https://github.com/user-attachments/assets/ab4adb29-b073-427b-b508-daf9a0c15318" /><br />

📸 **Network Connectivity Testsing for `Logon Script`**

<img width="1920" height="909" alt="Network Connectivity Testsing for Logon Script" src="https://github.com/user-attachments/assets/4c72e2e4-eb8f-46c7-8b9c-7a1f8bb1212f" /><br />

<img width="1920" height="909" alt="Network Connectivity Testsing for Logon Script 1" src="https://github.com/user-attachments/assets/9510596c-a1d8-4a66-9296-d06522400787" /><br />

📸 **Network Connectivity Testsing for `Logoff Script`**

<img width="1920" height="909" alt="Network Connectivity Testsing for Logoff Script" src="https://github.com/user-attachments/assets/27d5e21d-d096-4b17-a7a7-ecc9848e37ca" /><br />

<img width="1920" height="909" alt="Network Connectivity Testsing for Logoff Script 1" src="https://github.com/user-attachments/assets/25fbae4a-debb-445e-be2f-8e3ade3894d5" /><br />

📸 **Checking Network Drives and Authentication for `Logon Script`**

<img width="1920" height="909" alt="Network Connectivity Testsing for `Logon Script`" src="https://github.com/user-attachments/assets/92f7b0a1-c3c0-43a2-9d5e-d0f3792c365c" /><br />

📸 **Checking Network Drives and Authentication for `Logoff Script`**

<img width="1920" height="909" alt="Network Connectivity Testsing for `Logoff Script`" src="https://github.com/user-attachments/assets/6478a20f-ec7d-4390-a075-e673932d622a" /><br />

📸 **Checking PowerShell Operational Logs for `Logon Script`**

<img width="1920" height="909" alt="Checking Network Drives and Authentication for `Logon Script`" src="https://github.com/user-attachments/assets/cb30507c-9f23-4ef2-a1c7-6df80348efb7" /><br />

📸 **Checking PowerShell Operational Logs for `Logoff Script`**

<img width="1920" height="909" alt="Checking Network Drives and Authentication for `Logoff Script`" src="https://github.com/user-attachments/assets/d9a59c8e-0ec4-4d87-b348-e14657cc1db9" />

---

## 🔍 5. Verifying the Script with `gpresult`

Following the configuration, I ran `gpresult /h report.html` on a test workstation. The resulting report clearly showed the assigned logon script policy was successfully applied to the test user, confirming the GPO was being processed correctly.

📸 **Verifying the Script with `gpresult` on `AD-WIN11-01`**

<img width="1920" height="909" alt="Verifying the Script with `gpresult` on `AD-WIN11-01`" src="https://github.com/user-attachments/assets/4dd20e89-a912-4419-a935-f3b44b94e410" /><br />

<img width="1920" height="909" alt="Verifying the Script with `gpresult` on `AD-WIN11-01` 1" src="https://github.com/user-attachments/assets/1856b639-fe0f-427b-a429-84cccee2d4fd" /><br />

<img width="1920" height="909" alt="Verifying the Script with `gpresult` on `AD-WIN11-01` 2" src="https://github.com/user-attachments/assets/4ee3fdab-e8c9-48f3-9959-5a7f2ab01443" /><br />

📸 **Verifying the Script with `gpresult` on `AD-WIN11-02`**

<img width="1920" height="909" alt="Verifying the Script with `gpresult` on `AD-WIN11-01`" src="https://github.com/user-attachments/assets/b75f83a6-ebd1-4203-ae93-27491c7438fe" /><br />

<img width="1920" height="909" alt="Verifying the Script with `gpresult` on `AD-WIN11-01` 1" src="https://github.com/user-attachments/assets/3e463379-96aa-4574-b907-ab53ae61b96f" /><br />

<img width="1920" height="909" alt="Verifying the Script with `gpresult` on `AD-WIN11-01` 2" src="https://github.com/user-attachments/assets/9826da6d-962e-451d-97e4-27f6164b9305" />

---

## 🔄 6. Applying Group Policy Updates

After deploying the GPO, I executed `gpupdate /force` on the target systems. This manually triggered a Group Policy refresh, which immediately applied and made the new logon and logoff scripts active for the next user session.

📸 **Applying Group Policy Updates on `AD-Win11-01`**

<img width="1920" height="909" alt="Applying Group Policy Updates on `AD-Win11-01" src="https://github.com/user-attachments/assets/e8224e14-51fd-4f9b-b231-ff6f3611c9f8" /><br />

📸 **Applying Group Policy Updates on `AD-Win11-02`**

<img width="1920" height="909" alt="Applying Group Policy Updates on `AD-Win11-02" src="https://github.com/user-attachments/assets/82fe6f79-a45c-4d61-bc00-1a860e686d4e" />

---

## 📁 7. Screenshot Storage

Each image corresponds to a step described in:<br />  
📂 [`08-User-Environment-Management/V. Logon-Logoff Scripts-Config`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/08-User-Environment-Management/V.%20Logon-Logoff%20Scripts-Config.md)<br />
📂 [`08-User-Environment-Management/VI. Logon-Logoff Scripts-Desktop`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/08-User-Environment-Management/VI.%20Logon-Logoff%20Scripts-Desktop.md)
