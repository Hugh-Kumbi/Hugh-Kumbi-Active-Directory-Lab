# 🌐 Network Security Configuration via GPO

In this section, I implemented secure network communication policies across all domain-joined systems to ensure data confidentiality and integrity. These settings help defend against man-in-the-middle (MITM) attacks and enforce strong authentication protocols.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Network Security Policy  
- **Linked To:** Domain

📸 **Network Security Policy Linked to Domain**  

![Network Security Policy Linked to Domain](https://github.com/user-attachments/assets/0e56aa70-3962-4314-b952-e8a174b1c45e)

📸 **Network Security Configuration**  
 
![secpol msc Network Security Configuration](https://github.com/user-attachments/assets/c918231b-45d4-4d32-8b83-939924209412)

---

## 🔐 2. Security Settings Applied

The following settings were configured under:  
 📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Local Policies > Security Options`

### ✅ LAN Manager Authentication Level
- **Policy:** Network Security: LAN Manager authentication level  
- **Setting:** **Send NTLMv2 response only. Refuse LM & NTLM**

### ✅ Minimum Session Security for NTLM SSP
- **Policy:** Network Security: Minimum session security for NTLM SSP based (including secure RPC) clients  
- **Setting:** **Require NTLMv2 session security and 128-bit encryption**

- **Policy:** Network Security: Minimum session security for NTLM SSP based servers  
- **Setting:** **Require NTLMv2 session security and 128-bit encryption**

### ✅ Digitally Sign Communications
- **Policy:** Microsoft Network Client: Digitally sign communications (always)  
- **Setting:** **Enabled**

- **Policy:** Microsoft Network Server: Digitally sign communications (always)  
- **Setting:** **Enabled**

📸 **LAN Manager Authentication Level Properties**

![LAN Manager Authentication Level](https://github.com/user-attachments/assets/26a42542-6ab3-448c-8248-74c736257205)

📸 **Minimum Session Security for NTLM SSP Properties**

![Minimum Session Security for NTLM SSP](https://github.com/user-attachments/assets/8daeb0ed-c941-4f62-90e2-2f111f4645be)

📸 **Minimum Session Security for NTLM SSP Servers Properties**

![Minimum Session Security for NTLM SSP Servers](https://github.com/user-attachments/assets/f256db18-6057-4692-959c-1afaa90deedd)

📸 **Digitally Sign Communications Clients Properties**

![Digitally Sign Communications Clients](https://github.com/user-attachments/assets/f1dc9677-57a4-4d95-82bd-36d658f318cd)

📸 **Digitally Sign Communications Server Properties**

![Digitally Sign Communications Server](https://github.com/user-attachments/assets/484c82dc-65a0-4941-8622-e679e3fee8f3)

---

## 🧪 3. Verification and Testing

- Ran `gpupdate /force` on client machines to apply policies immediately.
- Used `secpol.msc` and `gpresult /h` to verify effective policy settings.
- Attempted legacy connections to confirm they were blocked or upgraded to NTLMv2.

📸 **Command Line Showing `gpresult` For The Network Security Configuration**

![gpresult Network Security Configuration](https://github.com/user-attachments/assets/bfb982a2-1933-49c8-b224-4295b6a6c69e)

---

## 🗂️ 4. Screenshot Storage

All images related to this section are stored in:  
📂 [`06-Screenshots/Network-Security/lan-manager-auth-level.png`]()
