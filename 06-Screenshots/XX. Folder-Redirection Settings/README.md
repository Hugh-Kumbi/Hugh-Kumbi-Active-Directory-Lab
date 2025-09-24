# 🔧 Folder Redirection Settings

This section explains the configuration of `Folder Redirection` within the Group Policy to redirect user folders, such as Documents, Desktop, and AppData, to a network location for central management and backup.

This section details the properties and configuration settings available within `Folder Redirection` policies in Group Policy, including redirection types and user settings.

---

## 1. 📑 Folder Redirection Properties Overview

The Folder Redirection Properties window allows configuration of different redirection types for user folders, including Basic, Advanced, and Forcing Folder Redirection.

📸 **Folder Redirection Properties Overview**

<img width="1920" height="909" alt="Group Policy Management Console Showing the Folder Redirection Policy GPO and Link to the ITSecurity OU" src="https://github.com/user-attachments/assets/c086dc0a-f8de-4455-b964-0125932a45ce" /><br />

📸 **User Folder Redirection Properties Overview**

<img width="1920" height="909" alt="Group Policy Management Console Showing the Folder Redirection Policy GPO and Link to the Employees OU" src="https://github.com/user-attachments/assets/f8ad48a3-c9dd-4c3d-b7f3-cb3a9c537e5f" />

---

## 2. 🖥️ Accessing Folder Redirection Settings in GPMC

Open the Group Policy Management Console (GPMC) and navigate to the folder redirection settings under:<br /> 
  📁 `User Configuration > Policies > Windows Settings > Folder Redirection`

📸 **Accessing Folder Redirection Settings in GPMC**

<img width="1920" height="909" alt="Folder Redirection Properties Window with Configuration" src="https://github.com/user-attachments/assets/a01fcb43-9e83-4956-9c84-edd6acae7e08" /><br />

📸 **Accessing User Folder Redirection Settings in GPMC**

<img width="1920" height="909" alt="User Folder Redirection Configuration Window" src="https://github.com/user-attachments/assets/36000ce3-cc3b-4e0a-8eaf-8b978530f9cd" />

---

## 3. Setting Redirection Type to Basic

The Basic option redirects user folders to a specified network share. This setting is simple and can be configured without advanced conditions.

📸 **Setting Folder Redirection Type to Basic**

📸 **Setting User Folder Redirection Type to Basic**


---

## 4. 🔄 Configuring Advanced Redirection Settings

The Advanced option provides more control over folder redirection, allowing different redirection settings for different user groups or environments, such as setting up multiple paths.

📸 **Configuring Advanced Folder Redirection Settings**

📸 **Configuring Advanced User Folder Redirection Settings**


---

## 5. Forcing Folder Redirection

By enabling Force Folder Redirection, users will be forced to use the redirection settings, even if they have local folders configured. This ensures consistency across all machines.

📸 **Forcing Folder Redirection**

📸 **Forcing User Folder Redirection**


---

## 6. ➡️ Configuring Folder Redirection Target for Users

This step allows setting the Target for the folder redirection, specifying the network path or share location where user folders will be redirected.

📸 **Configuring Folder Redirection Target for Users**

📸 **Configuring User Folder Redirection Target for Users**


---

## 7. 📁 Configuring Folder Redirection for Documents

Redirecting the Documents folder to a shared network location allows for centralized access and backup. 

This setting is applied through GPO under:  <br />
  📁 `Folder Redirection > Documents`

📸 **Configuring Folder Redirection for Documents**

📸 **Configuring User Folder Redirection for Documents**


---

## 8. 🛠️ Configuring Folder Redirection for Desktop

Redirection of the Desktop folder ensures that users' desktop environments are consistent across machines and stored in a central network location.

📸 **Configuring Folder Redirection for Desktop**

📸 **Configuring USer Folder Redirection for Desktop**


---

## 9. ➡️ Configuring Folder Redirection for AppData

Redirect the AppData folder to a network share to ensure that user-specific application data is stored centrally, improving user mobility and ensuring backup.

📸 **Configuring Folder Redirection for AppData**

📸 **Configuring User Folder Redirection for AppData**


---

## 10. 🗂️ Folder Redirection Properties for Specific Folders

Redirection properties can be set individually for Documents, Desktop, and AppData. Each folder's settings allow control over synchronization and redirection paths.

📸 **Folder Redirection Properties for Specific Folders**

📸 **User Folder Redirection Properties for Specific Folders**


---

## 11. 🔍 Verifying Folder Redirection Application

Confirm that folder redirection has been successfully applied by checking the Event Viewer logs.

📸 **Verifying Folder Redirection Application**

📸 **User Verifying Folder Redirection Application**


---

## 12. 📊 Command Line Results from gpupdate

Run the gpupdate command on the client machine to force the latest Group Policy settings, including folder redirection, to apply.

📸 **Command Line Results from `gpupdate` on `AD-WIN11-01`**

<img width="1920" height="909" alt="Output From `gpupdate` Command for `AD-WIN11-01`" src="https://github.com/user-attachments/assets/458a2e17-a7ea-457c-8424-463bc842471e" /><br />

📸 **Command Line Results from `gpupdate` on `AD-WIN11-02`**

<img width="1920" height="909" alt="Output From `gpupdate` Command for `AD-WIN11-02`" src="https://github.com/user-attachments/assets/c3cf5676-56d5-4239-8bc3-9d595e51cc73" /><br />

---

## 13. 📈 Command Line Results from `gpresult`

The gpresult command is used to verify which policies, including folder redirection, have been applied to a specific machine or user.

📸 **Command Line Results from `gpresult` on `AD-WIN11-01`**

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-01" src="https://github.com/user-attachments/assets/ab69630e-0c46-4380-b361-2d4ad3983679" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-01 1" src="https://github.com/user-attachments/assets/6daa29d8-d3de-46a4-9a88-bac844706288" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-01 2" src="https://github.com/user-attachments/assets/d71ef1d5-aaeb-4d44-b1b6-4ac28297eb8e" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-01 3" src="https://github.com/user-attachments/assets/d9598531-2248-4898-b65f-308e2ce9b805" /><br />

📸 **Command Line Results from `gpresult` on `AD-WIN11-02`**

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-02" src="https://github.com/user-attachments/assets/96de8ccc-f9f6-4273-a12c-c7e826285751" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-02 1" src="https://github.com/user-attachments/assets/eb593e98-d0be-400d-864f-3b1ac370ef29" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-02 2" src="https://github.com/user-attachments/assets/4a5530d5-77e2-4f09-ac6b-9cc9e82548d2" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-02 3" src="https://github.com/user-attachments/assets/e642adc0-e5e0-41b1-9c26-3161b19cca9a" />

---

## 🗂️ 14. Screenshot Storage

Store all screenshots in:
📂 [`08-User-Environment-Management/I. User Folder-Redirection Settings.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/08-User-Environment-Management/I.%20User%20Folder-Redirection%20Settings.md)<br />

📂 [`08-User-Environment-Management/II. Folder-Redirection Properties.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/08-User-Environment-Management/II.%20Folder-Redirection%20Properties.md)
