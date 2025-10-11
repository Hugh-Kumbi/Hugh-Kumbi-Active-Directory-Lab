# ⚙️ Group Policy Deployment

Having completed the deployment, I can confirm that the Group Policies have been consistently applied across our Active Directory environment. By strategically linking GPOs to specific Organizational Units and employing security filtering, we have ensured that all targeted client systems now operate with the intended security, software, and configuration settings.

---

# 1. 🛠️ Deploying Group Policy to Organizational Units (OUs)

Having completed the deployment, I linked the specific GPOs to their corresponding OUs. For instance, the "Security Scripts Policy" GPO was linked to the "Employees" OU, while the "BitLocker Encryption Policy" GPO was linked to the "MeiVaultComputers" OU. This successfully targeted the policies to the correct user and computer accounts based on their AD structure.

📸 **Deploying Group Policy to Organizational Units (OUs)**

<img width="1920" height="909" alt="Deploying Group Policy to Organizational Units (OUs)" src="https://github.com/user-attachments/assets/d8d5f27a-05b9-4359-b132-0abc0bce2a4c" /><br />

<img width="1920" height="909" alt="Deploying Group Policy to Organizational Units (OUs) 1" src="https://github.com/user-attachments/assets/2e711865-292b-4a27-8042-dc933b538b4e" /><br />

<img width="1920" height="909" alt="Deploying Group Policy to Organizational Units (OUs) 2" src="https://github.com/user-attachments/assets/8c6b2da7-f52c-4538-bf9b-9d904dd3d3f6" /><br />

<img width="1920" height="909" alt="Deploying Group Policy to Organizational Units (OUs) 3" src="https://github.com/user-attachments/assets/61fffc21-502d-464a-b895-ec2a0bc5a2fe" />

---

## 2. 📜 GPO Inheritance and Filtering

During the deployment, I leveraged inheritance to apply a baseline security GPO at the domain level. I applied **Security Filtering** to a specific software deployment GPO to ensure it only applied to the "Engineering" security group, even within a larger OU.

📸 **GPO Inheritance and Filtering**

<img width="1920" height="909" alt="GPO Inheritance and Filtering" src="https://github.com/user-attachments/assets/0e0fa2f8-e2b6-4c5c-97f8-2fc39d68cc88" />

---

## 3. 🛡️ Applying GPOs to Specific Security Groups

Having configured the GPOs, I used Security Filtering to apply them with precision. For example, I removed "Authenticated Users" and granted "Apply Group Policy" permissions only to the "ITSecurity" security group. This ensured the policy only affected the intended IT Security users, even within a larger, shared OU.

📸 **Applying GPOs to Specific Security Groups**

<img width="1920" height="909" alt="Applying GPOs to Specific Security Groups" src="https://github.com/user-attachments/assets/6f39e414-a784-4c4b-ad17-e02cc12f00dd" /><br />

<img width="1920" height="909" alt="Applying GPOs to Specific Security Groups 1" src="https://github.com/user-attachments/assets/a3e41dc8-df5b-4f14-b442-8d4fb0f3a711" /><br />

<img width="1920" height="909" alt="Applying GPOs to Specific Security Groups 2" src="https://github.com/user-attachments/assets/9c657e36-9c4c-44ef-a105-cd731797ea9f" />

---

## 4. 🔧 Testing Group Policy Deployment

Before full deployment, I applied the GPO on a small set of users and a single client machine to ensure that the policies are being enforced correctly. In addition to that I also used the `gpresult` command to verify GPO application.

---

## 5. 🔄 Force Group Policy Update

Use the gpupdate command to immediately refresh and apply Group Policies on client systems. This is useful to test policies or when making changes that need to be reflected right away.

📸 **Verifying the Script with `gpresult` on `AD-WIN11-01`**

<img width="1920" height="909" alt="Verifying the Script with `gpresult` on `AD-WIN11-01`" src="https://github.com/user-attachments/assets/4dd20e89-a912-4419-a935-f3b44b94e410" /><br />

<img width="1920" height="909" alt="Verifying the Script with `gpresult` on `AD-WIN11-01` 1" src="https://github.com/user-attachments/assets/1856b639-fe0f-427b-a429-84cccee2d4fd" /><br />

<img width="1920" height="909" alt="Verifying the Script with `gpresult` on `AD-WIN11-01` 2" src="https://github.com/user-attachments/assets/4ee3fdab-e8c9-48f3-9959-5a7f2ab01443" /><br />

📸 **Verifying the Script with `gpresult` on `AD-WIN11-02`**

<img width="1920" height="909" alt="Verifying the Script with `gpresult` on `AD-WIN11-01`" src="https://github.com/user-attachments/assets/b75f83a6-ebd1-4203-ae93-27491c7438fe" /><br />

<img width="1920" height="909" alt="Verifying the Script with `gpresult` on `AD-WIN11-01` 1" src="https://github.com/user-attachments/assets/3e463379-96aa-4574-b907-ab53ae61b96f" /><br />

<img width="1920" height="909" alt="Verifying the Script with `gpresult` on `AD-WIN11-01` 2" src="https://github.com/user-attachments/assets/9826da6d-962e-451d-97e4-27f6164b9305" />

---

## 6. 🖥️ Group Policy Result with `gpresult`

The gpresult command shows a detailed report of applied GPOs for a user or computer. This tool helps verify that the correct policies are being applied and troubleshoot any issues.

📸 **Applying Group Policy Updates on `AD-Win11-01`**

<img width="1920" height="909" alt="Applying Group Policy Updates on `AD-Win11-01" src="https://github.com/user-attachments/assets/e8224e14-51fd-4f9b-b231-ff6f3611c9f8" /><br />

📸 **Applying Group Policy Updates on `AD-Win11-02`**

<img width="1920" height="909" alt="Applying Group Policy Updates on `AD-Win11-02" src="https://github.com/user-attachments/assets/82fe6f79-a45c-4d61-bc00-1a860e686d4e" />

---

## 7. 🗂️ Event Viewer Logs for Group Policy Application

Use the Event Viewer to check for logs that confirm Group Policy application. These logs provide detailed information about which policies were successfully applied and any errors that occurred.

📸 **Event Viewer Logs for Group Policy Application**

<img width="1920" height="909" alt="Event Viewer Logs for Group Policy Application" src="https://github.com/user-attachments/assets/7578d356-6b58-4699-9e43-de16529c14e5" />

---

## 📁 8. Screenshot Storage

All screenshots related to this section are stored in:<br />  
📂 [`08-User-Environment-Management/X. Group-Policy-Deployment.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/08-User-Environment-Management/X.%20Group-Policy-Deployment.md)
