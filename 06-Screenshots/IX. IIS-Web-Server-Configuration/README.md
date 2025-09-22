# 🌐 IIS-Web-Server-Configuration

This folder contains screenshots from the installation and configuration of **Internet Information Services (IIS)** on Windows Server 2025.  
They demonstrate role installation, serving default and custom sites, client access testing, and final verification.  

---

## 1. IIS Role Installation   
*Server Manager showing Web Server (IIS) role selected*  

📸 **IIS-Role-Installation**

![Role Selection with Web Server (IIS) Checked 3](https://github.com/user-attachments/assets/b7bbabdd-eee5-4680-acfc-7e7c4967d66a)

---

## 2. Default Website Test  
*Default IIS welcome page displayed via `http://localhost`*  

📸 **IIS-Default-Page**

<img width="1920" height="909" alt="IIS Default Page in Browser (localhost)" src="https://github.com/user-attachments/assets/af0e88bc-e765-4070-b92c-599d3e49b2b5" />

---

## 3. Custom Website in `wwwroot`  
*Custom `index.html` added to wwwroot replacing the IIS default page*  

📸 **IIS-Custom-Index**

<img width="1920" height="909" alt="Custom index file created" src="https://github.com/user-attachments/assets/01c6dba2-ccd2-4f28-983d-a9ac7b5151fc" />

---

## 4. Client Access – Internal Web Page  
*Custom web page displayed on client `AD-WIN11-01`*  

📸 **IIS-Client-`AD-WIN11-01`**

<img width="1920" height="909" alt="IP Address of the Sever Access on AD-WIN11-01" src="https://github.com/user-attachments/assets/4010509f-4140-407a-9fe7-c27d8f1bfa1f" /><br />

*Custom web page displayed on client `AD-WIN11-02`*  

📸 **IIS-Client-`AD-WIN11-02`**

<img width="1920" height="909" alt="IP Address of the Sever Access on AD-WIN11-02" src="https://github.com/user-attachments/assets/04a42e21-738f-4287-a81d-e29bcf792b32" />

---

## 5. Custom Website on Port 8080  
*IIS Manager showing the `Intranet` site bound to port 8080*  

📸 **IIS-Custom-Site**

<img width="1920" height="909" alt="IIS-Custom-Site" src="https://github.com/user-attachments/assets/ce7d3fc2-6020-4219-ac1f-c82e4ca5b0db" /><br />

*Browser accessing the custom intranet site via port 8080*  

📸 **IIS-Custom-Site-Browser**

<img width="1920" height="909" alt="IIS-Custom-Site-Browser" src="https://github.com/user-attachments/assets/b7ce83ce-ef3d-4d09-ab2c-db9dad5b49c1" />

## 6. Final Setup Verification  
*Server showing IIS running with default and custom sites*  

📸 **IIS-Final-Server**

<img width="1920" height="909" alt="New Site Displayed in Browser" src="https://github.com/user-attachments/assets/8bf907bd-b205-4bc8-9577-676e3eeaf82e" /><br />

*Client `AD-WIN11-01` confirming site access*  

📸 **IIS-Final-`AD-WIN11-01`**

<img width="1920" height="909" alt="Final Setup `AD-WIN11-01`" src="https://github.com/user-attachments/assets/a10cb6e7-361d-44df-9c0d-4184f73225eb" /><br />

*Client `AD-WIN11-02` confirming site access*  

📸 **IIS-Final-`AD-WIN11-02`**

<img width="1920" height="909" alt="Final Setup `AD-WIN11-02`" src="https://github.com/user-attachments/assets/e5e463d4-1640-4243-95da-76cc835125ea" />

---

Each image corresponds to a step described in: <br />
📂 [`03-Configuration/VI. IIS-Web-Server-Configuration.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/03-Configuration/VI.%20IIS-Web-Server-Configuration.md)
