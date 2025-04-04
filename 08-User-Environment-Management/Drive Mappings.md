# 08 - User Environment Management
This section focuses on configuring user-specific settings through **Group Policy Preferences (GPP)** and scripts to create a consistent, secure, and centralized experience for all domain users. These configurations simulate how enterprises streamline user environments for efficiency and compliance.

## 8.1. Folder Redirection
**GPO Name:** `Folder Redirection Policy`

I configured folder redirection to store user documents on a network location rather than the local machine. This centralizes user data, simplifies backups, and supports roaming profiles.

  * **Folders Redirected:** `Documents`

  * **Target Path:** `\\Server\UserDocs\%USERNAME%`

  * **Settings Applied:**

    * Grant user exclusive rights to the redirected folder.

    * Move the contents of Documents to the new location.

    * Redirect everyone’s folder to the same location, but create separate folders for each user.

  * **Testing:** Verified access and automatic redirection after user logon.

## 8.2. Drive Mappings
**GPO Name:** `Drive Mappings Policy`

I used **Group Policy Preferences** to automatically map network drives for domain users based on department.

  * **Drive Letter:** `S:`

  * **Path:** `\\Server\Share`

  * **Options Enabled:**

    * Reconnect at logon.

    * Use **Item-level targeting** to assign drives based on group membership.

  * **Testing:** Verified mapped drives appear correctly upon logon and maintain access permissions.

## 8.3. Logon/Logoff Scripts
**GPO Name:** `Logon Scripts Policy`

To automate routine tasks and simulate enterprise-wide scripting, I created PowerShell scripts that run at logon.

  * **Script Type:** PowerShell (.ps1)

  * **Examples of Tasks Automated:**

    * Display a welcome message.

    * Log logon time to a central share.

    * Map additional drives or printers.

  * **Storage Location:** `\\Server\NETLOGON\Scripts\`

  * **GPO Location:** User Configuration → Windows Settings → Scripts (Logon/Logoff)

## Outcome
By implementing these User Environment Management policies, I was able to:

  * Centralize and protect user data.

  * Create a consistent desktop experience across multiple devices.

  * Simulate enterprise-grade IT practices using GPP and automation scripts.

  * Improve security and maintainability by avoiding reliance on local storage.
