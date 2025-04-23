# 🔥 Windows Firewall Group Policy Configuration
This document outlines how I configured **inbound and outbound firewall rules via Group Policy** to ensure that essential Active Directory services are permitted while blocking insecure or unnecessary protocols.

---

## 🏷️ 1. GPO Name
- **GPO Name:** Windows Firewall Policy  
- **Linked To:** Domain

📸 **Screenshot:**  
![Windows Firewall Linked to Domain](https://github.com/user-attachments/assets/be8dc087-2f18-49aa-9306-572b0a164b19)

---

## 🔧 2. Inbound Firewall Rule Configuration
I created multiple inbound rules for Active Directory communication services using:

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

### 🖥️ MeiVault Systems Rule

   * __Port:__ 80, 443

   * __Protocol:__ TCP

   * __Name:__ MeiVault Systems 

   * __Description:__ An internal secure protocol which provides strong online security for online communication. Port 80, 443 TCP.

📸 **Screenshot:**
![Allow MeiVault Systems](https://github.com/user-attachments/assets/8f1dcb41-63df-4454-8c12-3ff60b00e81d)

### 🛠️ Test Rule

   * __Port:__ 8080

   * __Protocol:__ TCP

   * __Name:__ Test Rule - Allow TCP 8080

   * __Description:__ Test rule for GPO troubleshooting.Port 8080.

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

### ⛔ 3. Outbound Firewall Blocking Rules

To enhance security, I created outbound rules to block potentially unsafe or legacy protocols.

📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Windows Defender Firewall with Advanced Security > Outbound Rules`

### 🚫 Block TFTP

   * __Rule Type:__ Port

   * __Protocol:__ UDP

   * __Port: 69

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

   * __Block NetBIOS:__ Block outbound TCP/UDP ports 137–139
![Block NetBIOS UDP Properties Window](https://github.com/user-attachments/assets/dd80c7d5-e6c8-44ea-afef-844a12834ecf)

![Block NetBIOS Properties Window](https://github.com/user-attachments/assets/0e09951e-7489-4f47-990b-5216dcfc8b2a)

   * __Block LLMNR:__ Block outbound UDP port 5355
![Block LLMNR Properties Window](https://github.com/user-attachments/assets/d938581f-bab3-4599-9d83-53c5b24ea9ef)

   * __Block mDNS:__ Block outbound UDP port 5353
![Block mDNS Properties Window](https://github.com/user-attachments/assets/cdc0290f-ec43-41b8-a1b7-744d02721cc3)

📸 **Screenshot:**
![Outbound rules](https://github.com/user-attachments/assets/81faafa6-8dd6-4eab-89b3-e931f0370630)

## 4. Configured the following profiles:

### 🌐 Domain Profile
- Firewall state: **On**
- Inbound connections: **Block**
- Outbound connections: **Allow**
- Logging: Enabled with custom path

### 🏠 Private Profile
- Same settings as Domain profile

### 🌍 Public Profile
- Firewall state: **On**
- Inbound connections: **Block all**
- Outbound: **Allow** (with stricter rules)
- Prevent local exceptions

📸 **Screenshot:**
![Domain Showing Configured Rules](https://github.com/user-attachments/assets/c6c0d172-a761-4623-9585-b4e1c3847934)

![Domain Showing Configured Rules 1](https://github.com/user-attachments/assets/0fc7037e-47c4-4fff-9705-e6259b832be0)

![Private Showing Configured Rules](https://github.com/user-attachments/assets/e5f44e85-cfbc-4eb3-b668-fc228c980a80)

![Private Showing Configured Rules 1](https://github.com/user-attachments/assets/2ba6fedd-7209-4932-81c4-8d868858f9ad)

![Public Showing Configured Rules](https://github.com/user-attachments/assets/d480cd8e-06ce-45a1-ac3e-394ac041fde1)

![Public Showing Configured Rules 1](https://github.com/user-attachments/assets/137ff7ad-faba-4113-b253-4d93e6dffddd)

![Public Showing Configured Rules 2](https://github.com/user-attachments/assets/d68f4012-7b05-4ac8-a36f-c81ff109b9fd)

---

## 📋 5. Custom Firewall Rules
Created custom inbound rules to allow:
- **Remote Desktop Protocol (RDP)** for Domain Admins
- **File and Printer Sharing**
- Blocked  **SMBv1** services
- Blocked **Unencrypted FTP** services
- Blocked **TFTP** services
- Blocked **Telnet** services

Steps:
1. Navigated to `Inbound Rules` > New Rule  
2. Chose Port or Program-based rules  
3. Configured action as **Block** or **Allow**, with appropriate scope and user/group restrictions  
4. Named and saved each rule

📸 **Screenshot:**  
![Block LLMNR Properties Window](https://github.com/user-attachments/assets/82fbde88-b642-412b-b7b7-f372320835f2)

![Block mDNS Properties Window](https://github.com/user-attachments/assets/36395d59-8b5b-4121-93db-07282e44c2ca)

![Block NetBIOS Properties Window](https://github.com/user-attachments/assets/cbd74013-ee6d-4d04-bbe1-a0f520822f31)

![Block NetBIOS UDP Properties Window](https://github.com/user-attachments/assets/7d718616-60f1-449f-9ad7-981fdb668f5b)

![Block SMBv1 Properties Window](https://github.com/user-attachments/assets/0d48cb8e-4bb9-4f6f-a4a7-d7c45d20aacd)

![Block Telnet TCP Properties Window](https://github.com/user-attachments/assets/fd56330f-ba13-4604-9f62-282d3776c4a8)

Block TFTP Screenshot Missing

![Block Unencrypted FTP TCP Properties Window](https://github.com/user-attachments/assets/13037d1f-dc37-4e80-8384-e380148d281c)

![File and Printer Sharing (Echo Request - ICMPv4-Out) TCP Properties Window](https://github.com/user-attachments/assets/f7216e57-9313-412a-92ef-e18dfe08e43b)

![File and Printer Sharing (Echo Request - ICMPv6-Out) TCP Properties Window](https://github.com/user-attachments/assets/a451e0d7-3261-4631-ba72-a5f0b2b52be6)

![File and Printer Sharing (LLMNR-UDP-Out) Properties Window](https://github.com/user-attachments/assets/a410002b-cc9c-4da1-baf2-a1447f0977bd)

![File and Printer Sharing (NB-Datagram-Out) UDP Properties Window](https://github.com/user-attachments/assets/476129e7-a558-4e26-8e80-008a72de3008)

![File and Printer Sharing (NB-Name-Out) UDP Properties Window](https://github.com/user-attachments/assets/b3e92182-7557-4e2a-b82c-4410569a55f6)

![File and Printer Sharing (NB-Session-Out) TCP Properties Window](https://github.com/user-attachments/assets/e01f8323-9d04-4709-9e13-1b86d592a4bd)

![File and Printer Sharing (SMB-Out) TCP Properties Window](https://github.com/user-attachments/assets/8cc5e85e-6b1c-4ea9-82d2-03e2b5615b0a)

---

## 🧪 4. Testing Firewall Behavior
- Verified that only allowed services could be accessed remotely.
- Confirmed that non-domain machines could not connect to domain resources unless allowed.
- Used `netsh advfirewall show allprofiles` to verify profile settings on clients.

📸 **Screenshot:**  
![netsh advfirewall show allprofiles 1 Windows Firewall Conficuration](https://github.com/user-attachments/assets/39749568-d626-44a0-80c0-9aad2a3fd6bd)

![netsh advfirewall show allprofiles 1 Windows Firewall Conficuration 2](https://github.com/user-attachments/assets/fdc7bc4c-c3f1-4a01-8e38-dc59680d18c6)

![Ping hughdomain local failure](https://github.com/user-attachments/assets/643a888e-615a-4304-a133-847501a45a80)

![Ping hughdomain local Success](https://github.com/user-attachments/assets/cc2a37c6-0efc-426f-af0f-9634692b589c)

---

## 🗂️ 5. Screenshot Storage

All images related to this section are stored in:  
📂 [`06-Screenshots/Windows-Firewall/domain-profile-config.png`]()
