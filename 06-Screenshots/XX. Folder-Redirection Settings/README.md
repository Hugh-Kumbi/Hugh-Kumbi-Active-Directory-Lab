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

<img width="1920" height="909" alt="Configuring User Folder Redirection for AppData" src="https://github.com/user-attachments/assets/46e0b629-8006-4051-b392-c41b92c95ef8" /><br />

📸 **Setting User Folder Redirection Type to Basic**

<img width="1920" height="909" alt="Configuring Folder Redirection for AppData" src="https://github.com/user-attachments/assets/ff234415-2c03-4f96-98f7-d357618e2203" />

---

## 4. 🔄 Forcing Folder Redirection

By enabling Force Folder Redirection, users will be forced to use the redirection settings, even if they have local folders configured. This ensures consistency across all machines.

📸 **Forcing Folder Redirection**

<img width="1920" height="909" alt="Forcing Folder Redirection" src="https://github.com/user-attachments/assets/7e70286a-131a-4978-a541-3bb84ccea04b" /><br />

<img width="1920" height="909" alt="Forcing Folder Redirection 1" src="https://github.com/user-attachments/assets/512343d8-8a77-462a-80a6-0840e45057f4" /><br />

<img width="1920" height="909" alt="Forcing Folder Redirection 2" src="https://github.com/user-attachments/assets/fce51aea-23e4-4def-bb8f-84d3b2db6786" /><br />

<img width="1920" height="909" alt="Forcing Folder Redirection 3" src="https://github.com/user-attachments/assets/0f97b6a9-8086-4c44-bcde-769a4fc282b1" /><br />

<img width="1920" height="909" alt="Forcing Folder Redirection 4" src="https://github.com/user-attachments/assets/36f06a06-2005-4055-9c9a-b21e75376ebe" /><br />

<img width="1920" height="909" alt="Forcing Folder Redirection 5" src="https://github.com/user-attachments/assets/874f71cb-aacf-40f1-bbe8-012d7de57fc6" /><br />

<img width="1920" height="909" alt="Forcing Folder Redirection 6" src="https://github.com/user-attachments/assets/7954ea4a-67fd-4476-97e9-d3e7f078b107" /><br />

<img width="1920" height="909" alt="Forcing Folder Redirection 7" src="https://github.com/user-attachments/assets/bea13ef7-49c2-4380-b224-98193d2c994e" /><br />

<img width="1920" height="909" alt="Forcing Folder Redirection 8" src="https://github.com/user-attachments/assets/3dec3045-16fd-476f-b2ff-6ab9cc804c26" /><br />

<img width="1920" height="909" alt="Forcing Folder Redirection 9" src="https://github.com/user-attachments/assets/02b7142f-25e7-4279-b663-3902fdbc7d85" /><br />

<img width="1920" height="909" alt="Forcing Folder Redirection 10" src="https://github.com/user-attachments/assets/a4bc6e9b-d855-4772-a87d-581db56fba22" /><br />

📸 **Forcing User Folder Redirection**

<img width="1920" height="909" alt="Forcing User Folder Redirection" src="https://github.com/user-attachments/assets/a3b1f962-2461-4f14-8056-585f99add501" /><br />

<img width="1920" height="909" alt="Forcing User Folder Redirection 1" src="https://github.com/user-attachments/assets/447065a3-239e-427f-a1e1-790db1696d26" /><br />

<img width="1920" height="909" alt="Forcing User Folder Redirection 2" src="https://github.com/user-attachments/assets/a67adef2-8dbb-4894-a569-9784cc997693" /><br />

<img width="1920" height="909" alt="Forcing User Folder Redirection 3" src="https://github.com/user-attachments/assets/f32a909c-b972-4bd0-ba8f-60b82138e389" /><br />

<img width="1920" height="909" alt="Forcing User Folder Redirection 4" src="https://github.com/user-attachments/assets/b63c3795-3e96-4d15-b12f-ba492b1c44d3" /><br />

<img width="1920" height="909" alt="Forcing User Folder Redirection 5" src="https://github.com/user-attachments/assets/18c1e81a-d690-421f-86a1-462c5688f8c7" /><br />

<img width="1920" height="909" alt="Forcing User Folder Redirection 6" src="https://github.com/user-attachments/assets/c43a821b-b5a0-4696-9b29-8738bf2bca42" /><br />

<img width="1920" height="909" alt="Forcing User Folder Redirection 7" src="https://github.com/user-attachments/assets/76a61d6d-f262-41db-b97d-0f98b614af6f" /><br />

<img width="1920" height="909" alt="Forcing User Folder Redirection 8" src="https://github.com/user-attachments/assets/e81f042a-4fb7-45ec-ab28-2b2aeaf51380" />

---

## 5. ➡️ Configuring Folder Redirection Target for Users

This step allows setting the Target for the folder redirection, specifying the network path or share location where user folders will be redirected.

📸 **Configuring Folder Redirection Target for ITSecurity Users**

<img width="1920" height="909" alt="Configuring Folder Redirection Target for ITSecurity Users" src="https://github.com/user-attachments/assets/a54270c4-eafc-46f8-bd2b-7e43aa8d05d6" /><br />

📸 **Configuring User Folder Redirection Target for Domain Users**

<img width="1920" height="909" alt="Configuring Folder Redirection Target for Domain Users" src="https://github.com/user-attachments/assets/58e62fb1-4fbb-4937-a633-72e1645fcd9d" />

---

## 6. 📁 Configuring Folder Redirection for Documents

Redirecting the Documents folder to a shared network location allows for centralized access and backup. 

This setting is applied through GPO under:  <br />
  📁 `Folder Redirection > Documents`

📸 **Configuring Folder Redirection for Documents**

<img width="1920" height="909" alt="Root Path Entered for Documents Redirection 1" src="https://github.com/user-attachments/assets/b628c8db-8bfb-4d78-8394-a54b3d9160dc" /><br />

📸 **Configuring User Folder Redirection for Documents**

<img width="1920" height="909" alt="Root Path Entered for Documents Redirection" src="https://github.com/user-attachments/assets/5be97ba4-34e3-497c-b4b6-23853ffbba4f" />

---

## 7. 🛠️ Configuring Folder Redirection for Desktop

Redirection of the Desktop folder ensures that users' desktop environments are consistent across machines and stored in a central network location.

📸 **Configuring Folder Redirection for Desktop**

<img width="1920" height="909" alt="Configuring Folder Redirection for Desktop" src="https://github.com/user-attachments/assets/9bedf909-e0bd-4a55-aa83-8394f4e10a8c" /><br />

📸 **Configuring USer Folder Redirection for Desktop**

<img width="1920" height="909" alt="Root Path Entered for Desktop Redirection" src="https://github.com/user-attachments/assets/e7675e62-c3cb-486c-8675-b6b2a975f14b" />

---

## 8. ➡️ Configuring Folder Redirection for AppData

Redirect the AppData folder to a network share to ensure that user-specific application data is stored centrally, improving user mobility and ensuring backup.

📸 **Configuring Folder Redirection for AppData**

<img width="1920" height="909" alt="Configuring User Folder Redirection for AppData" src="https://github.com/user-attachments/assets/46e0b629-8006-4051-b392-c41b92c95ef8" /><br />

📸 **Configuring User Folder Redirection for AppData**

<img width="1920" height="909" alt="Configuring Folder Redirection for AppData" src="https://github.com/user-attachments/assets/ff234415-2c03-4f96-98f7-d357618e2203" />

---

## 9. 🗂️ Folder Redirection Properties for Specific Folders

Redirection properties can be set individually for Documents, Desktop, and AppData. Each folder's settings allow control over synchronization and redirection paths.

📸 **Folder Redirection Properties for Start Menu**

<img width="1920" height="909" alt="Root Path Entered for Start Menu Redirection 1" src="https://github.com/user-attachments/assets/c1374b38-b4f5-4b5b-89b1-37295dcc6dfb" /><br />

📸 **Folder Redirection Properties for Pictures**

<img width="1920" height="909" alt="Root Path Entered for Pictures Redirection 1" src="https://github.com/user-attachments/assets/0e2e8701-c539-4604-ae7b-b420093cdeb1" /><br />

📸 **Folder Redirection Properties for Music**

<img width="1920" height="909" alt="Root Path Entered for Music Redirection 1" src="https://github.com/user-attachments/assets/2dddd00b-a65a-4201-a1f5-cc42004d46c5" /><br />

📸 **Folder Redirection Properties for Videos**

<img width="1920" height="909" alt="Root Path Entered for Videos Redirection 1" src="https://github.com/user-attachments/assets/75110013-3712-40da-b08a-263dcf02b241" /><br />

📸 **Folder Redirection Properties for Contacts**

<img width="1920" height="909" alt="Root Path Entered for Contacts Redirection 1" src="https://github.com/user-attachments/assets/49bfac85-370f-4e3e-a8f9-5c686b26ba59" /><br />

📸 **Folder Redirection Properties for Downloads**

<img width="1920" height="909" alt="Root Path Entered for Downloads Redirection1" src="https://github.com/user-attachments/assets/84bdde99-3d03-43c4-87d4-5be2d12512fb" /><br />

📸 **Folder Redirection Properties for Links**

<img width="1920" height="909" alt="Root Path Entered for Links Redirection" src="https://github.com/user-attachments/assets/0bb969a3-6004-4000-a90d-ce8770dce66c" /><br />

📸 **Folder Redirection Properties for Searches**

<img width="1920" height="909" alt="Root Path Entered for Searches Redirection" src="https://github.com/user-attachments/assets/b69f72ab-d45f-43f9-bbf3-586a5c39005f" /><br />

📸 **User Folder Redirection Properties for Start Menu**

<img width="1920" height="909" alt="Root Path Entered for Start Menu Redirection" src="https://github.com/user-attachments/assets/a10471c8-cfc3-4740-a094-0d63eb365f52" /><br />

📸 **User Folder Redirection Properties for Pictures**

<img width="1920" height="909" alt="Root Path Entered for Pictures Redirection" src="https://github.com/user-attachments/assets/6f6e6275-9bf2-4806-9a16-f7f9f6195a89" /><br />

📸 **User Folder Redirection Properties for Music**

<img width="1920" height="909" alt="Root Path Entered for Music Redirection" src="https://github.com/user-attachments/assets/35fee43e-e183-42bc-bc1c-63b8250d2245" /><br />

📸 **User Folder Redirection Properties for Videos**

<img width="1920" height="909" alt="Root Path Entered for Videos Redirection" src="https://github.com/user-attachments/assets/9e69fab2-2ded-499e-8cf1-2ab8acb0ed67" /><br />

📸 **User Folder Redirection Properties for Contacts**

<img width="1920" height="909" alt="Root Path Entered for Contacts Redirection" src="https://github.com/user-attachments/assets/7da8ee8b-968f-4838-b36b-bb48dc153651" /><br />

📸 **User Folder Redirection Properties for Downloads**

<img width="1920" height="909" alt="Root Path Entered for Downloads Redirection" src="https://github.com/user-attachments/assets/e5224464-4b82-4d45-84e3-d9b2bca504ee" />

---

## 10. 🔍 Verifying Folder Redirection Application

Confirm that folder redirection has been successfully applied by checking the Event Viewer logs.

📸 **Verifying Folder Redirection Application on Sever**

<img width="1920" height="909" alt="Verifying Folder Redirection Application" src="https://github.com/user-attachments/assets/8284fa05-7967-4d68-ad05-808e119e015a" /><br /> 

<img width="1920" height="909" alt="Verifying Folder Redirection Application 1" src="https://github.com/user-attachments/assets/e425f99b-963b-41b4-b969-5cd02719a093" /><br /> 

<img width="1920" height="909" alt="Verifying Folder Redirection Application 2" src="https://github.com/user-attachments/assets/ed6ba6fc-1953-4e1d-b113-d40313e9ba99" /><br /> 

<img width="1920" height="909" alt="Verifying Folder Redirection Application 3" src="https://github.com/user-attachments/assets/dbe3af1b-e8b9-4b33-857d-0d596b79a32e" /><br /> 

<img width="1920" height="909" alt="Verifying Folder Redirection Application 4" src="https://github.com/user-attachments/assets/880a3364-3421-49d8-a316-f392381e9a11" /><br /> 

📸 **Verifying Folder Redirection Application on `AD-WIN11-01`**

<img width="1920" height="909" alt="Verifying Folder Redirection Application on AD-WIN11-01" src="https://github.com/user-attachments/assets/f68980eb-0e91-4306-ba74-145292f1696a" /><br /> 

<img width="1920" height="909" alt="Verifying Folder Redirection Application on AD-WIN11-01 1" src="https://github.com/user-attachments/assets/6e5e5a3f-bf90-460c-868e-a01239c78f43" /><br /> 

<img width="1920" height="909" alt="Verifying Folder Redirection Application on AD-WIN11-01 2" src="https://github.com/user-attachments/assets/94dd5200-7f9b-4f4e-b694-161aef65073d" /><br /> 

📸 **Verifying Folder Redirection Application on `AD-WIN11-02`**

<img width="1920" height="909" alt="Verifying Folder Redirection Application on AD-WIN11-02" src="https://github.com/user-attachments/assets/8e5eb173-c1c7-48fb-93c0-440a5892174a" /><br /> 

<img width="1920" height="909" alt="Verifying Folder Redirection Application on AD-WIN11-02 1" src="https://github.com/user-attachments/assets/205e68a3-e45d-41f2-bfef-34ec607092b7" /><br /> 

<img width="1920" height="909" alt="Verifying Folder Redirection Application on AD-WIN11-02 2" src="https://github.com/user-attachments/assets/f33ffa25-7fa1-4cd1-8590-e72df40838b5" />

---

## 11. 📊 Command Line Results from gpupdate

Run the gpupdate command on the client machine to force the latest Group Policy settings, including folder redirection, to apply.

📸 **Command Line Results from `gpupdate` on `AD-WIN11-01`**

<img width="1920" height="909" alt="Output From `gpupdate` Command for `AD-WIN11-01`" src="https://github.com/user-attachments/assets/458a2e17-a7ea-457c-8424-463bc842471e" /><br />

📸 **Command Line Results from `gpupdate` on `AD-WIN11-02`**

<img width="1920" height="909" alt="Output From `gpupdate` Command for `AD-WIN11-02`" src="https://github.com/user-attachments/assets/c3cf5676-56d5-4239-8bc3-9d595e51cc73" /><br />

---

## 12. 📈 Command Line Results from `gpresult`

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

## 🗂️ 13. Screenshot Storage

Each image corresponds to a step described in:<br />
📂 [`08-User-Environment-Management/I. User Folder-Redirection Settings.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/08-User-Environment-Management/I.%20User%20Folder-Redirection%20Settings.md)<br />
📂 [`08-User-Environment-Management/II. Folder-Redirection Properties.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/08-User-Environment-Management/II.%20Folder-Redirection%20Properties.md)
