# 🧱 Active Directory Setup

This section showcases the complete setup and verification of Active Directory services on Windows Server 2025, including user provisioning, group management, and domain-level login confirmation.

---

**1. Server Manager Summary After Installation**

- Highlights the post-installation status, confirming that AD DS and DNS roles are installed.

📸 **Server Manager Summary**

<img width="1920" height="909" alt="Add Roles and Features Wizard With AD DS Selected 9" src="https://github.com/user-attachments/assets/517e22b5-56a5-467d-9351-9d5ab6f6fcb7" /><br />

---

**2. Domain Promotion Wizard Final Confirmation Screen**

- Shows the summary screen right before completing the promotion of the server to a domain controller.

📸 **Domain Promotion Confirmation Screen**

<img width="1920" height="909" alt="Promoting Server to Domain Controller 6" src="https://github.com/user-attachments/assets/5c75b727-093e-47e0-82a2-ad9e025350dc" /><br />

---

**3. Command Prompt with ipconfig /all Showing Domain Suffix**

- Confirms the presence of a domain suffix (e.g., hughdomain.local), indicating successful domain configuration.

📸 **Command Prompt Showing Domain Suffix**

<img width="1920" height="909" alt="Command Prompt With Ipconfig all Showing Domain Suffix" src="https://github.com/user-attachments/assets/d231ac53-0150-4fab-aa6e-7490dd1e5513" /><br />

---

**4. Active Directory Users and Computers (ADUC) Showing OU Structure**

- Displays the custom OU hierarchy designed for organizing users and devices in the domain.

📸 **ADUC Showing OU Structure**

<img width="1920" height="909" alt="Active Directory Users and Computers (ADUC) Showing OU Structure1" src="https://github.com/user-attachments/assets/d4cb56b5-ec7a-4fe3-a64f-fa5114c575e7" /><br />

---

**5. New User Wizard in ADUC**

- Captures the interface used to manually create new users in the domain.

📸 **New User Creation Wizard in ADUC for Mei Guzha**

<img width="1920" height="909" alt="New User Creation Wizard in ADUC for Mei Guzha" src="https://github.com/user-attachments/assets/04ed5880-e80f-4cda-a246-905a037a8c3f" /><br />

📸 **New User Creation Wizard in ADUC for Lana Guzha**

<img width="1920" height="909" alt="New User Creation Wizard in ADUC for Lana Guzha" src="https://github.com/user-attachments/assets/024c37be-aab7-492e-a087-cea4129d493d" /><br />

📸 **New User Creation Wizard in ADUC for Tech User1**

<img width="1920" height="909" alt="New User Creation Wizard in ADUC for Tech User1" src="https://github.com/user-attachments/assets/f2d7065e-18e5-4d01-9188-d13dd9bad56a" /><br />

📸 **New User Creation Wizard in ADUC for Tech User2**

<img width="1920" height="909" alt="New User Creation Wizard in ADUC for Tech User2" src="https://github.com/user-attachments/assets/85384add-a43f-4e69-8e19-35df0ac8f5ad" /><br />

---

**6. 1500 Users Creation Using PowerShell Script**

- Shows the PowerShell window during bulk user creation via a script for efficient user onboarding.

📸 **PowerShell Script for 1500 Users Creation**

<img width="1920" height="909" alt="1500 Users Creation Using PowerShell Script" src="https://github.com/user-attachments/assets/a2f99ba9-b8d4-4630-b390-77ca2718937b" /><br />

<img width="1920" height="909" alt="1500 Users Creation Using PowerShell Script 1" src="https://github.com/user-attachments/assets/f8fbad29-f170-4e28-a08d-321d37ecbed3" /><br />

<img width="1920" height="909" alt="1500 Users Creation Using PowerShell Script 2" src="https://github.com/user-attachments/assets/53c0f030-dd6e-4718-b3c5-a4890e4eb677" /><br />

<img width="1920" height="909" alt="1500 Users Creation Using PowerShell Script 3" src="https://github.com/user-attachments/assets/1671947e-1159-4bed-b40f-6be2b2742dcd" /><br />

<img width="1920" height="909" alt="1500 Users Creation Using PowerShell Script 4" src="https://github.com/user-attachments/assets/57cee162-c983-4bb6-86d9-41df69fc0254" /><br />

---

**7. 1500 Users Creation Confirmation**

- Confirms that the script completed successfully, with users now visible in ADUC.

📸 **1500 Users Creation Confirmation**

<img width="1920" height="909" alt="1500 Users Creation Using PowerShell Script 5" src="https://github.com/user-attachments/assets/39a15319-57fb-462b-9823-36c503d4f8c7" /><br />

---

**8. Properties Window Showing Group Membership**

- Displays a user’s group memberships in ADUC, reflecting role-based access control (RBAC) practices.

📸 **User’s Group Memberships in ADUC**

<img width="1920" height="909" alt="User’s Group Memberships in ADUC" src="https://github.com/user-attachments/assets/0288b1fa-d90a-4ed9-a598-70d248caee3e" /><br />

<img width="1920" height="909" alt="User’s Group Memberships in ADUC 1" src="https://github.com/user-attachments/assets/43e3c7cc-0f69-45dc-ad99-b5a0a76a2cf4" /><br />

<img width="1920" height="909" alt="User’s Group Memberships in ADUC 2" src="https://github.com/user-attachments/assets/ba9bd496-cdf7-4a15-98a3-b252838b6da6" /><br />

<img width="1920" height="909" alt="User’s Group Memberships in ADUC 3" src="https://github.com/user-attachments/assets/a3d9e50e-6eaa-4fe0-b2a4-563e64ae5844" /><br />

<img width="1920" height="909" alt="User’s Group Memberships in ADUC 4" src="https://github.com/user-attachments/assets/0d91b843-08b7-428f-8cbf-b8f4f9c1d0df" /><br />

<img width="1920" height="909" alt="User’s Group Memberships in ADUC 5" src="https://github.com/user-attachments/assets/a4fb5ea9-af84-48e7-8d24-1e498d1ceb33" /><br />

---

**9. Group Membership List**

📸 **Administrators Group Membership**

<img width="1920" height="909" alt="Administrator Groups Membership" src="https://github.com/user-attachments/assets/21761d52-ac3e-4603-a374-98d956a9d09f" /><br />

📸 **Domain Administrators Groups Membership**

<img width="1920" height="909" alt="Domain Administrators Group Membership" src="https://github.com/user-attachments/assets/ef2c00b3-9649-4be7-b461-a6aa4a090fc6" /><br />

📸 **Enterprise Administrators Groups Membership**

<img width="1920" height="909" alt="Enterprise Administrators Group Membership" src="https://github.com/user-attachments/assets/d1062929-f6c2-4403-a5db-1d3a87986588" /><br />

📸 **Accounting Managers Membership**

<img width="1920" height="909" alt="Accounting Managers Membership" src="https://github.com/user-attachments/assets/d025394d-6424-4d76-a8e0-ebea532e36cb" /><br />

📸 **CustomerSupport Managers Membership**

<img width="1920" height="909" alt="CustomerSupport Managers Membership" src="https://github.com/user-attachments/assets/6931f596-b8d3-4596-8d24-df7844b5b5e0" /><br />

📸 **Finance Managers Membership**

<img width="1920" height="909" alt="Finance Managers Membership" src="https://github.com/user-attachments/assets/3c34f08f-672f-4590-9224-9d543c90b080" /><br />

📸 **Human Resources Managers Membership**

<img width="1920" height="909" alt="Human Resources Managers Membership" src="https://github.com/user-attachments/assets/956d9e04-f349-44f4-a2e6-750992814e49" /><br />

📸 **IT Managers Membership**

<img width="1920" height="909" alt="IT Managers Membership" src="https://github.com/user-attachments/assets/26df0a5e-789c-4147-9f79-c49d155705f1" /><br />

📸 **IT Security Membership**

<img width="1920" height="909" alt="IT Security Managers Membership" src="https://github.com/user-attachments/assets/6ded392e-9b9e-4dfc-bd13-5e4547cdc748" /><br />

📸 **IT Support Membership**

<img width="1920" height="909" alt="IT Support Managers Membership" src="https://github.com/user-attachments/assets/cc286ad6-01fd-48b5-9ac7-6a8702c8b530" /><br />

📸 **Legal Managers Membership**

<img width="1920" height="909" alt="Legal Managers Membership" src="https://github.com/user-attachments/assets/4dfa1fa9-3fdf-49b9-88b3-4f68fc4046fb" /><br />

📸 **Marketing Managers Membership**

<img width="1920" height="909" alt="Marketing Managers Membership" src="https://github.com/user-attachments/assets/27e4146b-b3ca-44cf-9abb-c357c7d09a6d" /><br />

📸 **Operations Managers Membership**

<img width="1920" height="909" alt="Operations Managers Membership" src="https://github.com/user-attachments/assets/782c9696-ae09-456c-ac36-eb607df0a2a0" /><br />

📸 **Product Management Managers Membership**

<img width="1920" height="909" alt="Product Managers Membership" src="https://github.com/user-attachments/assets/6533b3d0-4cd0-422e-8c07-ffa8ecb3431b" /><br />

📸 **Research Managers Membership**

<img width="1920" height="909" alt="Research Managers Membership" src="https://github.com/user-attachments/assets/afe52544-e566-4499-b211-5d77734c48f4" /><br />

📸 **Sales Managers Membership**

<img width="1920" height="909" alt="Sales Managers Membership" src="https://github.com/user-attachments/assets/ab8575f6-208c-4cd4-b01b-7a80c77224bf" /><br />

---

**10. Login Screen Showing Domain User**

- Captures a successful login attempt with a domain user account.

📸 **Login Screen Showing Domain User**

<img width="1920" height="909" alt="Login Screen Showing Domain User for AD-WIN11-01" src="https://github.com/user-attachments/assets/480de8f5-d66a-4e4a-b118-7329a20f9515" /><br />

<img width="1920" height="909" alt="Login Screen Showing Domain User for AD-WIN11-02" src="https://github.com/user-attachments/assets/a133d6cc-5831-4a2a-a0eb-88c72031c8e7" /><br />

---

**11. Output from `whoami` Command**

- Verifies domain-level login by showing the domain and username in the CLI.

📸 **`whoami` Output Command**

<img width="1920" height="909" alt="Output From whoami Command for `AD-WIN11-01" src="https://github.com/user-attachments/assets/7004e25a-6338-4c26-bc54-69ab3a3c9db3" /><br />

<img width="1920" height="909" alt="Output From whoami Command for `AD-WIN11-02" src="https://github.com/user-attachments/assets/f6beeb2b-985c-4811-a1cc-71d720df8e9d" /><br />

---

**12. Output from `gpresult` Command**

- Displays applied Group Policies for the logged-in user, confirming policy enforcement.

📸 **Command Line Showing `gpresult` Output for `AD-WIN11-01`**

<img width="1920" height="909" alt="Command Line Showing `gpresult` Output for `AD-WIN11-01`" src="https://github.com/user-attachments/assets/7b5d2a62-56e1-4b91-8ef6-ac7e50cc0142" /><br />

<img width="1920" height="909" alt="Command Line Showing `gpresult` Output for `AD-WIN11-01` 1" src="https://github.com/user-attachments/assets/75280b85-db0b-46e7-93de-e1600c463e55" /><br />

📸 **Command Line Showing `gpresult` Output for `AD-WIN11-02`**

<img width="1920" height="909" alt="Command Line Showing `gpresult` Output for `AD-WIN11-02`" src="https://github.com/user-attachments/assets/a25b34d8-4c35-4835-8ded-b24f1796092c" /><br />

<img width="1920" height="909" alt="Command Line Showing `gpresult` Output for `AD-WIN11-02` 1" src="https://github.com/user-attachments/assets/aed84579-d253-4219-9be6-1494fe3f01e2" />

---

Each image corresponds to a step described in: <br />
📂 [`03-Configuration/Active-Directory-Setup.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/03-Configuration/I.%20Active-Directory-Setup.md)
