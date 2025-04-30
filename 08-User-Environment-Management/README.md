# 🧑‍💻 User Environment Management

## 📘 Overview

This section of the Active Directory Lab focuses on configuring and managing user environments using Group Policy Objects (GPOs). It encompasses folder redirection, drive mappings, logon/logoff scripts, desktop wallpaper settings, and restrictions on Control Panel and Settings access. These configurations aim to streamline user experiences, enhance data security, and ensure consistency across the domain environment.

---

## 🧰 1. Folder Redirection

### 📝 Description

Implemented folder redirection to redirect user profile folders **(i.e., Desktop, Documents, Pictures, Favourites, Contacts, Downloads, Links & Searches)** to network locations. This ensures that user data is stored centrally, facilitating easier backups and data management.

### 🛠️ Group Policy Settings Applied

- **Redirected Folders:**

  - **Desktop:** Redirected to \\WIN-D2PQBCI88JQ\RedirectedFolder$\...\Desktop
 
  📸 **Desktop Folder Redirection Configuration**
  
  ![Desktop Folder Redirection Configuration](https://github.com/user-attachments/assets/d9ddcae3-e705-4c23-9694-12110d135ccc)

  - **Documents:** Redirected to \\WIN-D2PQBCI88JQ\RedirectedFolder$\...\Documents
 
  📸 **Documents Folder Redirection Configuration**

  ![Documents Folder Redirection Configuration](https://github.com/user-attachments/assets/3f58f036-f245-4586-9599-fb1bee9ab0f9)

  - **Pictures:** Redirected to \\WIN-D2PQBCI88JQ\RedirectedFolder$\...\Pictures
 
  📸 **Pictures Folder Redirection Configuration**

  ![Pictures Folder Redirection Configuration](https://github.com/user-attachments/assets/0f8b799f-f6df-475b-9af3-ff0208fb1176)

  - **Favourites:** Redirected to \\WIN-D2PQBCI88JQ\RedirectedFolder$\...\Favourites
 
  📸 **Favourites Folder Redirection Configuration**

  ![Favourites Folder Redirection Configuration](https://github.com/user-attachments/assets/1a7b3cd6-8a86-4ce9-a1e2-e11458b6e55a)

  - **Contacts:** Redirected to \\WIN-D2PQBCI88JQ\RedirectedFolder$\...\Contacts
  
  📸 **Contacts Folder Redirection Configuration**

  ![Contacts Folder Redirection Configuration](https://github.com/user-attachments/assets/df8050c1-c67a-43fc-b056-ccab0af020f3)

   - **Downloads:** Redirected to \\WIN-D2PQBCI88JQ\RedirectedFolder$\...\Downloads 
 
  📸 **Downloads Folder Redirection Configuration**

  ![Downloads Folder Redirection Configuration](https://github.com/user-attachments/assets/aa2aa11a-d1b8-4269-8536-be625fcdd8ed)

  - **Links:** Redirected to \\WIN-D2PQBCI88JQ\RedirectedFolder$\...\Links
 
  📸 **Links Folder Redirection Configuration**

  ![Links Folder Redirection Configuration](https://github.com/user-attachments/assets/6ee5b31c-ae90-4822-949f-317fbbb50e62)
 
  - **Searches:** Redirected to \\WIN-D2PQBCI88JQ\RedirectedFolder$\...\Searches
 
  📸 **Searches Folder Redirection Configuration**

  ![Searches Folder Redirection Configuration](https://github.com/user-attachments/assets/dc891298-69e4-4a6d-b0ea-f690b25fb406)

- **Settings:**
  - Enabled offline files for redirected folders to allow access during network outages.
  - Configured redirection to follow the user across different computers within the domain.
These settings are detailed in the `I. Folder-Redirection Settings.md` and `II. Folder-Redirection Properties.md` files.
  
### Paths Redirected

- `\\WIN-D2PQBCI88JQ\RedirectedFolder$`
- `\\WIN-D2PQBCI88JQ\UserData`

📸 **Group Policy Management Console Showing The Folder Redirection Policy Link to Domain**

![Group Policy Management Console Showing The Folder Redirection Policy GPO And Link (2)](https://github.com/user-attachments/assets/ba7969ae-be46-466e-89c1-5d863c0d4e45)

---

## 🗂️ 2. Mapped Network Drives

### 📝 Description

I configured a GPO to automatically map specific network drives based on a user's organizational unit (OU). This ensures that users have access to the correct shared resources without needing to configure anything manually.

### 🛠️ Group Policy Preferences Applied

- **Drives Created**
  - **S:** Home directory mapped to `\\WIN-D2PQBCI88JQ\Shares`
  
  📸 **Mapped Drives Path For Shares**
  
![Drive Mapping Settings Window Showing Path, Label, and Drive Letter](https://github.com/user-attachments/assets/7e475869-fd73-4559-915a-8d8aafb77ee1)

  - **Z:** Shared Department folder `\\WIN-D2PQBCI88JQ\DepartmentShares`
   
  📸 **Mapped Drives Path For DepartmentShares**

  ![Mapped Drives Path For DepartmentShares](https://github.com/user-attachments/assets/c7407994-1dab-4d3a-a376-f478e41b9075)

- **Targeting:**
  - Applied item-level targeting to assign drives based on group membership or OU.
 
 📸 **Item-Level Targeting Condition For Shares**
 
  ![Item-Level Targeting Condition For Shares](https://github.com/user-attachments/assets/242ec8fa-c629-4e63-8d75-a196036e779d)
  
 📸 **Item-Level Targeting Condition For DepartmentShares**
 
  ![Item-Level Targeting Condition For DepartmentShares](https://github.com/user-attachments/assets/e2d2c8e9-0c91-4176-a859-3916a49d4fe7)

Configuration details are provided in the `III. Drive-Mappings-Settings.md` and IV. `Drive-Mappings-Config.md` files.

📸 **Group Policy Management Console Showing Drive Mappings Policy Under Groups OU**

![Map Network Drives Policy Linked to Groups OU](https://github.com/user-attachments/assets/fec1cc06-b99f-443c-bba3-4c3292cb89ee)

📸 **Group Policy Management Console Showing Drive Mappings Policy Under Tech OU**

![Drive Mappings Policy Linked to Tech OU](https://github.com/user-attachments/assets/20bba512-9c75-4c79-b9c2-4e1cc370e316)

---

## 🖥️ 3. Logon/Logoff Scripts

### 📝 Description

Deployed scripts to execute during user logon and logoff events, automating routine tasks and enforcing policies.

### 🛠️ Scripts Implemented

- **Logon Scripts:**

  - Displays a popup notification indicating the logon script is running
  - Records logon events to a centralized log file
  - Maps persistent Z: drive to \\WIN-D2PQBCI88JQ\SharedDocs
  - Includes error handling and logging for drive mapping failures
  - Creates personalized folders
  - Copies user-specific Outlook signatures from a network template location to the local Signatures folder

- **Logoff Scripts:**

  - Displays a popup notification indicating the logoff process has started.
  - Records logoff events
  - Safely disconnects mapped Z: drive
  - Clears temporary files
  - Performs incremental backup of key folders (Desktop, Documents, Pictures) to the user's network folder
  - Attempts to display a completion notification (may not appear if logoff is rapid)

Scripts are configured via GPO and detailed in the `V. Logon-Logoff Scripts-Config.md` and `VI. Logon-Logoff Scripts-Desktop.md` files.

---

## 🖥️ 4. Startup/Shutdown Scripts

### 📝 Description

Implemented scripts that run during system startup and shutdown to perform maintenance tasks and enforce configurations.

### 🛠️ Scripts Implemented

- **Startup Scripts:**
  - Logs boot time and system health info
  - Displays a user-friendly popup notification
  - Updates Windows Defender definitions
  - Check for system updates.
  - Generates a system health report (disk space, memory, uptime)

- **Shutdown Scripts:**
  - Logs shutdown events and system uptime
  - Displays a shutdown popup
  - Captures currently logged-in users
  - Detects pending Windows Updates requiring reboot
  - Begins disk cleanup using built-in VolumeCaches
These scripts are managed through GPO and documented in the VII. Startup-Shutdown Scripts.md file.

---

## 🖼️ 5. Desktop Wallpaper Policy

### 📝 Description

I enforced a corporate desktop background to maintain a consistent visual identity and prevent inappropriate or distracting wallpapers. Standardising the desktop appearance enhances corporate branding and user experience.

### 🛠️ Group Policy Preferences Applied

- Stored the desired wallpaper image on a shared network location accessible by all users.
- **UNC Path to Wallpaper:** `\\WIN-D2PQBCI88JQ\Users\Wallpaper\MEIVAULT SYSTEMS LOGO.png`    
- Created a GPO and navigated to:
  📂 `User Configuration > Policies > Administrative Templates > Desktop > Desktop`
- Enabled the **Desktop Wallpaper Policy** and specified the UNC path to the wallpaper image.

  📸 **Desktop Wallpaper Policy Enabling Prevent changing desktop background**

  ![Desktop Wallpaper Policy Recreation Settings Path](https://github.com/user-attachments/assets/0c8ddc53-c182-4732-a549-7412ce3bff2a)

- Set the wallpaper style to "Fit" to ensure proper scaling across different screen resolutions.
- Enabled the **Prevent changing desktop background** policy to restrict users from altering the wallpaper:
  📂 `User Configuration > Administrative Templates > Control Panel > Personalization`

  📸 **Desktop Wallpaper Policy Enabling Prevent changing desktop background**
  
  ![Desktop Wallpaper Policy Recreation Contol Panel Settings Path](https://github.com/user-attachments/assets/d69d2223-622f-457b-8bbc-ab9a0dd7e4a8)

- Applied the GPO to the appropriate OUs containing user accounts.
- Forced a Group Policy update using `gpupdate /force` and verified the wallpaper application on client machines.

📸 **Desktop Wallpaper Policy Linked to Tech OU**

![Desktop Wallpaper Policy Linked to Tech OU](https://github.com/user-attachments/assets/63096489-2aad-4081-8845-d42a2ac94843)

📸 **Desktop Wallpaper Policy Implemented Successfully**

![Changed Wall Paper](https://github.com/user-attachments/assets/20190256-7d77-4f36-b1fd-a8ca3c32fb07)

---

## 🚫 6. Control Panel & Settings Restrictions

### 📝 Description

To reduce risk and accidental misconfigurations, I restricted access to the Control Panel and selected system settings. This policy enhances security and prevents unauthorized system changes by restricting user access to the Control Panel and Settings app.

### 🛠️ Group Policy Preferences Applied

- Prevent access to Control Panel and PC Settings
- Hide specific Control Panel items (e.g., Network Settings)
- Created a GPO and navigated to:
  📂 `User Configuration > Policies > Administrative Templates > Control Panel`
- Enabled the **Prohibit access to Control Panel and PC settings** policy to block access entirely.

📸 **Prohibit Access to Control Panel and PC settings**

![Prohibit Access to Control Panel and PC settings](https://github.com/user-attachments/assets/b6ebe29c-a88d-40dd-9eac-2f9de66fe1a0)

- Enabled the Show only specified Control Panel items policy.

  📸 **Control Panel Restrictions Showing Only Specified Control Panel Items**
  
  ![Control Panel Restrictions Showing Only Specified Control Panel Items](https://github.com/user-attachments/assets/72b81a45-4fe8-44c9-877a-bbe60c637446)

- Entered the canonical names of items to be shown (e.g., Microsoft.Personalization and Microsoft.Fonts).
- Referenced Microsoft's list of canonical names for accuracy.
- Applied the GPO to Tech OU.
- Verified the restrictions by attempting to access the Control Panel and Settings app on client machines.

📸 **Control Panel Restrictions Policy Linked to Tech OU**

![Control Panel Restrictions Policy Linked to Tech OU](https://github.com/user-attachments/assets/54e6a4b3-db5b-4674-b387-5961684030a6)

📸 **Group Management Editor Configuration**

![Control Panel Restrictions Policy 1](https://github.com/user-attachments/assets/fa9264c7-7440-40eb-b34c-4b037c7acef2)

![Control Panel Restrictions Policy 2](https://github.com/user-attachments/assets/8411723b-8663-492a-a50b-e6c336916b21)

📸 **Control Panel Restrictions Policy Implemented Successfully**

![Control Panel Restrictions Policy 2](https://github.com/user-attachments/assets/18760da3-914e-43cb-8f81-afafe8ffe9db)

---

## ✅ 7. Verification

- Logged into test user accounts and confirmed policies were applied.
- Checked drive mappings, desktop background, Control Panel restrictions, and folder redirection behavior.
- Used `gpresult /H report.html` and Event Viewer for policy status.

---

## 📂 8. Files Included

- `I. Folder-Redirection Settings.md`: Configuration settings for folder redirection.
- `II. Folder-Redirection Properties.md`: Properties and options for redirected folders.
- `III. Drive-Mappings-Settings.md`: Settings for drive mappings.
- `IV. Drive-Mappings-Config.md`: Detailed configurations for mapped drives.
- `V. Logon-Logoff Scripts-Config.md`: Configuration of logon and logoff scripts.
- `VI. Logon-Logoff Scripts-Desktop.md`: Scripts applied to the desktop environment.
- `VII. Startup-Shutdown Scripts.md`: Scripts executed during system startup and shutdown.
- `README.md`: This documentation file summarizing the configurations and their purposes.

## ✅ 9. Outcome

By implementing these configurations:
- **Enhanced User Experience:** Automated access to necessary resources and consistent desktop environments.
- **Improved Data Security:** Centralized storage of user data simplifies backups and reduces data loss risks.
- **Operational Efficiency:** Automated scripts reduce manual administrative tasks and enforce compliance.

## 📚 10. References

[Group Policy Overview](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/group-policy/group-policy-overview)
[Group Policy Management Console](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/group-policy/group-policy-management-console)
[Best Practices for Group Policy in Active Directory](https://learn.microsoft.com/en-us/answers/questions/1377673/best-practices-for-group-policy-in-active-director)
[Set Desktop Wallpaper using GPO - Microsoft Q&A](https://learn.microsoft.com/en-us/answers/questions/1053594/set-desktop-wallpaper-using-gpo)
[Restrict Control Panel Access using Group Policy](https://activedirectorypro.com/restrict-control-panel-access-using-group-policy/)
[Deploy Desktop Background Wallpaper using Group Policy](https://msftwebcast.com/2019/08/deploy-desktop-background-wallpaper-using-group-policy.html)
[Manage the Settings app with Group Policy - Microsoft Learn](https://learn.microsoft.com/en-us/windows/client-management/client-tools/manage-settings-app-with-group-policy)
