# 04-Security-Policies
In this phase, I implemented Group Policy Objects (GPOs) to centrally manage and enforce security settings, user restrictions, and desktop environments for domain-joined computers. These configurations are crucial for maintaining consistency, securing endpoints, and streamlining administrative tasks across the Active Directory domain.

## Organizational Unit (OU) Structure
To apply GPOs effectively, I first organized the directory with logical OUs:

  * `OU=Users` – Contains all domain user accounts

  * `OU=Computers` – Contains all domain-joined Windows 11 clients

  * `OU=Groups` – Holds security and distribution groups

  * `OU=IT` and `OU=Sales` – Departmental OUs for targeted policies

## Key Group Policy Objects Implemented
### 1. Baseline Security Policy
**Linked to:** `HUGHDOMAIN.LOCAL` domain root
**Purpose:** Establish a minimum security standard
**Settings:**

  * Account lockout threshold: 3 failed attempts

  * Lockout duration: 15 minutes

  * Password complexity: Enabled

  * Minimum password length: 12 characters

  * Disable guest account

### 2. Windows Desktop Hardening
**Linked to:** `OU=Computers`
**Purpose:** Restrict unnecessary features and tighten user access
**Settings:**

  * Disable Control Panel and Settings access

  * Remove Run and Command Prompt access

  * Disable Windows Store

  * Turn off USB storage access

  * Automatically lock workstation after 10 minutes of inactivity

### 3. Department-Specific GPOs
**Linked to:** `OU=Sales` and `OU=IT`
**Purpose:** Apply tailored configurations
**Sales GPO Settings:**

  * Map shared network drive (`S:\Sales`)

  * Apply custom desktop wallpaper

**IT GPO Settings:**

  * Enable Remote Desktop access

  * Install PowerShell modules via logon script

### 4. Software Restriction & App Control
**Linked to:** `OU=Computers`
**Purpose:** Prevent users from executing unknown or harmful software
**Settings:**

  * Block `.exe` files in %APPDATA%

  * Use Path Rules to whitelist approved software only

  * Enable SmartScreen filter in Microsoft Edge

### GPO Testing & Verification
  * Used `gpupdate /force` to enforce policy updates

  * Ran `gpresult /r` and `rsop.msc` to verify applied policies

  * Logged in with test accounts in both OUs to confirm correct enforcement

  * Validated that restricted actions (e.g., USB access, Control Panel) were blocked

## Outcome
These policies **established a secure and manageable environment** within the AD domain. The GPO framework ensures:

Consistent user experience across departments

Hardened system configurations for all endpoints

Reduced risk of unauthorized access or malware execution

