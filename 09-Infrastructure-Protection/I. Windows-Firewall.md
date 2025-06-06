# 🔥 Windows Firewall Group Policy Configuration

This document outlines how I configured **inbound and outbound firewall rules via Group Policy** to ensure that essential Active Directory services are permitted while blocking insecure or unnecessary protocols.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Windows Firewall Settings Policy  
- **Linked To:** Domain

📸 **Group Policy Management Console Showing the Windows Firewall Settings Policy Linked to Domain**  

![Group Policy Management Console Showing the Windows Firewall Settings Policy Linked to Domain](https://github.com/user-attachments/assets/e63af903-cdb8-4b00-8592-2b12e9eb9645)

---

## 🔧 2. Inbound Firewall Rule Configuration

I created multiple **inbound rules** for Active Directory communication services using:

📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Windows Defender Firewall with Advanced Security > Inbound Rules`

### 🔐 LDAP Rule

   * __Rule Type:__ Port
   * __Protocol:__ TCP
   * __Port:__ 389
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Name:__ Allow LDAP
   * __Description:__ Allows LDAP communications for Active Directory

📸 **Inbound LDAP Rule Settings**

![Inbound LDAP Rule Settings](https://github.com/user-attachments/assets/b2489ba8-1172-46ff-b195-b51ebc54062b)

### 📁 SMB Communication Rule

   * __Port:__ 445
   * __Protocol:__ TCP
   * __Name:__ Allow SMB
   * __Description:__ Allows Server Message Block (SMB) protocol traffic for file and printer sharing between domain-joined computers, including access to shared folders and resources. Port 445 TCP.

📸 **Inbound SMB Communication Rule Settings**

![Inbound SMB Communication Rule Settings](https://github.com/user-attachments/assets/a1188d13-7aa1-41b4-8697-04b551afae1a)

### 🔐 Kerberos Authentication Rules

   * __Ports:__ 88
   * __Protocols:__ TCP and UDP (separate rules)
   * __Names:__ Allow Kerberos TCP, Allow Kerberos UDP
   * __Description:__ Enables Kerberos authentication protocol traffic over TCP for secure domain authentication and single sign-on functionality. Port 88 TCP & Port 88 UDP.

📸 **Inbound Kerberos Authentication Rules Settings**

![Inbound Kerberos TCP Authentication Rules Settings](https://github.com/user-attachments/assets/6375a3fe-e3d5-478d-80e5-ed5deabaaeb1)

![Inbound Kerberos UDP Authentication Rules Settings](https://github.com/user-attachments/assets/bf0b64c6-10f4-4142-95fb-18f7690b2335)

### 🌐 DNS Rules

   * __Ports:__ 53
   * __Protocols:__ TCP and UDP (separate rules)
   * __Names:__ Allow DNS TCP, Allow DNS UDP
   * __Description:__ Permits Domain Name System (DNS) resolution traffic over TCP to support name resolution services critical for Active Directory functionality. Port 53 TCP & Port 53 UDP.

📸 **Inbound DNS Rules Settings**

![Inbound DNS TCP Rules Settings](https://github.com/user-attachments/assets/b8a43db4-1620-4e03-9029-f9da23be516e)

![Inbound DNS UDP Rules Settings](https://github.com/user-attachments/assets/529be861-a6d4-4da0-86c1-f7dbe0efca4a)

### 🖥️ Remote Desktop Protocol (RDP) Rule

   * __Port:__ 3389
   * __Protocol:__ TCP
   * __Name:__ Allow RDP
   * __Description:__ Allows Remote Desktop Protocol (RDP) connections to enable remote management and administration of servers and clients within the domain. Port 3389 TCP.

📸 **Inbound Remote Desktop Protocol (RDP) Rule Settings**

![Inbound Remote Desktop Protocol (RDP) Rule Settings](https://github.com/user-attachments/assets/8f4ad6a9-8cde-498e-bbee-1ad85675cecb)

### 🏢 MeiVault Systems Rule

   * __Port:__ 80, 443
   * __Protocol:__ TCP
   * __Name:__ MeiVault Systems 
   * __Description:__ An internal secure protocol which provides strong online security for online communication. Port 80, 443 TCP.

📸 **Inbound MeiVault Systems Rule Settings**

![Inbound MeiVault Systems Rule Settings](https://github.com/user-attachments/assets/189e747b-67c7-4628-a6e4-be2914bbddb9)

### 🔬 Test Rule

   * __Port:__ 8080
   * __Protocol:__ TCP
   * __Name:__ Test Rule - Allow TCP 8080
   * __Description:__ Test rule for GPO troubleshooting. Port 8080.

📸 **Inbound Test Rule Settings**

![Inbound Test Rule Settings](https://github.com/user-attachments/assets/5bda4200-2b2d-40e7-b53d-9f3f23992e13)

### 🛠️ Windows Remote Management (WinRM) Rule

   * __Port:__ 5985
   * __Protocol:__ TCP
   * __Name:__ Allow WinRM
   * __Description:__ Enables Windows Remote Management (WinRM) traffic for remote PowerShell sessions and administration tasks between domain computers. Ports 5985 (HTTP) and 5986 (HTTPS) TCP.

📸 **Inbound Windows Remote Management (WinRM) Rule Settings**

![Inbound Windows Remote Management (WinRM) Rule Settings](https://github.com/user-attachments/assets/97e7ea4f-14b0-4b40-8c0c-f544b8ccddb9)

**Overview of all Newly Added Inbound Rules**

![Overview of all Newly Added Inbound Rules](https://github.com/user-attachments/assets/21c4416a-2e4f-44c6-b122-6e2b9f8135a1)

---

### ⛔ 3. Custom Firewall Outbound Firewall Blocking Rules

To enhance security, I created outbound rules to block potentially unsafe or legacy protocols.
  
  📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Windows Defender Firewall with Advanced Security > Outbound Rules`

### 🚫 Block TFTP

   * __Rule Type:__ Port
   * __Protocol:__ UDP
   * __Port:__ 69
   * __Action:__ Block the connection
   * __Profiles:__ Domain, Private, Public
   * __Name:__ Block TFTP
   * __Description:__ Blocks Trivial File Transfer Protocol (TFTP) traffic which uses unencrypted communications that could expose sensitive data. Port 69 UDP.

📸 **Custom Outbound Block TFTP Rule Settings**

![TFTP](https://github.com/user-attachments/assets/63271cd2-514f-49ee-82c8-3d9d15e66ba2)

### 🚫 Block Telnet

   * __Rule Type:__ Port
   * __Protocol:__ TCP
   * __Port:__ 23
   * __Action:__ Block the connection
   * __Profiles:__ Domain, Private, Public
   * __Name:__ Block Telnet
   * __Description:__ Blocks legacy Telnet protocol which transmits data in plaintext, creating security vulnerabilities through potential credential exposure. Port 23 TCP.

📸 **Custom Outbound Block Telnet Rule Settings**

![Block Telnet TCP Properties Window](https://github.com/user-attachments/assets/1a20f3ee-1915-413b-9c97-1ab22ccf61a2)

### 🚫 Block Unencrypted FTP

   * __Rule Type:__ Port
   * __Protocol:__ TCP
   * __Port:__ 21
   * __Action:__ Block the connection
   * __Profiles:__ Domain, Private, Public
   * __Name:__ Block Unencrypted FTP
   * __Description:__ Blocks standard File Transfer Protocol (FTP) connections that transmit credentials and data without encryption, posing significant security risks. Port 21 TCP.

📸 **Custom Outbound Block Unencrypted FTP Rule Settings**

![Block Unencrypted FTP TCP Properties Window](https://github.com/user-attachments/assets/eccccbc1-8567-4fcb-82b2-bcbdc851f90e)

### 🚫 Block SMBv1

   * __Rule Type:__ Custom
   * __Protocol:__ TCP
   * __Remote Port:__ 445
   * __Service Name:__ LanmanServer
   * __Action:__ Block the connection
   * __Profiles:__ Domain, Private, Public
   * __Name:__ Block SMBv1
   * __Description:__ Blocks Server Message Block version 1 (SMBv1) protocol traffic due to known security vulnerabilities including EternalBlue exploits. Legacy protocol that should be disabled in secure environments.

📸 **Custom Outbound Block SMBv1 Rule Settings**

![Block SMBv1 Properties Window](https://github.com/user-attachments/assets/be125be0-b9cb-4361-a8f7-ea5d72ef0f07)

### 🚫 Block Printer Sharing

   * __Rule Type:__ Predefined
   * __Profile:__ All (Domain, Private, Public)
   * __Predefined Set:__ File and Printer Sharing
   * __Action:__ Block the connection
   * __Name:__ Block Printer Sharing
   * __Description:__ Blocks printer sharing protocols that could be leveraged for unauthorized access or privilege escalation attacks in domain environments. Ports 515 TCP (LPR), 631 TCP/UDP (IPP).

📸 **Custom Outbound Block Printer Sharing Rule Settings**

📸 **File and Printer Sharing (SMB-Out) TCP**

![File and Printer Sharing (SMB-Out) TCP Properties Window](https://github.com/user-attachments/assets/e6086804-92e3-4b60-9ea9-2b0906d25b5c)

📸 **File and Printer Sharing (NB-Session-Out) TCP**

![File and Printer Sharing (NB-Session-Out) TCP Properties Window](https://github.com/user-attachments/assets/7c60ac09-20fc-42cc-bf8a-bdcab666fbd4)

📸 **File and Printer Sharing (NB-Name-Out) UDP**

![File and Printer Sharing (NB-Name-Out) UDP Properties Window](https://github.com/user-attachments/assets/7ebe16e8-a07f-4cb1-b0e8-cc2bd6a22768)

📸 **File and Printer Sharing (NB-Datagram-Out) UDP**

![File and Printer Sharing (NB-Datagram-Out) UDP Properties Window](https://github.com/user-attachments/assets/af826a70-1de5-4097-9766-3b12f82b7cf8)

📸 **File and Printer Sharing (LLMNR-UDP-Out)**

![File and Printer Sharing (LLMNR-UDP-Out) Properties Window](https://github.com/user-attachments/assets/3e78ceae-9d05-4a1b-9181-6f2c1d227271)

📸 **File and Printer Sharing (Echo Request - ICMPv6-Out) TCP**

![File and Printer Sharing (Echo Request - ICMPv6-Out) TCP Properties Window](https://github.com/user-attachments/assets/66d8aed8-a2cb-4403-864f-2d67a57f9832)

📸 **File and Printer Sharing (Echo Request - ICMPv4-Out) TCP**

![File and Printer Sharing (Echo Request - ICMPv4-Out) TCP Properties Window](https://github.com/user-attachments/assets/a48ada81-bfe6-4772-8eb3-5cefd60a5a36)

### 🛡️ Additional Security Rules

📸 __Block NetBIOS:__
  * Blocks outbound TCP ports 137–139

![Block NetBIOS Properties Window](https://github.com/user-attachments/assets/0e09951e-7489-4f47-990b-5216dcfc8b2a)

📸 __Block NetBIOS:__
  * Blocks outbound UDP ports 137–139

![Block NetBIOS UDP Properties Window](https://github.com/user-attachments/assets/dd80c7d5-e6c8-44ea-afef-844a12834ecf)

📸 __Block LLMNR:__
  * Blocks outbound UDP port 5355

![Block LLMNR Properties Window](https://github.com/user-attachments/assets/d938581f-bab3-4599-9d83-53c5b24ea9ef)

📸 __Block mDNS:__ 
  * Blocks outbound UDP port 5353

![Block mDNS Properties Window](https://github.com/user-attachments/assets/cdc0290f-ec43-41b8-a1b7-744d02721cc3)

📸 **Overview of all Newly Added Outbound Rules**

![Outbound rules](https://github.com/user-attachments/assets/81faafa6-8dd6-4eab-89b3-e931f0370630)

---

## 4. Configured the following profiles:

### 🌐 Domain Profile
- Firewall state: **On**
- Inbound connections: **Block**
- Outbound connections: **Allow**
- Logging: Enabled with custom path

📸 **Domain Profile Rules Configuration**

![Domain Profile Rules Configuration](https://github.com/user-attachments/assets/54036d18-ee4e-4e49-b7a9-a11a8b75230e)

![Domain Profile Rules Configuration 1](https://github.com/user-attachments/assets/747b1d4b-5e84-4f60-9fc8-bc9b794a5618)

### 🏠 Private Profile
- Firewall state: **On**
- Inbound connections: **Block**
- Outbound connections: **Allow**
- Logging: Enabled with custom path

📸 **Private Profile Rules Configuration**

![Private Profile Rules Configuration](https://github.com/user-attachments/assets/06597c1a-dec9-4d47-9965-11425a11c2fc)

![Private Profile Rules Configuration 1](https://github.com/user-attachments/assets/fa65365e-2fdf-49ba-86d3-db43eb7c9196)

### 🌍 Public Profile
- Firewall state: **On**
- Inbound connections: **Block all**
- Outbound: **Allow** (with stricter rules)
- Prevent local exceptions

📸 **Public Profile Rules Configuration**

![Public Profile Rules Configuration](https://github.com/user-attachments/assets/ae14e952-7034-40b7-8cf8-d6b713cfbd42)

![Public Profile Rules Configuration 1](https://github.com/user-attachments/assets/97864fab-a9dd-42c6-ae3e-4686a8c601b0)

![Public Profile Rules Configuration 2](https://github.com/user-attachments/assets/33d078a5-aaf2-4f0b-baf8-cf0d4e00bba4)

---

## 🚀 4. Applying and Testing the Policy

I closed the Group Policy Management Editor
- On each client computer, I ran the following command:

  `gpupdate /force`
  
- Then I restarted the clients to ensure the policy was fully applied
- I tested connectivity between the domain controller and the clients

📸 **Command Line Showing `gpupdate` Output**  

![Command Prompt Showing Successful gpupdate /force Output](https://github.com/user-attachments/assets/11e307c2-39f1-4990-95b9-ef3c41f5bb20)

---

### 🧪 5. Testing Firewall Behavior

- On a client computer, I opened Command Prompt as administrator and ran:

  `gpresult /r`
  
- To verify firewall rules were active, I ran:  

  `netsh advfirewall show allprofiles`

📸 **Command Line Showing `gpresult` Output**  

![gpresult /r](https://github.com/user-attachments/assets/63cea284-b4c9-4147-bbfe-4ca5dfd304a8)

📸 **Profile Settings Verification On Clients**

![netsh advfirewall show allprofiles 1 Windows Firewall Conficuration](https://github.com/user-attachments/assets/39749568-d626-44a0-80c0-9aad2a3fd6bd)

![netsh advfirewall show allprofiles 1 Windows Firewall Conficuration 2](https://github.com/user-attachments/assets/fdc7bc4c-c3f1-4a01-8e38-dc59680d18c6)

📸 **Failed Ping to Domain**

![Failed Connection Result](https://github.com/user-attachments/assets/285924f9-4d82-4f2b-a02e-daf0f8293b8d)

📸 **Successful Ping to Domain**

![Ping hughdomain local Success](https://github.com/user-attachments/assets/cc2a37c6-0efc-426f-af0f-9634692b589c)

---

## 🛠️ 6. Troubleshooting Tips

- Temporarily disabled the firewall to determine if it was blocking connectivity
- Used `rsop.msc` to confirm policy inheritance on client machines
- Checked **Event Viewer** for related errors
- Ran:
  `netsh advfirewall monitor show firewall rule name=all`
- To see all applied firewall rules and check for any misconfiguration

📸 **Resultant Windows Firewall Settings Policy Results**

![Resultant Windows Firewall Settings Policy](https://github.com/user-attachments/assets/62db8287-fd22-4fef-9159-6f3d8485f02f)

📸 **Event Viewer Logs for Firewall**

![Event Viewer Logs for Firewall](https://github.com/user-attachments/assets/fbe59af8-3d8e-4fb0-bcd6-7c5278213823)

---

## 🗂️ 7. Screenshot Storage

All images related to this section are stored in:  
📂 [`06-Screenshots/Windows-Firewall/domain-profile-config.png`]()
