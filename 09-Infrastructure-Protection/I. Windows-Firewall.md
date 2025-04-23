# 🔥 Windows Firewall Group Policy Configuration
In this section, I configured Windows Firewall rules using Group Policy to ensure consistent network protection across all domain-joined machines. The firewall was enforced for all profiles—Domain, Private, and Public—using secure inbound/outbound rules.

---

## 🏷️ 1. GPO Name
- **GPO Name:** Windows Firewall Policy  
- **Linked To:** Domain Computers OU

📸 **Screenshot:**  
![Windows Firewall GPO](https://github.com/user-attachments/assets/88637b64-1050-4123-b148-00efe9dcb92b)

---

## 🛠️ 2. Steps Taken to Configure Firewall Settings
1. Opened **Group Policy Management Editor**.  
2. Navigated to:  
   `Computer Configuration > Policies > Windows Settings > Security Settings > Windows Defender Firewall with Advanced Security > Windows Defender Firewall with Advanced Security - LDAP://...`

3. Configured the following profiles:

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

## 📋 3. Custom Firewall Rules
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
