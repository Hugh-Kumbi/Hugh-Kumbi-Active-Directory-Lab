# 🔧 Folder Redirection Settings
This section explains the configuration of Folder Redirection within the Group Policy to redirect user folders, such as Documents, Desktop, and AppData, to a network location for central management and backup.

## 1. Accessing Folder Redirection Settings in GPMC

Open the Group Policy Management Console (GPMC) and navigate to the folder redirection settings under: 

  📁 `User Configuration > Policies > Windows Settings > Folder Redirection`

📸 Accessing Folder Redirection Settings in GPMC

---

## 2. 📁 Configuring Folder Redirection for Documents

Redirecting the Documents folder to a shared network location allows for centralized access and backup. 

This setting is applied through GPO under: 

  📁 `Folder Redirection > Documents`

📸 Configuring Folder Redirection for Documents

---

## 3. 🛠️ Configuring Folder Redirection for Desktop

Redirection of the Desktop folder ensures that users' desktop environments are consistent across machines and stored in a central network location.

📸 Configuring Folder Redirection for Desktop

---

## 4. ➡️ Configuring Folder Redirection for AppData

Redirect the AppData folder to a network share to ensure that user-specific application data is stored centrally, improving user mobility and ensuring backup.

📸 Configuring Folder Redirection for AppData

---

## 5. 🔍 Verifying Folder Redirection Application

Confirm that folder redirection has been successfully applied by checking the Event Viewer logs and using the gpresult command.

📸 Verifying Folder Redirection Application

---

## 6. 📊 Command Line Results From gpupdate

Run the gpupdate command on the client machine to force the latest Group Policy settings, including folder redirection, to apply.

📸 Command Line Results From gpupdate

---

## 7. 📈 Command Line Results From gpresult

The gpresult command is used to verify which policies, including folder redirection, have been applied to a specific machine or user.

📸 Command Line Results From gpresult

---

Each image corresponds to a step described in 📂 `08-User-Environment-Management/I.Folder-Redirection-Settings.md` and `II. Folder-Redirection Properties.md`.

![Group Policy Management Console Showing The Folder Redirection Policy GPO And Link (2)](https://github.com/user-attachments/assets/75107291-3d2f-4691-a235-df719372b559)

![Folder Redirection Configuration Window](https://github.com/user-attachments/assets/797fd428-1c6e-4c1d-a671-64d6aad6c198)
  
![Root Path Entered](https://github.com/user-attachments/assets/8c0dc5da-1191-4ba7-9105-75b8b2195deb)

![Client Side Documents Folder Showing the Redirected Location In Properties](https://github.com/user-attachments/assets/44b93241-be75-4f16-9945-e25f78bd08a1)

![Server Side Share Showing User Folders](https://github.com/user-attachments/assets/84313e57-e680-41fd-9336-5f7f1d170dec)


![Group Policy Management Console Showing The Folder Redirection Policy GPO And Link (2)](https://github.com/user-attachments/assets/7a6b5186-8001-41d2-9b92-97325d2c48b5)

![Folder Redirection Properties Window With Configuration](https://github.com/user-attachments/assets/bda6c476-6430-4b88-bc7a-3bd71f590c4a)

![Shared Folder Structure On The Server Showing ServerUserDocs](https://github.com/user-attachments/assets/64c80926-489a-4cff-a541-11ff220415cb)

![NTFS Permission Settings For The FileShares Folder](https://github.com/user-attachments/assets/274be70b-4d35-4bc3-8438-2d7964943369)

![Share Settings With Authenticated Users Listed](https://github.com/user-attachments/assets/de3e23a0-8852-4047-8354-9be238e0a9be)

![User’s Documents Folder Showing The Server Path](https://github.com/user-attachments/assets/edf69bc9-71e1-434b-8ddc-7d91d2f1c6e3)

![File Explorer Showing ServerUserDataUsername](https://github.com/user-attachments/assets/0868574e-ea46-4e9a-986f-e6da18a12f3d)
