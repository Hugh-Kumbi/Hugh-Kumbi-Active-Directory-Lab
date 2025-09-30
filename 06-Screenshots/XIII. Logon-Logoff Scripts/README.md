# 🔁 Logon-Logoff Scripts Policy

This folder contains all screenshots related to the configuration and desktop validation of the **Logon-Logoff Scripts Policy** in the Active Directory homelab.

Both write-ups are covered here:
- **Logon-Logoff Scripts-Config** (policy setup & script linking in GPO)
- **Logon-Logoff Scripts-Desktop** (end-user desktop verification & script execution results)

---

## 🗂️ Folder Structure

``
06-Screenshots/
└── XIII. Logon-Logoff Scripts/
├── Config/
│ └── (Screenshots of GPO configuration, script linking, file locations)
├── Desktop/
│ └── (Screenshots of script execution results on client machines)
└── README.md
``

---

## 🔧 Logon-Logoff Scripts-Config Screenshots

These screenshots document the **Group Policy setup**:

### GPO Linked to Employees OU  

📸 **Group Policy Management Console Showing Logon Scripts Policy Linked to Employees OU**

<img width="1920" height="909" alt="Group Policy Management Console Showing Logon Scripts Policy Linked to the Employees OU" src="https://github.com/user-attachments/assets/198af621-f61b-4782-9519-47e3337c1447" />

---

### Logon Properties – Script Added  

   📸 **Logon Properties Window Showing The Added PowerShell Script**

<img width="1920" height="909" alt="Logon Properties Window Showing The Added PowerShell Script" src="https://github.com/user-attachments/assets/f077a4e5-c10f-4737-b699-8fc6cce0ae1e" />

---

### Logoff Properties – Script Added  

📸 **Logoff Properties window showing the added PowerShell Script**

<img width="1920" height="909" alt="Logoff Properties window showing the added PowerShell Script" src="https://github.com/user-attachments/assets/d30f9717-f741-473d-a2ac-0fbd9af22f6e" />

---

### SysVol Location – Logon Script 

📸 **Logon File Location in the SysVol Share**

<img width="1920" height="909" alt="Logon File Location in the SysVol Share" src="https://github.com/user-attachments/assets/bcd3fd05-9eb1-4e28-800e-b24a816d8ed9" />

---

### SysVol Location – Logoff Script  

📸 **Logoff File Location in the SysVol Share**

<img width="1920" height="909" alt="Logoff File Location in the SysVol Share" src="https://github.com/user-attachments/assets/f62eee51-88f3-438d-985a-11a5bb698051" />

---

## 💻 Logon-Logoff Scripts-Desktop Screenshots

These screenshots demonstrate **script execution and results on the client machine**:

### Logon Script Dialogs  

📸 **Logon Notification Popup**

<img width="1920" height="909" alt="Logon Notification Popup" src="https://github.com/user-attachments/assets/d581ee7b-3b18-43a6-9f8a-c4c14d16c194" /><br />

<img width="1920" height="909" alt="Logon Notification Popup" src="https://github.com/user-attachments/assets/33e53d0d-09e8-40e0-8550-7b21dc111fa2" /><br />

📸 **Logon Script Contents in PowerShell ISE**

<img width="1920" height="909" alt="Logon Script Contents in PowerShell ISE" src="https://github.com/user-attachments/assets/50655371-2729-4520-bb03-5954a742ddbf" /><br />

<img width="1920" height="909" alt="Logon Script Contents in PowerShell ISE 1" src="https://github.com/user-attachments/assets/4cb20f61-d727-4767-8460-9814b27db6cc" /><br />

<img width="1920" height="909" alt="Logon Script Contents in PowerShell ISE 2" src="https://github.com/user-attachments/assets/c56f0b71-a77c-47a6-8649-93c8d61aa35a" />

---

### Logoff Script Dialogs  

📸 **Logoff Script Contents in PowerShell ISE**

<img width="1920" height="909" alt="Logoff Script Contents in PowerShell ISE" src="https://github.com/user-attachments/assets/d171d4a5-c53b-4551-a50c-aa4e45c68558" /><br />

<img width="1920" height="909" alt="Logoff Script Contents in PowerShell ISE 1" src="https://github.com/user-attachments/assets/8cc4a7f3-ffa0-43f2-91f7-315500a645d4" />

---

### Drive Mapping Verification  

📸 **AD-WIN11-01 showing Mapped-Drives for `mguzha`**`  

<img width="1920" height="909" alt="AD-WIN11-01 showing Mapped-Drives for `mguzha`" src="https://github.com/user-attachments/assets/77229f91-1198-4d3d-8968-03b6b198d86f" /><br />

<img width="1920" height="909" alt="AD-WIN11-01 showing Mapped-Drives for `mguzha` 1" src="https://github.com/user-attachments/assets/bcbaba92-e91f-4109-bda5-2496efb1bfb3" /><br />

📸 **AD-WIN11-02 showing Mapped-Drives for `Tech User2`**`  

<img width="1920" height="909" alt="AD-WIN11-02 showing Mapped-Drives for `Tech User2`" src="https://github.com/user-attachments/assets/b645b192-3635-48bb-9aff-b4d350e0347c" />

---

### User Folder Creation  

📸 **User Folders Accessible**

<img width="1920" height="909" alt="AD-WIN11-02 showing Mapped-Drives for `Tech User2` 1" src="https://github.com/user-attachments/assets/fa8f424f-b196-4558-bc26-45e2bcf17dc7" /><br />

<img width="1920" height="909" alt="AD-WIN11-02 showing Mapped-Drives for `Tech User2` 2" src="https://github.com/user-attachments/assets/e747a717-794e-4bd1-b7e8-59bdfba35ee5" /><br />

### Log File Entries  

📸 **Available Log Entries**  

<img width="1920" height="909" alt="Sample Log File Contents Showing Successful Operations" src="https://github.com/user-attachments/assets/a62ffae6-cf78-4d3b-b962-95fee724f449" /><br />

<img width="1920" height="909" alt="File Explorer Showing Mapped S Drive And Network User Folder 1" src="https://github.com/user-attachments/assets/b785995a-d284-4182-b373-a5d945313c7d" /><br />

<img width="1920" height="909" alt="File Explorer Showing Mapped S Drive And Network User Folder 2" src="https://github.com/user-attachments/assets/2a6e271d-8d2c-4ce2-822c-c9232a14bbd7" /><br />

<img width="1920" height="909" alt="File Explorer Showing Mapped S Drive And Network User Folder 3" src="https://github.com/user-attachments/assets/6921f122-be90-4410-b279-618f37d6c432" /><br />

<img width="1920" height="909" alt="File Explorer Showing Mapped S Drive And Network User Folder 4" src="https://github.com/user-attachments/assets/c6d0ca63-a443-4e2a-b6fc-e5672eaa0fe5" /><br />

<img width="1920" height="909" alt="File Explorer Showing Mapped S Drive And Network User Folder 5" src="https://github.com/user-attachments/assets/ce9b2325-c2a4-4d87-82e1-9b5a3ccad77d" /><br />

<img width="1920" height="909" alt="File Explorer Showing Mapped S Drive And Network User Folder 6" src="https://github.com/user-attachments/assets/9b7f8ad6-0569-4a73-a84d-c0db159db7f2" />

---

## ✅ Summary

- **Config** screenshots capture the **GPO setup process**.  
- **Desktop** screenshots capture the **user-facing results and validation**.  
- Placeholders are clearly labeled so screenshots can be saved consistently during lab work.  

---

## 📁 7. Screenshot Storage

All screenshots related to this section are stored in:<br />  
📂 [`08-User-Environment-Management/V. Logon-Logoff Scripts-Config.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/08-User-Environment-Management/V.%20Logon-Logoff%20Scripts-Config.md)<br />
📂 [`08-User-Environment-Management/VI. Logon-Logoff Scripts-Desktop.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/08-User-Environment-Management/VI.%20Logon-Logoff%20Scripts-Desktop.md)
