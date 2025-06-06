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

![Custom Outbound Block TFTP Rule Settings](https://github.com/user-attachments/assets/f8cfbbc6-19e8-4c18-a869-9fb2f64d332c)

### 🚫 Block Telnet

   * __Rule Type:__ Port
   * __Protocol:__ TCP
   * __Port:__ 23
   * __Action:__ Block the connection
   * __Profiles:__ Domain, Private, Public
   * __Name:__ Block Telnet
   * __Description:__ Blocks legacy Telnet protocol which transmits data in plaintext, creating security vulnerabilities through potential credential exposure. Port 23 TCP.

📸 **Custom Outbound Block Telnet Rule Settings**

![Custom Outbound Block Telnet Rule Settings](https://github.com/user-attachments/assets/95c9a4f9-c6c4-4b7f-989b-14c56dbf8173)

### 🚫 Block Unencrypted FTP

   * __Rule Type:__ Port
   * __Protocol:__ TCP
   * __Port:__ 21
   * __Action:__ Block the connection
   * __Profiles:__ Domain, Private, Public
   * __Name:__ Block Unencrypted FTP
   * __Description:__ Blocks standard File Transfer Protocol (FTP) connections that transmit credentials and data without encryption, posing significant security risks. Port 21 TCP.

📸 **Custom Outbound Block Unencrypted FTP Rule Settings**

![Custom Outbound Block Unencrypted FTP Rule Settings](https://github.com/user-attachments/assets/5d12a6ac-606f-4c6b-9d22-761dcfc8c32a)

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

![Custom Outbound Block SMBv1 Rule Settings](https://github.com/user-attachments/assets/f5465f91-2ef0-4bc7-9a39-f00a9e18f49d)

### 🚫 Block Printer Sharing

   * __Rule Type:__ Predefined
   * __Profile:__ All (Domain, Private, Public)
   * __Predefined Set:__ File and Printer Sharing
   * __Action:__ Block the connection
   * __Name:__ Block Printer Sharing
   * __Description:__ Blocks printer sharing protocols that could be leveraged for unauthorized access or privilege escalation attacks in domain environments. Ports 515 TCP (LPR), 631 TCP/UDP (IPP).

📸 **Custom Outbound Block Printer Sharing Rule Settings**

📸 **File and Printer Sharing (SMB-Out) TCP**

![File and Printer Sharing (SMB-Out) TCP](https://github.com/user-attachments/assets/1c70110f-2c57-45ac-946c-522c79c011c3)

📸 **File and Printer Sharing (NB-Session-Out) TCP**

![File and Printer Sharing (NB-Session-Out) TCP](https://github.com/user-attachments/assets/dbd5f3dd-e6ff-4acd-8d15-87ebc7025611)

📸 **File and Printer Sharing (NB-Name-Out) UDP**

![File and Printer Sharing (NB-Name-Out) UDP](https://github.com/user-attachments/assets/21488d00-c328-4431-92ca-4696a68f4ae6)

📸 **File and Printer Sharing (NB-Datagram-Out) UDP**

![File and Printer Sharing (NB-Datagram-Out) UDP](https://github.com/user-attachments/assets/54c98a48-d1b2-4621-bf3c-63a033fa560e)

📸 **File and Printer Sharing (LLMNR-UDP-Out)**

![File and Printer Sharing (LLMNR-UDP-Out)](https://github.com/user-attachments/assets/57703a5a-a9f6-4942-9771-2ea22af5fedf)

📸 **File and Printer Sharing (Echo Request - ICMPv6-Out) TCP**

![File and Printer Sharing (Echo Request - ICMPv6-Out) TCP](https://github.com/user-attachments/assets/db985adb-88db-4558-a155-2169665a7648)

📸 **File and Printer Sharing (Echo Request - ICMPv4-Out) TCP**

![File and Printer Sharing (Echo Request - ICMPv4-Out) TCP](https://github.com/user-attachments/assets/2a56574b-9f86-4437-9fe0-c658c7bed502)

### 🛡️ Additional Security Rules

📸 __Block NetBIOS:__
  * Blocks outbound TCP ports 137–139

![Block NetBIOS TCP Properties Window](https://github.com/user-attachments/assets/890f9127-f025-46a4-8198-1e23528d7885)

📸 __Block NetBIOS:__
  * Blocks outbound UDP ports 137–139

![Block NetBIOS UDP Properties Window](https://github.com/user-attachments/assets/cf23baf5-debf-4197-be2e-d941426c89d3)

📸 __Block LLMNR:__
  * Blocks outbound UDP port 5355

![Block LLMNR Properties Window](https://github.com/user-attachments/assets/f3b47627-e097-4d79-b2d6-b26b187c7f4b)

📸 __Block mDNS:__ 
  * Blocks outbound UDP port 5353

![Block mDNS Properties Window](https://github.com/user-attachments/assets/c75d47b6-cd07-4919-abdc-676c7c154768)

📸 **Overview of all Newly Added Outbound Rules**

![Overview of all Newly Added Outbound Rules](https://github.com/user-attachments/assets/9c6a6e81-02c9-4e34-a36f-c28340117146)

---

## 4. Configured the following profiles:

### 🌐 Domain Profile
- Firewall state: **On**
- Inbound connections: **Block**
- Outbound connections: **Allow**
- Logging: Enabled with custom path

📸 **Domain Profile Rules Configuration**

![Domain Profile Rules Configuration](https://github.com/user-attachments/assets/056ff21e-773e-4847-bfe2-28fb8ec350f5)

![Domain Profile Rules Configuration 1](https://github.com/user-attachments/assets/b579ef5c-15c7-4cab-83c6-997449aa80ef)

### 🏠 Private Profile
- Firewall state: **On**
- Inbound connections: **Block**
- Outbound connections: **Allow**
- Logging: Enabled with custom path

📸 **Private Profile Rules Configuration**

![Private Profile Rules Configuration](https://github.com/user-attachments/assets/1070ebdd-23de-4e75-883e-5ff4c39f654e)

![Private Profile Rules Configuration 1](https://github.com/user-attachments/assets/ce31ef2a-1c5c-4c24-a7db-d7aafa4a1af7)

### 🌍 Public Profile
- Firewall state: **On**
- Inbound connections: **Block all**
- Outbound: **Allow** (with stricter rules)
- Prevent local exceptions

📸 **Public Profile Rules Configuration**

![Public Profile Rules Configuration](https://github.com/user-attachments/assets/25568ce7-7a26-4a94-87d6-598113abd37d)

![Public Profile Rules Configuration 1](https://github.com/user-attachments/assets/bf3e0e97-88a0-4ba8-9a91-bed7c8f150e1)

![Public Profile Rules Configuration 2](https://github.com/user-attachments/assets/c6ebecab-4aa6-4536-9652-2d7c574f5a01)

---

## 🚀 4. Applying and Testing the Policy

I closed the Group Policy Management Editor
- On each client computer, I ran the following command:

  `gpupdate /force`
  
- Then I restarted the clients to ensure the policy was fully applied
- I tested connectivity between the domain controller and the clients

📸 **Command Line Showing `gpupdate` Output for `AD-WIN11-01**  

![Command Prompt Showing Successful gpupdate /force Output](https://github.com/user-attachments/assets/11e307c2-39f1-4990-95b9-ef3c41f5bb20)

📸 **Command Line Showing `gpupdate` Output for `AD-WIN11-02**  

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
