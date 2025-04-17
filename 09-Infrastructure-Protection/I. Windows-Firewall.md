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
- Blocked known vulnerable services like SMBv1

Steps:
1. Navigated to `Inbound Rules` > New Rule  
2. Chose Port or Program-based rules  
3. Configured action as **Block** or **Allow**, with appropriate scope and user/group restrictions  
4. Named and saved each rule

📸 **Screenshot:**  
![Blocks SMBv1](https://github.com/user-attachments/assets/fb693f99-c92c-4f11-b4df-ba63cf00c821)

![Telnet](https://github.com/user-attachments/assets/fea2d844-3171-4aa7-914a-8d682192e35e)

![Unencrypted FTP Properties](https://github.com/user-attachments/assets/b51a559c-1ed3-4397-9e42-85a29f2c9d41)

![TFTP](https://github.com/user-attachments/assets/33e270b5-c463-4277-b134-3bda2485eb9b)

---

## 🧪 4. Testing Firewall Behavior

- Verified that only allowed services could be accessed remotely.
- Confirmed that non-domain machines could not connect to domain resources unless allowed.
- Used `netsh advfirewall show allprofiles` to verify profile settings on clients.

📸 **Screenshot:**  
- Command prompt showing firewall status on a client  
- Failed and successful connection attempts (e.g., ping or RDP)

---

## 🗂️ 5. Screenshot Storage

All images related to this section are stored in:  
📂 [`06-Screenshots/Windows-Firewall/domain-profile-config.png`]()
