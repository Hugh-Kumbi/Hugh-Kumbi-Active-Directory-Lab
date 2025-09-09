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
  `"Welcome to the Internal Web Server - Configured by Hugh Chanetsa"`

📸 **Modified `index.html` in Notepad & VS Code**

---

### 4. 📶 Verify Network Access from Windows 11 Clients

From each domain-joined Windows 11 client:

- Opened a web browser and entered the IP address of the server, e.g.,  
  `http://192.168.1.10`
- The custom internal web page loaded successfully, verifying LAN accessibility

📸 **Custom Web Page Displayed in Browser on Client Machine**

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
  `http://<Server-IP>:8080`

📸 **IIS Manager Showing Custom Website**

📸 **New Site Displayed in Browser**

---

## 📝 Summary

In this lab, I successfully installed and configured **IIS Web Server** on Windows Server 2025, created a custom web page, and verified access from domain-joined client machines. This exercise demonstrates my ability to:

- Deploy web services internally
- Manage IIS settings
- Host and serve basic web content
- Test network functionality across Active Directory-connected endpoints

📸 **Final Setup (Server + Client Browser View)**

---

📁 5. Screenshot Storage
All screenshots related to GPOs should be saved in: 📂 06-Screenshots/GPO-Configurations.png
