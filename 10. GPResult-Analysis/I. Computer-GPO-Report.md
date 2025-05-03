# 🖥️ Computer GPO Report

## 🏷️ 1. Applied Group Policy Objects

- **Default Domain Policy**
- **Windows Defender Configuration**
- **Block VLC - Policy**
- **Browser Security Settings Policy**
- **Control Panel Restrictions**
- **Default Domain Controller Policy**
- **Default Domain Policy**
- **Desktop Wallpaper Policy**
- **Disabling Unnecessary Windows Services Policy**
- **Drive Mappings Policy**
- **IPsec Authentication Policy**
- **Logon-Logoff Scripts Policy**
- **Map Network Drives Policy**
- **Network Security Settings Policy**
- **Restricted Groups Policy**
- **Service Configuration Policy**
- **Software Deployment Google Chrome Policy**
- **Start Menu and Taskbar Settings Policy**
- **Startup/Shutdown Scripts Policy**
- **USB Restriction Policy**
- **User Folder Redirection Policy**
- **Win11 Security Policy**
- **Windows Defender Settings Policy**
- **Windows Firewall Settings Policy**

📸 **Applied GPOs - Computer Scope**

![Summary of Computer-Specific Group Policy Settings](https://github.com/user-attachments/assets/c38a8bc4-657c-4934-beab-e68bee09f42c)

---

## 🚫 2. GPOs Not Applied

- **Local Group Policy**: Not applied (empty).
- **Logon-Logoff Scripts Policy Group Policy**: Not applied (Unknown Reason).

📸 **Filtered GPOs - Computer Scope**

![Summary of Computer-Specific Group Policy Settings 1](https://github.com/user-attachments/assets/fa82c4ce-4c6a-42cd-a6fe-73d9ca0fe518)

---

## 🛂 3. Security Group Memberships

- `BUILTIN\Administrators`
- `Everyone`
- `BUILTIN\Users`
- `NT AUTHORITY\NETWORK`
- `NT AUTHORITY\Authenticated Users`
- `This Organization`
- `DESKTOP-2N3JERQ$`
- `Domain Computers`
- `Authenticated authority asserted identity`
- `System Mandatory Level`

📸 **Security Groups - Computer Scope**

![Security Groups - Computer Scope](https://github.com/user-attachments/assets/94717468-94f5-465e-b48f-6c471450c184)

📸 **Last GP Update - Computer Scope**

![Last GP Update - Computer Scope](https://github.com/user-attachments/assets/7f70da7c-e28a-4029-a255-406d76fd4752)

---

## 🖌️ 4. Additional Screenshots

### A. Command Prompt Output: `gpresult /r /scope:computer`

#### 📝 Description

Displays a summary of computer-specific Group Policy settings.

#### 🎯 Purpose

Provides a quick overview of applied GPOs and system information.
   - `Capture Location`: Client Machine
     
📸 **Command Prompt Output: `gpresult /r /scope:computer`**
   
![Summary of Computer-Specific Group Policy Settings](https://github.com/user-attachments/assets/49fa90da-59d7-4aac-9582-d757dc90b429)

![Summary of Computer-Specific Group Policy Settings 1](https://github.com/user-attachments/assets/86001b69-b575-48fb-b5fe-16e85a0fc011)

### B. Command Prompt Output: `gpresult /v /scope:computer`

#### 📝 Description 

Shows verbose details of computer policies.

#### 🎯 Purpose
Offers in-depth information on each policy setting applied to the computer.
   - `Capture Location`: Client Machine

📸 **Command Prompt Output: `gpresult /v /scope:computer`**
   
![gpresult /v /scope:computer](https://github.com/user-attachments/assets/7ce50106-a21f-407b-9d95-775d71970248)

![gpresult /v /scope:computer 1](https://github.com/user-attachments/assets/9ecf51b9-1397-4637-a32e-53f2e4ad74e3)

![gpresult /v /scope:computer 2](https://github.com/user-attachments/assets/d5207a5b-8978-4c36-823a-5befddac76c5)

![gpresult /v /scope:computer 3](https://github.com/user-attachments/assets/111fb30d-508d-42ec-8e48-695ae0445a13)

![gpresult /v /scope:computer 4](https://github.com/user-attachments/assets/fdc31f66-eed9-4700-b596-e8ba3cfd1eb7)

![gpresult /v /scope:computer 5](https://github.com/user-attachments/assets/978ca0e4-78c1-4ac2-86e3-23292ecb101e)

![gpresult /v /scope:computer 6](https://github.com/user-attachments/assets/9f94d82d-0e93-4820-aa59-a52159eaafab)

![gpresult /v /scope:computer 7](https://github.com/user-attachments/assets/4c5e6173-ceb2-4286-9894-143d39cb52a8)

![gpresult /v /scope:computer 8](https://github.com/user-attachments/assets/153510f4-4a89-45a4-aa83-a1cb4f26888d)

![gpresult /v /scope:computer 9](https://github.com/user-attachments/assets/70b46c7c-f7a9-492d-be03-92ebf955a5a2)

![gpresult /v /scope:computer 10](https://github.com/user-attachments/assets/4369ac68-a1be-41e9-acd7-0fe92b778489)

![gpresult /v /scope:computer 11](https://github.com/user-attachments/assets/a3308e0a-e5fd-4777-b6be-d1a0d4af0d2b)

![gpresult /v /scope:computer 12](https://github.com/user-attachments/assets/b20dae67-b09c-42e3-80d7-ae329619877b)

![gpresult /v /scope:computer 13](https://github.com/user-attachments/assets/6103f3d2-0461-4945-b9a6-bf4e85128144)

![gpresult /v /scope:computer 14](https://github.com/user-attachments/assets/730cbaaf-4134-4bf2-8a10-c0ffcea4f9ed)   

![gpresult /v /scope:computer 15](https://github.com/user-attachments/assets/c69870ee-aeef-42e1-8ed9-55fe0632487c)

### C. **Group Policy Results Wizard in GPMC (Computer Configuration)**
   
#### 📝 Description 

Screenshot of the Group Policy Results Wizard displaying computer configuration results.

#### 🎯 Purpose

Visual representation of GPOs applied to the computer, aiding in analysis and troubleshooting.
   - `Capture Location`: Domain Controller

📸 **GPMC - Computer Configuration:**
   
![Group Policy Results Wizard Displaying Computer Configuration Results 1](https://github.com/user-attachments/assets/3def268f-3a68-4f9b-bbea-a8a9dc71abbc)

![Group Policy Results Wizard Displaying Computer Configuration Results 2](https://github.com/user-attachments/assets/5aca173b-f869-4757-a49c-cdcb6befb89b)

![Group Policy Results Wizard Displaying Computer Configuration Results 3](https://github.com/user-attachments/assets/bf23d2db-ea1b-4bca-9613-dae4ccf200aa)

![Group Policy Results Wizard Displaying Computer Configuration Results 4](https://github.com/user-attachments/assets/4dce8c00-edf2-4c15-a9c0-31487f3cc988)

![Group Policy Results Wizard Displaying Computer Configuration Results 5](https://github.com/user-attachments/assets/acb20155-0bb6-4015-8e35-b624c8408078)

![Group Policy Results Wizard Displaying Computer Configuration Results 6](https://github.com/user-attachments/assets/7dd6ca67-feba-4af2-ad19-fc43d3d1540a)

![Group Policy Results Wizard Displaying Computer Configuration Results 7](https://github.com/user-attachments/assets/f9700ce2-0570-427f-90aa-a92804bdec49)

![Group Policy Results Wizard Displaying Computer Configuration Results 8](https://github.com/user-attachments/assets/28f18f7b-9b76-44ae-94aa-c1e5b42bfb02)

![Group Policy Results Wizard Displaying Computer Configuration Results 9](https://github.com/user-attachments/assets/76fb70d0-4e78-41fb-9b84-ddd31256921f)

![Group Policy Results Wizard Displaying Computer Configuration Results 10](https://github.com/user-attachments/assets/2b2d4061-31b9-430b-814d-f369b278d73a)

![Group Policy Results Wizard Displaying Computer Configuration Results 11](https://github.com/user-attachments/assets/7a19214f-0632-4fbe-9aa7-e80fca616c94)

![Group Policy Results Wizard Displaying Computer Configuration Results 12](https://github.com/user-attachments/assets/7d8494ec-f949-49f9-bc13-294f9d6e40de)

![Group Policy Results Wizard Displaying Computer Configuration Results 13](https://github.com/user-attachments/assets/d89d1aa0-5701-4887-a098-ae284e95519d)

![Group Policy Results Wizard Displaying Computer Configuration Results 14](https://github.com/user-attachments/assets/64690c9e-5de6-4125-9f4d-29969d249fc7)

![Group Policy Results Wizard Displaying Computer Configuration Results 15](https://github.com/user-attachments/assets/317ac974-ba2d-4af8-8579-e08ab5dac828)

![Group Policy Results Wizard Displaying Computer Configuration Results 16](https://github.com/user-attachments/assets/747500c7-6220-466c-85f9-d019ebdb2b34)

![Group Policy Results Wizard Displaying Computer Configuration Results 17](https://github.com/user-attachments/assets/823074ce-40a7-42a3-ad26-d504f3574fd2)

![Group Policy Results Wizard Displaying Computer Configuration Results 18](https://github.com/user-attachments/assets/8461cc9c-cd70-4f56-a676-76467074fe70)

![Group Policy Results Wizard Displaying Computer Configuration Results 20](https://github.com/user-attachments/assets/d84fed58-d61a-452d-8be6-32277e45ef91)

![Group Policy Results Wizard Displaying Computer Configuration Results 21](https://github.com/user-attachments/assets/2306a008-437d-4426-a914-b6eefc8521d3)

![Group Policy Results Wizard Displaying Computer Configuration Results 22](https://github.com/user-attachments/assets/61bd2307-8874-473e-86f7-17654cac5229)

![Group Policy Results Wizard Displaying Computer Configuration Results 23](https://github.com/user-attachments/assets/5daf4123-2f7f-47ba-a6bf-7f9df8416ea7)

![Group Policy Results Wizard Displaying Computer Configuration Results 24](https://github.com/user-attachments/assets/ebd5c494-f068-4585-af59-621d69f300d1)

![Group Policy Results Wizard Displaying Computer Configuration Results 25](https://github.com/user-attachments/assets/df3739e3-aa5a-49a9-9251-019ce59fcb92)

![Group Policy Results Wizard Displaying Computer Configuration Results 26](https://github.com/user-attachments/assets/708d69db-1e7b-4db3-b56f-5b32b58bbca3)

![Group Policy Results Wizard Displaying Computer Configuration Results 27](https://github.com/user-attachments/assets/f6906b1e-1d90-4ece-9aa7-371629ae816f)

![Group Policy Results Wizard Displaying Computer Configuration Results 28](https://github.com/user-attachments/assets/e71a3496-caa4-4bb8-a905-90c868ad7ca4)

![Group Policy Results Wizard Displaying Computer Configuration Results 29](https://github.com/user-attachments/assets/276a6282-7d0f-4b97-8d5a-e723021d7bcb)

![Group Policy Results Wizard Displaying Computer Configuration Results 30](https://github.com/user-attachments/assets/f7017e7f-5efe-400d-8913-834185de8a32)

![Group Policy Results Wizard Displaying Computer Configuration Results 31](https://github.com/user-attachments/assets/060b7572-4e34-4f1e-af99-da12a7d2e8fe)

![Group Policy Results Wizard Displaying Computer Configuration Results 32](https://github.com/user-attachments/assets/6deaac50-d78b-40eb-bf5c-eca66e234a76)

![Group Policy Results Wizard Displaying Computer Configuration Results 33](https://github.com/user-attachments/assets/71442a3e-9c9d-438e-b2ff-c8ee92b7fbbd)

![Group Policy Results Wizard Displaying Computer Configuration Results 34](https://github.com/user-attachments/assets/11c3b447-fc44-423f-9298-e2f7c9443662)

![Group Policy Results Wizard Displaying Computer Configuration Results 35](https://github.com/user-attachments/assets/eb0be2e3-bba2-44a7-9fe2-d76dc0179c5f)

![Group Policy Results Wizard Displaying Computer Configuration Results 36](https://github.com/user-attachments/assets/10470291-57d0-4d4f-8c4c-87e37bc931d3)

![Group Policy Results Wizard Displaying Computer Configuration Results 37](https://github.com/user-attachments/assets/50256b76-c0e5-421c-8b96-fb01f91cc512)

![Group Policy Results Wizard Displaying Computer Configuration Results 38](https://github.com/user-attachments/assets/67c8f5b9-22ad-4884-90be-e0716879693c)

![Group Policy Results Wizard Displaying Computer Configuration Results 39](https://github.com/user-attachments/assets/a47e1462-395d-4bb7-9d09-44a8f45c4a42)

---

### D. HTML Report Generated by `gpresult /h`

#### 📝 Description 

Snapshot of the HTML report focusing on the computer configuration section.

#### 🎯 Purpose

Provides a formatted and comprehensive view of applied policies.
   - `Capture Location`: Client Machine

📸 **`gpresult` HTML Report - Computer:**
   
![HTML Report Generated by gpresult](https://github.com/user-attachments/assets/ff54aaf2-522c-442a-8584-84fe5b157074)

![HTML Report Generated by gpresult 1](https://github.com/user-attachments/assets/9cc34d6d-6f05-4a5f-ae91-0a3c6cda61a3)

![HTML Report Generated by gpresult 2](https://github.com/user-attachments/assets/dbca1ab0-eaa7-4581-b2ae-cb89ca6a4564)

![HTML Report Generated by gpresult 3](https://github.com/user-attachments/assets/cf7ce7c2-0270-428d-9296-c066479e6b8a)

![HTML Report Generated by gpresult 4](https://github.com/user-attachments/assets/5206f317-c6c2-4359-93da-60acafd98e45)

![HTML Report Generated by gpresult 5](https://github.com/user-attachments/assets/86380a6c-77f8-4561-8577-4d60c421e9f3)

![HTML Report Generated by gpresult 6](https://github.com/user-attachments/assets/16f29080-905e-4032-91a1-254b65c8238d)

![HTML Report Generated by gpresult 7](https://github.com/user-attachments/assets/8c80b805-5366-4033-8fed-339f4c60a615)

![HTML Report Generated by gpresult 8](https://github.com/user-attachments/assets/d73df178-106a-4a99-a55e-5e0cf6032828)

![HTML Report Generated by gpresult 9](https://github.com/user-attachments/assets/044f7d17-140b-4934-ba2a-765c01c5e928)

![HTML Report Generated by gpresult 10](https://github.com/user-attachments/assets/3b8e4a0d-9f03-4878-8a5c-ea1e814b845b)

![HTML Report Generated by gpresult 11](https://github.com/user-attachments/assets/c59b522d-9624-4b07-8617-6747d49e01c3)

![HTML Report Generated by gpresult 12](https://github.com/user-attachments/assets/73ca0c07-7e3b-4b94-b09c-d4f7bdef286f)

![HTML Report Generated by gpresult 13](https://github.com/user-attachments/assets/4a49ffe4-d1f0-4b86-b3f3-4326bc4cee52)

![HTML Report Generated by gpresult 14](https://github.com/user-attachments/assets/925668c8-f29c-4e0d-b68f-106595a5f5a4)

![HTML Report Generated by gpresult 15](https://github.com/user-attachments/assets/b72fa333-e66e-4c1a-92a5-d32d69e1da6e)

![HTML Report Generated by gpresult 16](https://github.com/user-attachments/assets/3d5d6510-242b-4794-974b-0b4e6279a899)

![HTML Report Generated by gpresult 17](https://github.com/user-attachments/assets/515cc5f7-d970-4e3f-aadc-351a8d30afb9)

![HTML Report Generated by gpresult 18](https://github.com/user-attachments/assets/65f03151-4a20-494c-a911-88acb7188373)

![HTML Report Generated by gpresult 19](https://github.com/user-attachments/assets/9bd81fda-06bb-4b93-b8fb-9eba32c5b323)

![HTML Report Generated by gpresult 20](https://github.com/user-attachments/assets/199231e1-47fe-43b3-a000-e6527a0d44d4)

![HTML Report Generated by gpresult 21](https://github.com/user-attachments/assets/0e62f062-d383-40f9-9ac7-1ac5293c7385)

![HTML Report Generated by gpresult 22](https://github.com/user-attachments/assets/6813a40c-62e2-4f93-9ffa-85219ae6e0e1)

![HTML Report Generated by gpresult 23](https://github.com/user-attachments/assets/956cc783-44f5-43c5-ba97-111d55b77fd8)

![HTML Report Generated by gpresult 24](https://github.com/user-attachments/assets/8eb51735-de7c-41b0-aecf-1196718b400d)

![HTML Report Generated by gpresult 25](https://github.com/user-attachments/assets/30654512-a16a-4ce2-b404-f0c7f36c6708)

![HTML Report Generated by gpresult 26](https://github.com/user-attachments/assets/c811e3a6-0e4d-4025-a887-67ec724801d8)

![HTML Report Generated by gpresult 27](https://github.com/user-attachments/assets/8eb3fe3a-bf5c-4b97-965e-da248500c685)

![HTML Report Generated by gpresult 28](https://github.com/user-attachments/assets/a022bca6-d794-4630-a59e-fbece1983ead)

![HTML Report Generated by gpresult 29](https://github.com/user-attachments/assets/8122963e-5d39-4006-8efc-92b8877753ca)

![HTML Report Generated by gpresult 30](https://github.com/user-attachments/assets/04188d37-e6c2-4b77-aad6-77998034942d)

![HTML Report Generated by gpresult 31](https://github.com/user-attachments/assets/a7ff2e63-867a-4875-9815-67018ad7d20c)

![HTML Report Generated by gpresult 32](https://github.com/user-attachments/assets/cf8705ed-cb6f-41f7-bacf-12cd5225881f)

![HTML Report Generated by gpresult 33](https://github.com/user-attachments/assets/56847bb7-25c2-44bf-96c2-92acaab0ae6f)

![HTML Report Generated by gpresult 34](https://github.com/user-attachments/assets/1e97668c-e652-4771-b301-d26eef9ae6d6)

![HTML Report Generated by gpresult 35](https://github.com/user-attachments/assets/21ab753a-89fc-4776-b207-0fd9d6111384)

---

## 🔄 5. Last Group Policy Application

- **Date**: 2025-05-02
- **Time**: 4:46 PM
- **Domain Controller**: WIN-D2PQBCI88JQ.hughkumbi.local
