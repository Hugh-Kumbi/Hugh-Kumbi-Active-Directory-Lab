# 💾 GPO Backup via Group Policy Management Console (GPMC)

This section outlines the steps I took to manually back up **Group Policy Objects (GPOs)** using the **Group Policy Management Console (GPMC)** on the Domain Controller.

---

## 🗂️ 1. GPO Management Interface

- **Tool Used:** Group Policy Management Console (GPMC)  
- **System:** Windows Server 2025 Domain Controller  
- **Backup Method:** Manual, initiated via GPMC interface

I used the GPMC interface to initiate the backup process, ensuring that all GPOs were properly archived for future recovery or review.

📸 **GPMC Main Console Opened on Domain Controller**

<img width="1920" height="909" alt="GPMC Main Console Opened on Domain Controller" src="https://github.com/user-attachments/assets/6256bc80-32c6-469f-b7d5-6ebec7ee2d92" />

---

## ⚙️ 2. Backup of All GPOs

To create a backup of **all Group Policy Objects** in the domain:

1. I navigated to `Group Policy Objects` under my domain in GPMC.
2. I right-clicked on **Group Policy Objects** and selected **"Back Up All..."** from the context menu.

📸 **Context Menu Showing 'Back Up All' Option**

<img width="1920" height="909" alt="Context Menu Showing 'Back Up All' Option" src="https://github.com/user-attachments/assets/04bfa784-43d4-4383-a72e-7a563973bf7d" /><br />

3. In the backup dialog, I specified the location for the backup files (e.g., `F:\CHEEE\Administrator`) and added a description to help identify the backup.

4. I clicked the **Back Up** button to start the process.

📸 **Backup Dialog Showing Path and Description Entry**

<img width="1920" height="909" alt="Backup Dialog Showing Path and Description Entry" src="https://github.com/user-attachments/assets/9e5ab0bc-b5e5-4611-ad1a-17da617f1137" /><br />

5. A confirmation message appeared, indicating that the backup completed successfully.

📸 **Confirmation of GPO Backup Completion**

<img width="1920" height="909" alt="Confirmation of GPO Backup Completion" src="https://github.com/user-attachments/assets/509e282d-71a5-441b-9007-4af72178b34c" />

---

## 📌 4. Purpose and Justification

### 🔐 Why I Backed Up the GPOs

- To ensure **business continuity** and retain the current domain policy configuration.
- To create a **restoration point** in case of accidental changes or deletions.
- To support **audit and version control** of security and operational policies.

---

## ✅ 5. Verification

After completing the backup, I navigated to the target folder (`C:\Users\Administrator\Documents\GPO Backup`) to confirm the presence of the `.bak` files.

I also tested the restoration of one GPO on a non-production policy to verify that the backup process worked as intended.

📸 **Backup Directory with GPO .bak Files**

<img width="1920" height="909" alt="Backup Directory with GPO  bak Files" src="https://github.com/user-attachments/assets/912f46f3-497c-4489-bf65-0e02b117f978" /><br />

<img width="1920" height="909" alt="Backup Directory with GPO  bak Files 1" src="https://github.com/user-attachments/assets/3533e94b-c7fc-41d6-b4bb-c54ebae695c4" />

---

# 📁 6. Screenshot Storage
All screenshots related to GPOs should be saved in:<br />
📂 [`06-Screenshots/XVIII. GPO-Backup-Export`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/tree/main/06-Screenshots/XVIII.%20GPO-Backup-Export)
