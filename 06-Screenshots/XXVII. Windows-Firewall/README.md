# 🔒 Windows Firewall Configuration

This section demonstrates the configuration of Windows Firewall settings within the Active Directory environment to enhance system security and manage network traffic.

---

## 1. 🛡️ Configuring Windows Firewall via Group Policy

Use Group Policy to configure Windows Firewall settings across the domain. You can define rules for inbound and outbound traffic, specify exceptions, and manage the firewall settings for all computers within the domain.

📸 **Configuring Windows Firewall via Group Policy**

<img width="1920" height="909" alt="Group Policy Management Console Showing the Windows Firewall Settings Policy Linked to Domain" src="https://github.com/user-attachments/assets/cb112b6d-6443-423e-b821-ec43c13d1e29" />

---

## 2. ⚙️ Configuring Firewall Rules for Specific Applications

Configure inbound and outbound rules for specific applications to control network access. This allows for enhanced security by restricting unnecessary traffic while allowing required applications to function.

📸 **Configuring Inbound Firewall Rules**

![Inbound DNS Allow DNS TCP Rule Settings](https://github.com/user-attachments/assets/e6805d24-96db-45f3-b3ee-9879033e3273)

![Inbound DNS Allow DNS UDP Rule Settings](https://github.com/user-attachments/assets/89701866-d1b3-4e5c-8f4b-64e28df1668c)

![Inbound LDAP TCP Rule Settings](https://github.com/user-attachments/assets/0f563d4c-c28c-46c5-ad45-c18c465333cc)

![Inbound LDAP SSL TCP Rule Settings](https://github.com/user-attachments/assets/04937554-9c6f-4d33-8a1d-f2c605a02c67)

![Inbound Global Catalog Rule Settings](https://github.com/user-attachments/assets/ffdf9d9a-bc23-4705-a13e-d28adaba2ca5)

![Inbound Global Catalog SSL TCP Rule Settings](https://github.com/user-attachments/assets/323ad0ed-481a-42f0-b229-4035aa775f7e)

![Inbound Kerberos TCP Rule Settings](https://github.com/user-attachments/assets/17c43258-a386-495f-b62b-ae34556b7a5c)

![Inbound Kerberos UDP Rule Settings](https://github.com/user-attachments/assets/182933c2-4ae8-4eb6-870f-e5eaf6143434)

![Inbound Kerberos Password Change TCP Rule Settings](https://github.com/user-attachments/assets/e9056a05-9cb9-4b73-9c59-d42fe3272674)

![Inbound SMB File Sharing TCP Rule Settings](https://github.com/user-attachments/assets/c4e72430-a6af-4bca-83f6-b413eaaec89f)

![Inbound RPC Endpoint Mapper TCP Rule Settings](https://github.com/user-attachments/assets/48a4ac03-b84a-433e-a17f-18481204bceb)

![Inbound RPC Dynamic Ports TCP Rule Settings](https://github.com/user-attachments/assets/2cb35591-0534-441f-94ba-f26e6e92dddb)

![Inbound Windows Time Service TCP Rule Settings](https://github.com/user-attachments/assets/226a3b7d-d3a9-4137-9a43-8bf2c9b9585d)

![Inbound ICMP Echo Request (Ping) Rule Settings](https://github.com/user-attachments/assets/ae21c693-ddb4-4cfb-b3b7-584268ee11fd)

![Inbound Remote Desktop - Shadow (TCP-in) Rule Settings](https://github.com/user-attachments/assets/e9036dc1-114f-4f9e-abcf-70e783eae956)

![Inbound Remote Desktop - UserMode(UDP-in) Rule Settings](https://github.com/user-attachments/assets/baf944bf-074d-4ba9-adc7-ed90997942b8)

![Inbound Remote Desktop - UserMode(TCP-in) Rule Settings](https://github.com/user-attachments/assets/a184c0de-dabd-4fed-b9fd-25b7706c862d)

![Inbound Windows Remote Management (HTTP-in) Rule Settings](https://github.com/user-attachments/assets/72e07e3a-1114-49b5-95e8-b6cea4e473d3)

![Inbound Windows Remote Management (HTTP-in) Rule Settings 1](https://github.com/user-attachments/assets/0acf6235-003b-427d-bd16-978b036e82c0)

![Inbound File and Printer Sharing (NB-Name-In) Rule Settings](https://github.com/user-attachments/assets/ab99c65c-66ad-4390-8816-3e0fcc645335)

![Inbound File and Printer Sharing (NB-Session-In) Rule Settings](https://github.com/user-attachments/assets/20a48a28-b465-4953-bf72-6becc5fb16c0)

![Inbound File and Printer Sharing (SMB-In) Rule Settings](https://github.com/user-attachments/assets/0cd19b84-64dc-41f5-bcca-5b8605f5b41f)

![Overview of all Newly Added Inbound Rules](https://github.com/user-attachments/assets/6ccae6f4-c0fc-49d5-9c41-fa7fe585b94b)

📸 **Configuring Outbound Firewall Rules**

![Outbound Allow DNS Queries TCP Rule Settings](https://github.com/user-attachments/assets/2d047173-6ed3-495b-9858-37aa58459643)

![Outbound Allow DNS Queries UDP Rule Settings](https://github.com/user-attachments/assets/b299ed4d-8e5a-4bfd-8634-f6099cbce6b0)

![Outbound Allow DNS Queries TCP Rule Settings](https://github.com/user-attachments/assets/2d047173-6ed3-495b-9858-37aa58459643)

![Outbound Allow DNS Queries UDP Rule Settings](https://github.com/user-attachments/assets/b299ed4d-8e5a-4bfd-8634-f6099cbce6b0)

![Outbound Allow Kerberos Auth TCP Rule Settings](https://github.com/user-attachments/assets/e3aa32c6-242e-413f-b54a-11ddd6e4924c)

![Outbound Allow Kerberos Auth UDP Rule Settings](https://github.com/user-attachments/assets/2dd3c82b-fb17-4533-b193-417e30dbe824)

![Outbound Allow Windows Time Sync UDP Rule Settings](https://github.com/user-attachments/assets/5fd4db83-576c-44f5-8ad6-05fc638fdffe)

![Outbound Allow HTTP-HTTPS TCP Rule Settings](https://github.com/user-attachments/assets/5d53a004-f7b5-47ba-a839-d4bf95ccde4e)

![Overview of all Newly Added Outbound Rules](https://github.com/user-attachments/assets/811c16d4-4549-4927-97a8-2580c31b1998)

---

## 3. 📝 Enabling and Configuring Logging in Windows Firewall

Configure the firewall to log network traffic, which helps in auditing and troubleshooting. The logs can be reviewed to detect unusual activity or unauthorized access attempts.

📸 **Enabling and Configuring Logging in Windows Firewall**

![Domain Profile Rules Configuration](https://github.com/user-attachments/assets/22ab94a5-f285-4e93-bd0c-56968e982f0d)

![Domain Profile Rules Configuration 1](https://github.com/user-attachments/assets/b579ef5c-15c7-4cab-83c6-997449aa80ef)

![Private Profile Rules Configuration](https://github.com/user-attachments/assets/3a5fc61a-ff43-4c8f-a000-04055f0047f5)

![Private Profile Rules Configuration 1](https://github.com/user-attachments/assets/ce31ef2a-1c5c-4c24-a7db-d7aafa4a1af7)

![Public Profile Rules Configuration](https://github.com/user-attachments/assets/cf9b2e66-87cb-4558-8022-fbabc1a65b56)

![Public Profile Rules Configuration 2](https://github.com/user-attachments/assets/c6ebecab-4aa6-4536-9652-2d7c574f5a01)

---

## 4. 🔧 Creating Custom Firewall Rules

In addition to the default firewall rules, custom rules can be created to meet specific security requirements. This includes creating rules for particular IP addresses, ports, or protocols.

📸 **Creating Custom Firewall Rules**

![Outbound Block TFTP UDP Rule Settings](https://github.com/user-attachments/assets/a1bb5e1c-20b9-48d6-a221-56886592b5b3)

![Outbound Block Telnet TCP Rule Settings](https://github.com/user-attachments/assets/9c51d6e8-f23c-488c-97db-af6af5d18793)

![Outbound Block Unencrypted FTP TCP Rule Settings](https://github.com/user-attachments/assets/f3cda28e-a856-4787-95f8-dc9d9bb5824d)

![Outbound Block NetBIOS TCP Rule Settings](https://github.com/user-attachments/assets/5c883636-c14f-4e1d-946c-ada330167923)

![Outbound Block NetBIOS UDP Rule Settings](https://github.com/user-attachments/assets/bd7eecab-5ac6-4b71-b79b-42beaa61fdf5)

![Outbound Block LLMNR UDP Rule Settings](https://github.com/user-attachments/assets/a87c3fc7-6abf-462e-bd6f-d3ed2edee790)

---

## 5. 🧪 Testing Firewall Configuration

Once the firewall settings are applied, test the configuration by trying to access the blocked services or applications from a client machine. Use tools like Telnet or PowerShell to verify that the rules are functioning correctly.

📸 **Profile Settings Verification on Clients for `AD-WIN11-01`**

![Profile Settings Verification on Clients for `AD-WIN11-01`](https://github.com/user-attachments/assets/241da56e-4d70-4668-9458-a488fe20a3e6)

![Profile Settings Verification on Clients for `AD-WIN11-01` 1](https://github.com/user-attachments/assets/f1c34efd-99d2-406b-8dc4-84f5cfed6ef0)

📸 **Profile Settings Verification on Clients for `AD-WIN11-02`**

![Profile Settings Verification on Clients for `AD-WIN11-02`](https://github.com/user-attachments/assets/deeacba2-dec8-4b85-9d39-28bd5f631081)

![Profile Settings Verification on Clients for `AD-WIN11-02` 1](https://github.com/user-attachments/assets/918ab037-edfb-4db2-b921-035ef8f26ca3)

📸 **Failed Ping to Domain for `AD-WIN11-01`**

![Failed Ping to Domain](https://github.com/user-attachments/assets/bec9b00f-2eb1-4935-a8cc-c2196bede1fd)

![Failed Ping to Domain 1](https://github.com/user-attachments/assets/c221ff95-0bdc-4e85-9d38-b9e1dc2f6a91)

📸 **Failed Ping to Domain for `AD-WIN11-02`**

![Failed Ping to Domain](https://github.com/user-attachments/assets/df34eacf-7864-4b3d-bdb5-ab173f6e02c4)

![Failed Ping to Domain 1](https://github.com/user-attachments/assets/d03b7b0e-1b16-4e55-9b7b-af8eec2e7ce0)

📸 **Successful Ping to Domain for `AD-WIN11-01`**

![Successful Ping to Domain for `AD-WIN11-01`](https://github.com/user-attachments/assets/8ba9da1f-15a3-498e-81be-026fedb10971)

📸 **Successful Ping to Domain for `AD-WIN11-02`**

![Successful Ping to Domain for `AD-WIN11-02`](https://github.com/user-attachments/assets/e8c23ea9-c478-4670-a89d-e252d41fa761)

📸 **Active Directory Services Testing and Validating for `AD-WIN11-01`**

![Active Directory Services Testing and Validating for `AD-WIN11-01`](https://github.com/user-attachments/assets/15080997-c499-402c-9650-7bb148545ef2)

![Active Directory Services Testing and Validating for `AD-WIN11-01` 1](https://github.com/user-attachments/assets/a2381206-59c8-429e-9994-3bace49b1d4a)

![Active Directory Services Testing and Validating for `AD-WIN11-01` 2](https://github.com/user-attachments/assets/6444a49b-658e-4654-9e9e-2b4d96a6e673)

📸 **Active Directory Services Testing and Validating for `AD-WIN11-02`**

![Active Directory Services Testing and Validating for `AD-WIN11-02`](https://github.com/user-attachments/assets/da9b6b7b-e2bb-499a-830e-072135f6d4a3)

![Active Directory Services Testing and Validating for `AD-WIN11-02` 1](https://github.com/user-attachments/assets/02f553bc-a5e2-40cc-bfac-d8241e3d856b)

![Active Directory Services Testing and Validating for `AD-WIN11-02` 2](https://github.com/user-attachments/assets/a9bcf3af-d8d5-47ab-9a6d-bc59ea93ca81)

📸 **Authentication and File Sharing Testing and Validating for `AD-WIN11-01`**

![Authentication and File Sharing Testing and Validating for `AD-WIN11-01`](https://github.com/user-attachments/assets/abd49a5c-677b-408f-a2e7-783341755ad8)

📸 **Authentication and File Sharing Testing and Validating for `AD-WIN11-02`**

![Authentication and File Sharing Testing and Validating for `AD-WIN11-02`](https://github.com/user-attachments/assets/69dd3e0e-e6da-477a-8348-4b085dc9d574)

📸 ***Remote Management, Time Synchronization Testing and Validation for `AD-WIN11-01`**

![Remote Management Testing and Validation for `AD-WIN11-01`](https://github.com/user-attachments/assets/eedcaa72-dae3-46f4-b9b5-172703ad25cf)

![Remote Management Testing and Validation for `AD-WIN11-01` 1](https://github.com/user-attachments/assets/c3801130-9209-48d4-8e86-d062b60baf9b)

![Remote Management Testing and Validation for `AD-WIN11-01` 2](https://github.com/user-attachments/assets/bbb72288-cdc7-443b-9e34-df9a716a77a2)

📸 **Remote Management, Time Synchronization Testing and Validation for `AD-WIN11-02`**

![Remote Management Testing and Validation for `AD-WIN11-02`](https://github.com/user-attachments/assets/207fb7ad-73ce-4d77-96aa-6eb166aa1274)

![Remote Management Testing and Validation for `AD-WIN11-02` 1](https://github.com/user-attachments/assets/081a80a7-d435-404e-9583-48c7cef729fd)

![Remote Management Testing and Validation for `AD-WIN11-02` 2](https://github.com/user-attachments/assets/d3968c36-7b6b-4a38-9b7a-46cf644e7035)

📸 ***Remote Management, Time Synchronization Testing and Validation for `AD-WIN11-01`**

![Remote Management Testing and Validation for `AD-WIN11-02` 4](https://github.com/user-attachments/assets/a7fbbd2c-a87d-4abd-af50-4cd4dd48409c)

📸 **Remote Management, Time Synchronization Testing and Validation for `AD-WIN11-02`**

![Remote Management Testing and Validation for `AD-WIN11-01` 3](https://github.com/user-attachments/assets/1a626645-6097-4d23-ba72-ffd19a50a543)

📸 **Successful Ping to `AD-WIN11-01` & `AD-WIN11-02` from Domain `WinServer2025`**

![Successful Ping to Domain for `WinServer2025`](https://github.com/user-attachments/assets/fa2887f0-2573-4a2d-b0d8-9c6cb78c57e2)

![Successful Ping to Domain for `WinServer2025` 1](https://github.com/user-attachments/assets/81f9282a-346b-4a71-a736-23d9ff5cc2eb)

---

## 6. 🔍 Reviewing Windows Firewall Event Logs

Check Event Viewer for logs related to Windows Firewall activity. These logs can help identify if any traffic was blocked or allowed, which is crucial for troubleshooting.

📸 **Reviewing Windows Firewall Event Logs**

![Event Viewer Logs for Firewall](https://github.com/user-attachments/assets/54777102-814f-46df-9b04-1f346d256dae)

---

## 7. 📜 Group Policy Result for Firewall Settings

Use the gpresult command to check whether the firewall settings configured through Group Policy have been successfully applied to a client machine.

📸 **Command Line Showing `gpresult` Output for `AD-WIN11-01`**  

![Command Line Showing `gpresult` Output for `AD-WIN11-01`](https://github.com/user-attachments/assets/9abd79e0-dc44-4204-aa81-7b4a0a4cbafe)

![Command Line Showing `gpresult` Output for `AD-WIN11-01` 1](https://github.com/user-attachments/assets/88cac2fe-a1c7-41cd-b52d-6a96df62df7d)

📸 **Command Line Showing `gpresult` Output for `AD-WIN11-02`**  

![Command Line Showing `gpresult` Output for `AD-WIN11-02`](https://github.com/user-attachments/assets/da1a6dc5-4142-4dd2-8bec-0a6b62c828a8)

![Command Line Showing `gpresult` Output for `AD-WIN11-02` 1](https://github.com/user-attachments/assets/4123aae1-4826-4b7d-a9b2-89e8f77dfa80)

---

## 🗂️ 8. Screenshot Storage

All images related to this section are stored in:<br />  
📂 [`09-Infrastructure-Protection/I. Windows-Firewall.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/09-Infrastructure-Protection/I.%20Windows-Firewall.md)
