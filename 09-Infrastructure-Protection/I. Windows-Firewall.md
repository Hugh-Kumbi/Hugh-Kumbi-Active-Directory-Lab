# 🔥 Windows Firewall Group Policy Configuration
This document outlines how I configured **inbound and outbound firewall rules via Group Policy** to ensure that essential Active Directory services are permitted while blocking insecure or unnecessary protocols.

---

## 🏷️ 1. GPO Name
- **GPO Name:** Windows Firewall Settings Policy  
- **Linked To:** Domain

📸 **Screenshot:**  
![Windows Firewall Linked to Domain](https://github.com/user-attachments/assets/be8dc087-2f18-49aa-9306-572b0a164b19)

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

📸 **Screenshot:**
![Allow LDAP Window](https://github.com/user-attachments/assets/6c9d0837-9a1f-487c-97c2-5c42a0e3977d)

### 📁 SMB Communication Rule

   * __Port:__ 445

   * __Protocol:__ TCP

   * __Name:__ Allow SMB

   * __Description:__ Allows Server Message Block (SMB) protocol traffic for file and printer sharing between domain-joined computers, including access to shared folders and resources. Port 445 TCP.

📸 **Screenshot:**
![Allow SMB](https://github.com/user-attachments/assets/e9dc0cd5-999b-4883-9133-61c5677f84fb)

### 🔐 Kerberos Authentication Rules

   * __Ports:__ 88

   * __Protocols:__ TCP and UDP (separate rules)

   * __Names:__ Allow Kerberos TCP, Allow Kerberos UDP

   * __Description:__ Enables Kerberos authentication protocol traffic over TCP for secure domain authentication and single sign-on functionality. Port 88 TCP & Port 88 UDP.

📸 **Screenshot:**
![Allow Kerberos TCP Window](https://github.com/user-attachments/assets/134486eb-f73c-48e3-a3c3-18f5fdabba41)

![Allow Kerberos UDP Window](https://github.com/user-attachments/assets/907f5438-8cb1-4f18-a576-906573bf3104)

### 🌐 DNS Rules

   * __Ports:__ 53

   * __Protocols:__ TCP and UDP (separate rules)

   * __Names:__ Allow DNS TCP, Allow DNS UDP

   * __Description:__ Permits Domain Name System (DNS) resolution traffic over TCP to support name resolution services critical for Active Directory functionality. Port 53 TCP & Port 53 UDP.

📸 **Screenshot:**
![Allow DNS TCP Properties Window](https://github.com/user-attachments/assets/88071662-addc-4a6b-bc32-ea78e360901e)

![Allow DNS UDP Properties Window](https://github.com/user-attachments/assets/256bf0ef-d613-46fa-b93c-4b8ee9fa6d3f)

### 🖥️ Remote Desktop Protocol (RDP) Rule

   * __Port:__ 3389

   * __Protocol:__ TCP

   * __Name:__ Allow RDP

   * __Description:__ Allows Remote Desktop Protocol (RDP) connections to enable remote management and administration of servers and clients within the domain. Port 3389 TCP.

📸 **Screenshot:**
![Allow RDP Window](https://github.com/user-attachments/assets/88a984ce-c202-4905-902a-e53fd1ed4fe1)

### 🏢 MeiVault Systems Rule

   * __Port:__ 80, 443

   * __Protocol:__ TCP

   * __Name:__ MeiVault Systems 

   * __Description:__ An internal secure protocol which provides strong online security for online communication. Port 80, 443 TCP.

📸 **Screenshot:**
![Allow MeiVault Systems](https://github.com/user-attachments/assets/8f1dcb41-63df-4454-8c12-3ff60b00e81d)

### 🔬 Test Rule

   * __Port:__ 8080

   * __Protocol:__ TCP

   * __Name:__ Test Rule - Allow TCP 8080

   * __Description:__ Test rule for GPO troubleshooting. Port 8080.

📸 **Screenshot:**
![Test Rule - Allow TCP 8080](https://github.com/user-attachments/assets/9cbae4fa-a748-41b3-bdd3-736ab1722edd)

### 🛠️ Windows Remote Management (WinRM) Rule

   * __Port:__ 5985

   * __Protocol:__ TCP

   * __Name:__ Allow WinRM

   * __Description:__ Enables Windows Remote Management (WinRM) traffic for remote PowerShell sessions and administration tasks between domain computers. Ports 5985 (HTTP) and 5986 (HTTPS) TCP.

📸 **Screenshot:**
![Allow WinRM Window](https://github.com/user-attachments/assets/80658456-40a4-490b-906d-6e9c2b2b87dc)

**Overview of all Newly Added Inbound Rules**
![Inbound Rules Overview](https://github.com/user-attachments/assets/8553cc9b-fd15-45f3-b122-7ca9832d52b1)

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

📸 **Screenshot:**
![TFTP](https://github.com/user-attachments/assets/63271cd2-514f-49ee-82c8-3d9d15e66ba2)

### 🚫 Block Telnet

   * __Rule Type:__ Port

   * __Protocol:__ TCP

   * __Port:__ 23

   * __Action:__ Block the connection

   * __Profiles:__ Domain, Private, Public

   * __Name:__ Block Telnet

   * __Description:__ Blocks legacy Telnet protocol which transmits data in plaintext, creating security vulnerabilities through potential credential exposure. Port 23 TCP.

📸 **Screenshot:**
![Block Telnet TCP Properties Window](https://github.com/user-attachments/assets/1a20f3ee-1915-413b-9c97-1ab22ccf61a2)

### 🚫 Block Unencrypted FTP

   * __Rule Type:__ Port

   * __Protocol:__ TCP

   * __Port:__ 21

   * __Action:__ Block the connection

   * __Profiles:__ Domain, Private, Public

   * __Name:__ Block Unencrypted FTP

   * __Description:__ Blocks standard File Transfer Protocol (FTP) connections that transmit credentials and data without encryption, posing significant security risks. Port 21 TCP.

📸 **Screenshot:**
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

📸 **Screenshot:**
![Block SMBv1 Properties Window](https://github.com/user-attachments/assets/be125be0-b9cb-4361-a8f7-ea5d72ef0f07)

### 🚫 Block Printer Sharing

   * __Rule Type:__ Predefined

   * __Profile:__ All (Domain, Private, Public)

   * __Predefined Set:__ File and Printer Sharing

   * __Action:__ Block the connection

   * __Name:__ Block Printer Sharing

   * __Description:__ Blocks printer sharing protocols that could be leveraged for unauthorized access or privilege escalation attacks in domain environments. Ports 515 TCP (LPR), 631 TCP/UDP (IPP).

📸 **Screenshots:**

**File and Printer Sharing (SMB-Out) TCP**
![File and Printer Sharing (SMB-Out) TCP Properties Window](https://github.com/user-attachments/assets/e6086804-92e3-4b60-9ea9-2b0906d25b5c)

**File and Printer Sharing (NB-Session-Out) TCP**
![File and Printer Sharing (NB-Session-Out) TCP Properties Window](https://github.com/user-attachments/assets/7c60ac09-20fc-42cc-bf8a-bdcab666fbd4)

**File and Printer Sharing (NB-Name-Out) UDP**
![File and Printer Sharing (NB-Name-Out) UDP Properties Window](https://github.com/user-attachments/assets/7ebe16e8-a07f-4cb1-b0e8-cc2bd6a22768)

**File and Printer Sharing (NB-Datagram-Out) UDP**
![File and Printer Sharing (NB-Datagram-Out) UDP Properties Window](https://github.com/user-attachments/assets/af826a70-1de5-4097-9766-3b12f82b7cf8)

**File and Printer Sharing (LLMNR-UDP-Out)**
![File and Printer Sharing (LLMNR-UDP-Out) Properties Window](https://github.com/user-attachments/assets/3e78ceae-9d05-4a1b-9181-6f2c1d227271)

**File and Printer Sharing (Echo Request - ICMPv6-Out) TCP**
![File and Printer Sharing (Echo Request - ICMPv6-Out) TCP Properties Window](https://github.com/user-attachments/assets/66d8aed8-a2cb-4403-864f-2d67a57f9832)

**File and Printer Sharing (Echo Request - ICMPv4-Out) TCP**
![File and Printer Sharing (Echo Request - ICMPv4-Out) TCP Properties Window](https://github.com/user-attachments/assets/a48ada81-bfe6-4772-8eb3-5cefd60a5a36)

### 🛡️ Additional Security Rules

__Block NetBIOS:__
  * Blocks outbound TCP ports 137–139
![Block NetBIOS Properties Window](https://github.com/user-attachments/assets/0e09951e-7489-4f47-990b-5216dcfc8b2a)

__Block NetBIOS:__
  * Blocks outbound UDP ports 137–139
![Block NetBIOS UDP Properties Window](https://github.com/user-attachments/assets/dd80c7d5-e6c8-44ea-afef-844a12834ecf)

__Block LLMNR:__
  * Blocks outbound UDP port 5355
![Block LLMNR Properties Window](https://github.com/user-attachments/assets/d938581f-bab3-4599-9d83-53c5b24ea9ef)

__Block mDNS:__ 
  * Blocks outbound UDP port 5353
![Block mDNS Properties Window](https://github.com/user-attachments/assets/cdc0290f-ec43-41b8-a1b7-744d02721cc3)

📸 **Screenshot:**
![Outbound rules](https://github.com/user-attachments/assets/81faafa6-8dd6-4eab-89b3-e931f0370630)

## 4. Configured the following profiles:

### 🌐 Domain Profile
- Firewall state: **On**
- Inbound connections: **Block**
- Outbound connections: **Allow**
- Logging: Enabled with custom path

📸 **Screenshot:**
![Domain Showing Configured Rules](https://github.com/user-attachments/assets/c6c0d172-a761-4623-9585-b4e1c3847934)

![Domain Showing Configured Rules 1](https://github.com/user-attachments/assets/0fc7037e-47c4-4fff-9705-e6259b832be0)

### 🏠 Private Profile
- Firewall state: **On**
- Inbound connections: **Block**
- Outbound connections: **Allow**
- Logging: Enabled with custom path

📸 **Screenshot:**
![Private Showing Configured Rules](https://github.com/user-attachments/assets/e5f44e85-cfbc-4eb3-b668-fc228c980a80)

![Private Showing Configured Rules 1](https://github.com/user-attachments/assets/2ba6fedd-7209-4932-81c4-8d868858f9ad)

### 🌍 Public Profile
- Firewall state: **On**
- Inbound connections: **Block all**
- Outbound: **Allow** (with stricter rules)
- Prevent local exceptions

📸 **Screenshot:**
![Public Showing Configured Rules](https://github.com/user-attachments/assets/d480cd8e-06ce-45a1-ac3e-394ac041fde1)

![Public Showing Configured Rules 1](https://github.com/user-attachments/assets/137ff7ad-faba-4113-b253-4d93e6dffddd)

![Public Showing Configured Rules 2](https://github.com/user-attachments/assets/d68f4012-7b05-4ac8-a36f-c81ff109b9fd)

---

## 🚀 4. Applying and Testing the Policy
I closed the Group Policy Management Editor

- On each client computer, I ran the following command:

  `gpupdate /force`

- Then I restarted the clients to ensure the policy was fully applied

- I tested connectivity between the domain controller and the clients

📸 **Screenshot:**  
![Command Prompt Showing Successful gpupdate /force Output](https://github.com/user-attachments/assets/11e307c2-39f1-4990-95b9-ef3c41f5bb20)


### 🧪 5. Testing Firewall Behavior
- On a client computer, I opened Command Prompt as administrator and ran:

  `gpresult /r`

- To verify firewall rules were active, I ran:
  
  `netsh advfirewall show allprofiles`

📸 **Screenshot:**  
![gpresult /r](https://github.com/user-attachments/assets/63cea284-b4c9-4147-bbfe-4ca5dfd304a8)

**Profile Settings Verification On Clients**
![netsh advfirewall show allprofiles 1 Windows Firewall Conficuration](https://github.com/user-attachments/assets/39749568-d626-44a0-80c0-9aad2a3fd6bd)

![netsh advfirewall show allprofiles 1 Windows Firewall Conficuration 2](https://github.com/user-attachments/assets/fdc7bc4c-c3f1-4a01-8e38-dc59680d18c6)

**Failed Ping to Domain**
![Ping hughdomain local failure](https://github.com/user-attachments/assets/643a888e-615a-4304-a133-847501a45a80)

**Successful Ping to Domain**
![Ping hughdomain local Success](https://github.com/user-attachments/assets/cc2a37c6-0efc-426f-af0f-9634692b589c)

---

## 🛠️ 6. Troubleshooting Tips

- Temporarily disabled the firewall to determine if it was blocking connectivity

- Used rsop.msc to confirm policy inheritance on client machines

- Checked **Event Viewer** for related errors

- Ran:

  `netsh advfirewall monitor show firewall rule name=all`

- To see all applied firewall rules and check for any misconfiguration

📸 **Screenshot:**
  * **`rsop.msc` Results**
![Resultant Windows Firewall Settings Policy](https://github.com/user-attachments/assets/62db8287-fd22-4fef-9159-6f3d8485f02f)

**Event Viewer Logs for Firewall**
![Event Viewer Logs for Firewall](https://github.com/user-attachments/assets/fbe59af8-3d8e-4fb0-bcd6-7c5278213823)

---

## 🗂️ 7. Screenshot Storage

All images related to this section are stored in:  
📂 [`06-Screenshots/Windows-Firewall/domain-profile-config.png`]()
