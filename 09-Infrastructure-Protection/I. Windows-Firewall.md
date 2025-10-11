# 🔥 Windows Firewall Group Policy Configuration

This document outlines how I configured **inbound and outbound firewall rules via Group Policy** to ensure that essential Active Directory services are permitted while blocking insecure or unnecessary protocols.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Windows Firewall Settings Policy  
- **Linked To:** hughdomain.local (domain root)

📸 **Group Policy Management Console Showing the Windows Firewall Settings Policy Linked to Domain**  

![Group Policy Management Console Showing the Windows Firewall Settings Policy Linked to Domain](https://github.com/user-attachments/assets/f3eb7bba-5e3e-4e5f-a9f0-8c4be833be03)

---

## 🔧 2. Inbound Firewall Rule Configuration

I created multiple **inbound rules** for Active Directory communication services using:

📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Windows Defender Firewall with Advanced Security > Inbound Rules`

### 🌐 Allow DNS Rules

   * __Rule Type:__ Port
   * __Protocols:__ TCP and UDP (separate rules)
   * __Ports:__ 53
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Names:__ Allow DNS TCP, Allow DNS UDP
   * __Description:__ Permits Domain Name System (DNS) resolution traffic over TCP to support name resolution services critical for Active Directory functionality. Port 53 TCP & Port 53 UDP.

📸 **Inbound DNS Rules Settings**

![Inbound DNS Allow DNS TCP Rule Settings](https://github.com/user-attachments/assets/e6805d24-96db-45f3-b3ee-9879033e3273)

![Inbound DNS Allow DNS UDP Rule Settings](https://github.com/user-attachments/assets/89701866-d1b3-4e5c-8f4b-64e28df1668c)

### 🔐 Allow LDAP Rule

   * __Rule Type:__ Port
   * __Protocol:__ TCP
   * __Port:__ 389
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Name:__ Allow LDAP TCP
   * __Description:__ Allows LDAP authentication for Active Directory

📸 **Inbound LDAP Rule Settings**

![Inbound LDAP TCP Rule Settings](https://github.com/user-attachments/assets/0f563d4c-c28c-46c5-ad45-c18c465333cc)

### 🛡️ Allow LDAP SSL Rule

   * __Rule Type:__ Port
   * __Protocol:__ TCP
   * __Port:__ 636
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Name:__ Allow LDAP SSL TCP
   * __Description:__ Allows secure LDAP authentication

📸 **Inbound LDAP SSL Rule Settings**

![Inbound LDAP SSL TCP Rule Settings](https://github.com/user-attachments/assets/04937554-9c6f-4d33-8a1d-f2c605a02c67)

### 🌍 Allow Global Catalog Rule

   * __Rule Type:__ Port
   * __Protocol:__ TCP
   * __Port:__ 3268
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Name:__ Allow Global Catalog TCP
   * __Description:__ Allows Global Catalog queries

📸 **Inbound Global Catalog Rule Settings**

![Inbound Global Catalog Rule Settings](https://github.com/user-attachments/assets/ffdf9d9a-bc23-4705-a13e-d28adaba2ca5)

### ⚙️ Allow Global Catalog SSL Rule

   * __Rule Type:__ Port
   * __Protocol:__ TCP
   * __Port:__ 3269
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Name:__ Allow Global Catalog SSL TCP
   * __Description:__ Allows secure Global Catalog queries

📸 **Inbound LDAP Rule Settings**

![Inbound Global Catalog SSL TCP Rule Settings](https://github.com/user-attachments/assets/323ad0ed-481a-42f0-b229-4035aa775f7e)

### 🔑 Allow Kerberos Authentication Rules

   * __Rule Type:__ Port
   * __Protocols:__ TCP and UDP (separate rules)
   * __Ports:__ 88
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Names:__ Allow Kerberos TCP, Allow Kerberos UDP
   * __Description:__ Allows Kerberos authentication over TCP and UDP. Port 88 TCP & Port 88 UDP.

📸 **Inbound Kerberos Authentication Rules Settings**

![Inbound Kerberos TCP Rule Settings](https://github.com/user-attachments/assets/17c43258-a386-495f-b62b-ae34556b7a5c)

![Inbound Kerberos UDP Rule Settings](https://github.com/user-attachments/assets/182933c2-4ae8-4eb6-870f-e5eaf6143434)

### 🔄 Allow Kerberos Password Change

   * __Rule Type:__ Port
   * __Protocols:__ TCP
   * __Ports:__ 464
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Names:__ Allow Kerberos Password Change TCP
   * __Description:__ Allows Kerberos password changes.

📸 **Inbound Kerberos Password Change Rules Settings**

![Inbound Kerberos Password Change TCP Rule Settings](https://github.com/user-attachments/assets/e9056a05-9cb9-4b73-9c59-d42fe3272674)

### 📁 Allow SMB (File Sharing) Rule

   * __Rule Type:__ Port
   * __Protocols:__ TCP
   * __Port:__ 445
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Name:__ Allow SMB TCP
   * __Description:__ Allows SMB (File Sharing).

📸 **Inbound SMB Communication Rule Settings**

![Inbound SMB File Sharing TCP Rule Settings](https://github.com/user-attachments/assets/c4e72430-a6af-4bca-83f6-b413eaaec89f)

### 🗄️ Allow RPC Endpoint Mapper Rule

   * __Rule Type:__ Port
   * __Protocols:__ TCP
   * __Port:__ 135
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Name:__ Allow RPC Endpoint Mapper TCP
   * __Description:__ Allows RPC endpoint mapping for Windows Services.

📸 **Inbound RPC Endpoint Mapper Rule Settings**

![Inbound RPC Endpoint Mapper TCP Rule Settings](https://github.com/user-attachments/assets/48a4ac03-b84a-433e-a17f-18481204bceb)

### 🚀 Allow RPC Dynamic Ports Rule

   * __Rule Type:__ Port
   * __Protocols:__ TCP
   * __Port:__ 1024-5000
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Name:__ Allow RPC Dynamic Ports TCP
   * __Description:__ Allows RPC dynamic port range for Windows services.

📸 **Inbound RPC Dynamic Ports Rule Settings**

![Inbound RPC Dynamic Ports TCP Rule Settings](https://github.com/user-attachments/assets/2cb35591-0534-441f-94ba-f26e6e92dddb)

### 🕒 Allow Windows Time Service Rule

   * __Rule Type:__ Port
   * __Protocols:__ UDP
   * __Port:__ 123
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Name:__ Allow Windows Time Service UDP
   * __Description:__ Allows NTP time synchronization.

📸 **Inbound Windows Time Service Rule Settings**

![Inbound Windows Time Service TCP Rule Settings](https://github.com/user-attachments/assets/226a3b7d-d3a9-4137-9a43-8bf2c9b9585d)

### ⚡ Allow ICMP Echo Request (Ping) Rule

   * __Rule Type:__ Custom
   * __Protocols:__ ICMPv4
   * __Programs:__ All programs
   * __ICMP settings:__ Specific ICMP types — Echo Request
   * __Scope:__ Any IP address 
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Name:__ Allow ICMP Echo Request (Ping)
   * __Description:__ Allows ping requests for network troubleshooting.

📸 **Inbound ICMP Echo Request Rule Settings**

![Inbound ICMP Echo Request (Ping) Rule Settings](https://github.com/user-attachments/assets/ae21c693-ddb4-4cfb-b3b7-584268ee11fd)

### 🖥️ Remote Desktop Protocol (RDP) Rule

   * __Rule Type:__ Predefined
   * __Remote Desktop Rules:__ Remote Desktop - Shadow (TCP-In), Remote Desktop - User Mode (TCP-In), Remote Desktop - User Mode (UDP-In)
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Description:__ 
     - Inbound rule for the Remote Desktop service to allow shadowing of an existing Remote Desktop session. (TCP-In)
     - Inbound rule for the Remote Desktop service to allow RDP traffic. [TCP 3389]
     - Inbound rule for the Remote Desktop service to allow RDP traffic. [UDP 3389]

📸 **Inbound Remote Desktop Protocol (RDP) Rule Settings**

![Inbound Remote Desktop - Shadow (TCP-in) Rule Settings](https://github.com/user-attachments/assets/e9036dc1-114f-4f9e-abcf-70e783eae956)

![Inbound Remote Desktop - UserMode(UDP-in) Rule Settings](https://github.com/user-attachments/assets/baf944bf-074d-4ba9-adc7-ed90997942b8)

![Inbound Remote Desktop - UserMode(TCP-in) Rule Settings](https://github.com/user-attachments/assets/a184c0de-dabd-4fed-b9fd-25b7706c862d)

### 🛠️ Windows Remote Management (WinRM) Rule

   * __Rule Type:__ Predefined
   * __Windows Remote Management Rules:__ Windows Remote Management (HTTP-In), Windows Remote Management (HTTP-In)
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Description:__ 
     - Inbound rule for Windows Remote Management via WS-Management. [TCP 5985]
     - Inbound rule for Windows Remote Management via WS-Management. [TCP 5985]

📸 **Inbound Windows Remote Management (WinRM) Rule Settings**

![Inbound Windows Remote Management (HTTP-in) Rule Settings](https://github.com/user-attachments/assets/72e07e3a-1114-49b5-95e8-b6cea4e473d3)

![Inbound Windows Remote Management (HTTP-in) Rule Settings 1](https://github.com/user-attachments/assets/0acf6235-003b-427d-bd16-978b036e82c0)

### 📤 File and Printer Sharing Rule

   * __Rule Type:__ Predefined
   * __File and Printer Sharing Rule Rules:__ File and Printer Sharing (NB-Name-In), File and Printer Sharing (NB-Session-In), File and Printer Sharing (SMB-In)
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Description:__ 
     - Inbound rule for File and Printer Sharing to allow NetBIOS Name Resolution. [UDP 137]
     - Inbound rule for File and Printer Sharing to allow NetBIOS Session Service connections. [TCP 139]
     - Inbound rule for File and Printer Sharing to allow Server Message Block transmission and reception via Named Pipes. [TCP 445]

📸 **Inbound File and Printer Sharing Rule Settings**

![Inbound File and Printer Sharing (NB-Name-In) Rule Settings](https://github.com/user-attachments/assets/ab99c65c-66ad-4390-8816-3e0fcc645335)

![Inbound File and Printer Sharing (NB-Session-In) Rule Settings](https://github.com/user-attachments/assets/20a48a28-b465-4953-bf72-6becc5fb16c0)

![Inbound File and Printer Sharing (SMB-In) Rule Settings](https://github.com/user-attachments/assets/0cd19b84-64dc-41f5-bcca-5b8605f5b41f)

**Overview of all Newly Added Inbound Rules**

![Overview of all Newly Added Inbound Rules](https://github.com/user-attachments/assets/6ccae6f4-c0fc-49d5-9c41-fa7fe585b94b)

---

## 🔧 3. Outbound Firewall Rule Configuration

I created multiple **inbound rules** for Active Directory communication services using:

📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Windows Defender Firewall with Advanced Security > Outbound Rules`

### 🌐 Allow DNS Queries Rules

   * __Rule Type:__ Port
   * __Protocols:__ TCP and UDP (separate rules)
   * __Ports:__ 53
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Names:__ Allow DNS Queries TCP, Allow DNS Queries UDP
   * __Description:__ Allows outbound DNS queries over TCP and UDP.

📸 **Outbound DNS Queries Rules Settings**

![Outbound Allow DNS Queries TCP Rule Settings](https://github.com/user-attachments/assets/2d047173-6ed3-495b-9858-37aa58459643)

![Outbound Allow DNS Queries UDP Rule Settings](https://github.com/user-attachments/assets/b299ed4d-8e5a-4bfd-8634-f6099cbce6b0)

### 💻 Allow LDAP Queries Rules

   * __Rule Type:__ Port
   * __Protocols:__ TCP
   * __Ports:__ 389
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Names:__ Allow LDAP Queries TCP
   * __Description:__ Allows outbound LDAP queries.

📸 **Outbound DNS Queries Rules Settings**

![Outbound Allow DNS Queries TCP Rule Settings](https://github.com/user-attachments/assets/2d047173-6ed3-495b-9858-37aa58459643)

![Outbound Allow DNS Queries UDP Rule Settings](https://github.com/user-attachments/assets/b299ed4d-8e5a-4bfd-8634-f6099cbce6b0)

### 🔐 Allow Kerberos Authentication Rules

   * __Rule Type:__ Port
   * __Protocols:__ TCP and UDP (separate rules)
   * __Ports:__ 88
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Names:__ Allow Kerberos Auth TCP
   * __Description:__ Allows outbound Kerberos authentication over TCP.

📸 **Outbound Kerberos Authentication Rules Settings**

![Outbound Allow Kerberos Auth TCP Rule Settings](https://github.com/user-attachments/assets/e3aa32c6-242e-413f-b54a-11ddd6e4924c)

![Outbound Allow Kerberos Auth UDP Rule Settings](https://github.com/user-attachments/assets/2dd3c82b-fb17-4533-b193-417e30dbe824)

### 🕒 Allow Windows Time Sync Rules

   * __Rule Type:__ Port
   * __Protocols:__ UDP
   * __Ports:__ 123
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Names:__ Allow Windows Time Sync UDP
   * __Description:__ Allows outbound NTP time synchronization.

📸 **Outbound Windows Time Sync Rules Settings**

![Outbound Allow Windows Time Sync UDP Rule Settings](https://github.com/user-attachments/assets/5fd4db83-576c-44f5-8ad6-05fc638fdffe)

### 📡 Allow HTTP/HTTPS for Updates Rules

   * __Rule Type:__ Port
   * __Protocols:__ TCP
   * __Ports:__ 80,443
   * __Action:__ Allow the connection
   * __Profile:__ Domain only
   * __Names:__ Allow HTTP/HTTPS TCP
   * __Description:__ Allows outbound HTTP/HTTPS for updates and web access.

📸 **Outbound HTTP/HTTPS for Updates Rules Settings**

![Outbound Allow HTTP-HTTPS TCP Rule Settings](https://github.com/user-attachments/assets/5d53a004-f7b5-47ba-a839-d4bf95ccde4e)

---

### ⛔ 4. Custom Firewall Outbound Firewall Blocking Rules

To enhance security, I created outbound rules to block potentially unsafe or legacy protocols.
  
  📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Windows Defender Firewall with Advanced Security > Outbound Rules`

### 🚫 Block TFTP

   * __Rule Type:__ Port
   * __Protocol:__ UDP
   * __Remote Port:__ 69
   * __Action:__ Block the connection
   * __Profiles:__ All (Domain, Private, Public)
   * __Name:__ Block TFTP UDP
   * __Description:__ Blocks insecure TFTP connections.

📸 **Custom Outbound Block TFTP Rule Settings**

![Outbound Block TFTP UDP Rule Settings](https://github.com/user-attachments/assets/a1bb5e1c-20b9-48d6-a221-56886592b5b3)

### 🚫 Block Telnet

   * __Rule Type:__ Port
   * __Protocol:__ TCP
   * __Remote Port:__ 23
   * __Action:__ Block the connection
   * __Profiles:__ All (Domain, Private, Public)
   * __Name:__ Block Telnet TCP
   * __Description:__ Blocks insecure Telnet connections.

📸 **Custom Outbound Block Telnet Rule Settings**

![Outbound Block Telnet TCP Rule Settings](https://github.com/user-attachments/assets/9c51d6e8-f23c-488c-97db-af6af5d18793)

### 🚫 Block Unencrypted FTP

   * __Rule Type:__ Port
   * __Protocol:__ TCP
   * __Remote Port:__ 21
   * __Action:__ Block the connection
   * __Profiles:__ All (Domain, Private, Public)
   * __Name:__ Block Unencrypted FTP TCP
   * __Description:__ Blocks standard File Transfer Protocol (FTP) connections that transmit credentials and data without encryption, posing significant security risks. Port 21 TCP.

📸 **Custom Outbound Block Unencrypted FTP Rule Settings**

![Outbound Block Unencrypted FTP TCP Rule Settings](https://github.com/user-attachments/assets/f3cda28e-a856-4787-95f8-dc9d9bb5824d)

### 🚫 Block NetBIOS

   * __Rule Type:__ Port
   * __Protocol:__ TCP and UDP (separate rules)
   * __Remote Port:__ 137,138,139
   * __Action:__ Block the connection
   * __Profiles:__ All (Domain, Private, Public)
   * __Name:__ Block NetBIOS TCP, Block NetBIOS UDP
   * __Description:__ 
     - Blocks insecure NetBIOS over TCP
     - Blocks insecure NetBIOS over UDP

📸 **Custom Outbound Block NetBIOS Rule Settings**

![Outbound Block NetBIOS TCP Rule Settings](https://github.com/user-attachments/assets/5c883636-c14f-4e1d-946c-ada330167923)

![Outbound Block NetBIOS UDP Rule Settings](https://github.com/user-attachments/assets/bd7eecab-5ac6-4b71-b79b-42beaa61fdf5)

### 🚫 Block LLMNR

   * __Rule Type:__ Port
   * __Protocol:__ UDP
   * __Remote Port:__ 5355
   * __Action:__ Block the connection
   * __Profile:__ All (Domain, Private, Public)
   * __Name:__ Block LLMNR UDP
   * __Description:__ Blocks Link-Local Multicast Name Resolution.

📸 **Custom Outbound Block LLMNR Rule Settings**

![Outbound Block LLMNR UDP Rule Settings](https://github.com/user-attachments/assets/a87c3fc7-6abf-462e-bd6f-d3ed2edee790)

📸 **Overview of all Newly Added Outbound Rules**

![Overview of all Newly Added Outbound Rules](https://github.com/user-attachments/assets/811c16d4-4549-4927-97a8-2580c31b1998)

---

## 4. Configured the following profiles:

### 🌐 Domain Profile
- Firewall state: **On**
- Inbound connections: **Block**
- Outbound connections: **Allow**
- Logging: Enabled with custom path

📸 **Domain Profile Rules Configuration**

![Domain Profile Rules Configuration](https://github.com/user-attachments/assets/22ab94a5-f285-4e93-bd0c-56968e982f0d)

![Domain Profile Rules Configuration 1](https://github.com/user-attachments/assets/b579ef5c-15c7-4cab-83c6-997449aa80ef)

### 🏠 Private Profile
- Firewall state: **On**
- Inbound connections: **Block**
- Outbound connections: **Allow**
- Logging: Enabled with custom path

📸 **Private Profile Rules Configuration**

![Private Profile Rules Configuration](https://github.com/user-attachments/assets/3a5fc61a-ff43-4c8f-a000-04055f0047f5)

![Private Profile Rules Configuration 1](https://github.com/user-attachments/assets/ce31ef2a-1c5c-4c24-a7db-d7aafa4a1af7)

### 🌍 Public Profile
- Firewall state: **On**
- Inbound connections: **Block all**
- Outbound: **Allow** (with stricter rules)
- Prevent local exceptions

📸 **Public Profile Rules Configuration**

![Public Profile Rules Configuration](https://github.com/user-attachments/assets/cf9b2e66-87cb-4558-8022-fbabc1a65b56)

![Public Profile Rules Configuration 2](https://github.com/user-attachments/assets/c6ebecab-4aa6-4536-9652-2d7c574f5a01)

---

## 🚀 4. Applying and Testing the Policy

I closed the Group Policy Management Editor
- On each client computer, I ran the following command:

  `gpupdate /force`
  
- Then I restarted the clients to ensure the policy was fully applied
- I tested connectivity between the domain controller and the clients

📸 **Command Line Showing `gpupdate` Output for `AD-WIN11-01`**  

![Command Line Showing gpupdate Output for `AD-WIN11-01`](https://github.com/user-attachments/assets/5affdc1a-d60a-4d72-8052-e17b13836275)

📸 **Command Line Showing `gpupdate` Output for `AD-WIN11-02`**  

![Command Line Showing gpupdate Output for `AD-WIN11-02`](https://github.com/user-attachments/assets/53197679-b5f8-4292-8a37-599ca0e70bce)

---

### 🧪 5. Testing Firewall Behavior

- On client computers, I opened Command Prompt as administrator and ran:

  `gpresult /r`
  
  `netsh advfirewall show allprofiles` to verify firewall rules were active

  `ping 192.168.1.10` to check basic connectivity
  
  `nslookup hughdomain.local` to check basic connectivity

  📸 **Command Line Showing `gpresult` Output for `AD-WIN11-01`**  

  ![Command Line Showing `gpresult` Output for `AD-WIN11-01`](https://github.com/user-attachments/assets/9abd79e0-dc44-4204-aa81-7b4a0a4cbafe)

  ![Command Line Showing `gpresult` Output for `AD-WIN11-01` 1](https://github.com/user-attachments/assets/88cac2fe-a1c7-41cd-b52d-6a96df62df7d)

  📸 **Command Line Showing `gpresult` Output for `AD-WIN11-02`**  

  ![Command Line Showing `gpresult` Output for `AD-WIN11-02`](https://github.com/user-attachments/assets/da1a6dc5-4142-4dd2-8bec-0a6b62c828a8)

  ![Command Line Showing `gpresult` Output for `AD-WIN11-02` 1](https://github.com/user-attachments/assets/4123aae1-4826-4b7d-a9b2-89e8f77dfa80)

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

- On client computers, I made sure to check that domain controller discovery works, group policy updates successfully as well as group policy results show firewall policy applied by opening Command Prompt as administrator and running:

  `nltest /dsgetdc:yourdomain.local`

  `gpupdate /force`

  `gpresult /r`

  📸 **Active Directory Services Testing and Validating for `AD-WIN11-01`**

  ![Active Directory Services Testing and Validating for `AD-WIN11-01`](https://github.com/user-attachments/assets/15080997-c499-402c-9650-7bb148545ef2)

  ![Active Directory Services Testing and Validating for `AD-WIN11-01` 1](https://github.com/user-attachments/assets/a2381206-59c8-429e-9994-3bace49b1d4a)

  ![Active Directory Services Testing and Validating for `AD-WIN11-01` 2](https://github.com/user-attachments/assets/6444a49b-658e-4654-9e9e-2b4d96a6e673)

  📸 **Active Directory Services Testing and Validating for `AD-WIN11-02`**

  ![Active Directory Services Testing and Validating for `AD-WIN11-02`](https://github.com/user-attachments/assets/da9b6b7b-e2bb-499a-830e-072135f6d4a3)

  ![Active Directory Services Testing and Validating for `AD-WIN11-02` 1](https://github.com/user-attachments/assets/02f553bc-a5e2-40cc-bfac-d8241e3d856b)

  ![Active Directory Services Testing and Validating for `AD-WIN11-02` 2](https://github.com/user-attachments/assets/a9bcf3af-d8d5-47ab-9a6d-bc59ea93ca81)

- On client computers, I made sure to check that access to SYSVOL share, NETLOGON share is available as well as authentication to domain is possible by opening Command Prompt as administrator and running:

  `net use \\domain-controller\sysvol`
  
  `net use \\domain-controller\netlogon`

  📸 **Authentication and File Sharing Testing and Validating for `AD-WIN11-01`**

  ![Authentication and File Sharing Testing and Validating for `AD-WIN11-01`](https://github.com/user-attachments/assets/abd49a5c-677b-408f-a2e7-783341755ad8)

  📸 **Authentication and File Sharing Testing and Validating for `AD-WIN11-02`**

  ![Authentication and File Sharing Testing and Validating for `AD-WIN11-02`](https://github.com/user-attachments/assets/69dd3e0e-e6da-477a-8348-4b085dc9d574)

- On client computers, I made sure to check that RDP connection was successful, WinRM commands execute successfully, as well as No firewall blocking messages appeared by opening Command Prompt as administrator and running:

  `mstsc /v:192.168.1.10`
  
  `winrs -r:192.168.1.10 ipconfig`

  📸 ***Remote Management, Time Synchronization Testing and Validation for `AD-WIN11-01`**

  ![Remote Management Testing and Validation for `AD-WIN11-01`](https://github.com/user-attachments/assets/eedcaa72-dae3-46f4-b9b5-172703ad25cf)

  ![Remote Management Testing and Validation for `AD-WIN11-01` 1](https://github.com/user-attachments/assets/c3801130-9209-48d4-8e86-d062b60baf9b)

  ![Remote Management Testing and Validation for `AD-WIN11-01` 2](https://github.com/user-attachments/assets/bbb72288-cdc7-443b-9e34-df9a716a77a2)

  📸 **Remote Management, Time Synchronization Testing and Validation for `AD-WIN11-02`**

  ![Remote Management Testing and Validation for `AD-WIN11-02`](https://github.com/user-attachments/assets/207fb7ad-73ce-4d77-96aa-6eb166aa1274)

  ![Remote Management Testing and Validation for `AD-WIN11-02` 1](https://github.com/user-attachments/assets/081a80a7-d435-404e-9583-48c7cef729fd)

  ![Remote Management Testing and Validation for `AD-WIN11-02` 2](https://github.com/user-attachments/assets/d3968c36-7b6b-4a38-9b7a-46cf644e7035)

- On client computers, I made sure to check that Time services showed valid sync source, as well as Manual resync works without errors by opening Command Prompt as administrator and running:

  `w32tm /query /status`
  
  `w32tm /resync`

  📸 ***Remote Management, Time Synchronization Testing and Validation for `AD-WIN11-01`**

  ![Remote Management Testing and Validation for `AD-WIN11-02` 4](https://github.com/user-attachments/assets/a7fbbd2c-a87d-4abd-af50-4cd4dd48409c)

  📸 **Remote Management, Time Synchronization Testing and Validation for `AD-WIN11-02`**

  ![Remote Management Testing and Validation for `AD-WIN11-01` 3](https://github.com/user-attachments/assets/1a626645-6097-4d23-ba72-ffd19a50a543)

- On a domain controller, I opened Command Prompt as administrator and ran:

   `ping 192.168.1.11` to check basic connectivity

  `ping 192.168.1.12` to check basic connectivity
  
   `nslookup AD-WIN11-01`  to check basic connectivity

   `nslookup AD-WIN11-02`  to check basic connectivity

  📸 **Successful Ping to `AD-WIN11-01` & `AD-WIN11-02` from Domain `WinServer2025`**

  ![Successful Ping to Domain for `WinServer2025`](https://github.com/user-attachments/assets/fa2887f0-2573-4a2d-b0d8-9c6cb78c57e2)

  ![Successful Ping to Domain for `WinServer2025` 1](https://github.com/user-attachments/assets/81f9282a-346b-4a71-a736-23d9ff5cc2eb)

---

## 🛠️ 6. Troubleshooting Tips

- Temporarily disabled the firewall to determine if it was blocking connectivity
- Used `rsop.msc` to confirm policy inheritance on client machines
- Checked **Event Viewer** for related errors
- Ran:
  `netsh advfirewall monitor show firewall rule name=all`
- To see all applied firewall rules and check for any misconfiguration

📸 **Resultant Windows Firewall Settings Policy Results for `AD-WIN11-01`**

![Resultant Windows Firewall Settings Policy Results for `AD-WIN11-01`](https://github.com/user-attachments/assets/793ac904-255e-4af5-9bb1-aea6c297f9b6)

📸 **Resultant Windows Firewall Settings Policy Results for `AD-WIN11-02`**

![Resultant Windows Firewall Settings Policy Results for `AD-WIN11-02`](https://github.com/user-attachments/assets/0b3b9785-36ea-4ec7-8fe9-2540f120732d)

📸 **Event Viewer Logs for Firewall**

![Event Viewer Logs for Firewall](https://github.com/user-attachments/assets/54777102-814f-46df-9b04-1f346d256dae)

---

## 🗂️ 7. Screenshot Storage

All screenshots for this section can be found in:<br />
📂 [`06-Screenshots/XXVII. Windows-Firewall`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/tree/main/06-Screenshots/XXVII.%20Windows-Firewall)
