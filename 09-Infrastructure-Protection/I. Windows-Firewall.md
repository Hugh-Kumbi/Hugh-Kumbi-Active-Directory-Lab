# 🔥 Windows Firewall Group Policy Configuration

In this section, I configured Windows Firewall rules using Group Policy to ensure consistent network protection across all domain-joined machines. The firewall was enforced for all profiles—Domain, Private, and Public—using secure inbound/outbound rules.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Windows Firewall Policy  
- **Linked To:** Domain Computers OU

📸 **Screenshot:**  
- GPMC showing the GPO linked to the OU

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
- Each profile tab (Domain, Private, Public) showing configured rules
- Logging configuration dialog

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
- Custom rule properties window showing protocol, port, action, and profile

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
