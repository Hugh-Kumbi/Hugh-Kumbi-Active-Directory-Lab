# 🧱 Active Directory Setup

This section showcases the complete setup and verification of Active Directory services on Windows Server 2025, including user provisioning, group management, and domain-level login confirmation.

📸 **Screenshot Descriptions:**

**1. Server Manager Summary After Installation**

- Highlights the post-installation status, confirming that AD DS and DNS roles are installed.

**2. Domain Promotion Wizard Final Confirmation Screen**

- Shows the summary screen right before completing the promotion of the server to a domain controller.

**3. Command Prompt With ipconfig /all Showing Domain Suffix**

- Confirms the presence of a domain suffix (e.g., hughdomain.local), indicating successful domain configuration.

**4. Active Directory Users and Computers (ADUC) Showing OU Structure**

- Displays the custom OU hierarchy designed for organizing users and devices in the domain.

**5. New User Wizard in ADUC**

- Captures the interface used to manually create new users in the domain.

**6. 1500 Users Creation Using PowerShell Script**

- Shows the PowerShell window during bulk user creation via a script for efficient user onboarding.

**7. 1500 Users Creation Confirmation**

- Confirms that the script completed successfully, with users now visible in ADUC.

**8. Properties Window Showing Group Membership**
- Displays a user’s group memberships in ADUC, reflecting role-based access control (RBAC) practices.

**9. Group Membership Lists**

- A table of sample groups and their scopes, types, and descriptions:


Group Name	Type	Scope	Description
Accounting-Managers	Security	Global	All IT support technicians
Administrators	User		HR management staff
BackupAdmin	User		Built-in; Admin privileges
BackupAdmin1	User		Granted local admin on Sales PCs
Domain Admins	Security	Global	All IT support technicians
HR-Managers	Security	Global	HR management staff
IT-Managers	Security	Global	Built-in; Admin privileges
IT-Support	Security	Global	Granted local admin on Sales PCs
Marketing-Managers	Security	Global	Built-in; Admin privileges
TechUsers	Security	Global	Granted local admin on Sales PCs
🔁 Group nesting was applied where relevant (e.g., IT-Managers inside TechUsers).

**10. Login Screen Showing Domain User**

- Captures a successful login attempt with a domain user account.

**11. Output From `whoami` Command**

- Verifies domain-level login by showing the domain and username in the CLI.

**12. Output From `gpresult` Command**

- Displays applied Group Policies for the logged-in user, confirming policy enforcement.

Each image corresponds to a step described in 📂 03-Configuration/Active-Directory-Setup.md
