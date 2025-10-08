# 🌐 IIS-Web-Server-Configuration

## 🗒️ Overview

In this section of my Active Directory lab, I installed and configured **Internet Information Services (IIS)** on **Windows Server 2025** to demonstrate how to set up and host internal web services in an enterprise environment. The lab also involved testing connectivity and accessibility from two domain-joined Windows 11 clients. This setup illustrates basic web server deployment and internal network publishing for web applications.

---

## 🛠️ Configuration Steps

### 1. ⬇️ Install the IIS Role

I used **Server Manager** to install the **Web Server (IIS)** role:

- Opened **Add Roles and Features Wizard**
- Selected the following:
  - Role: `Web Server (IIS)`
  - Features: Left default options (added optional features like ASP.NET support for future use)

📸 **Server Manager - Role Selection with Web Server (IIS) Checked**

![Role Selection with Web Server (IIS) Checked 3](https://github.com/user-attachments/assets/b7bbabdd-eee5-4680-acfc-7e7c4967d66a)

---

### 2. ✅ Confirm Installation and Test Default Website

After the role installation completed:

- I opened a browser on the server and navigated to:  
  `http://localhost`
- Confirmed that the **IIS default welcome page** loaded successfully.

📸 **IIS Default Page in Browser (localhost)**

<img width="1920" height="909" alt="IIS Default Page in Browser (localhost)" src="https://github.com/user-attachments/assets/af0e88bc-e765-4070-b92c-599d3e49b2b5" />

---

### 3. 🌐 Configure Basic Website

To demonstrate internal web hosting:

- Navigated to `C:\inetpub\wwwroot`
- Replaced `iisstart.htm` with a custom HTML file: `index.html`
- Edited the file to display a custom message:  
  `"MeiVault Systems Internal Portal - Configured by Hugh Chanetsa"`

📸 **Modified `index.html` in Notepad**

<img width="1920" height="909" alt="Custom index file created" src="https://github.com/user-attachments/assets/01c6dba2-ccd2-4f28-983d-a9ac7b5151fc" />

---

### 4. 📶 Verify Network Access from Windows 11 Clients

From each domain-joined Windows 11 client:

- Opened a web browser and entered the IP address of the server, e.g.,  
  `https://192.168.1.10` & `https://winserver2025.hughdomain.local`
- The custom internal web page loaded successfully, verifying LAN accessibility

📸 **Custom Web Page Displayed in Browser on AD-WIN11-01**

<img width="1920" height="909" alt="IP Address of the Sever Access on AD-WIN11-01" src="https://github.com/user-attachments/assets/4010509f-4140-407a-9fe7-c27d8f1bfa1f" /><br />

📸 **Custom Web Page Displayed in Browser on AD-WIN11-02**

<img width="1920" height="909" alt="IP Address of the Sever Access on AD-WIN11-02" src="https://github.com/user-attachments/assets/04a42e21-738f-4287-a81d-e29bcf792b32" />

---

### 5. 🚀 Create a Custom Website in IIS

For extended functionality:

- Opened **IIS Manager**
- Added a **New Website**:
  - Site name: `Intranet`
  - Physical path: `C:\inetpub\intranet`
  - Binding: `http`, Port: `8080`
- Created an `index.html` in the new folder with a custom message
- Opened firewall port 8080 and tested in browser:  
  `http://192.168.1.10:8080`

📸 **IIS Manager Showing Custom Website**

<img width="1920" height="909" alt="IIS Manager Showing Custom Website" src="https://github.com/user-attachments/assets/ce7d3fc2-6020-4219-ac1f-c82e4ca5b0db" /><br />

📸 **New Site Displayed in Browser**

<img width="1920" height="909" alt="New Site Displayed in Browser" src="https://github.com/user-attachments/assets/b7ce83ce-ef3d-4d09-ab2c-db9dad5b49c1" />

---

## 📝 Summary

In this lab, I successfully installed and configured **IIS Web Server** on Windows Server 2025, created a custom web page, and verified access from domain-joined client machines. This exercise demonstrates my ability to:

- Deploy web services internally
- Manage IIS settings
- Host and serve basic web content
- Test network functionality across Active Directory-connected endpoints

📸 **Final Setup `WinServer2025`**

<img width="1920" height="909" alt="New Site Displayed in Browser" src="https://github.com/user-attachments/assets/8bf907bd-b205-4bc8-9577-676e3eeaf82e" /><br />

📸 **Final Setup `AD-WIN11-01`**

<img width="1920" height="909" alt="Final Setup `AD-WIN11-01`" src="https://github.com/user-attachments/assets/a10cb6e7-361d-44df-9c0d-4184f73225eb" /><br />

📸 **Final Setup `AD-WIN11-02`**

<img width="1920" height="909" alt="Final Setup `AD-WIN11-02`" src="https://github.com/user-attachments/assets/e5e463d4-1640-4243-95da-76cc835125ea" />

---

## 📁 6. Screenshot Storage

All screenshots for this section can be found in:<br />
📂 [`06-Screenshots/IX. IIS-Web-Server-Configuration`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/IX.%20IIS-Web-Server-Configuration/README.md)
