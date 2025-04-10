# 🌐 Network Security Configuration via GPO

In this section, I implemented secure network communication policies across all domain-joined systems to ensure data confidentiality and integrity. These settings help defend against man-in-the-middle (MITM) attacks and enforce strong authentication protocols.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Network Security Policy  
- **Linked To:** Domain Computers OU

📸 **Screenshot:**  
- Group Policy Management Console showing the GPO linked to the OU  
- GPMC Editor with the policy path highlighted

---

## 🔐 2. Security Settings Applied

The following settings were configured under:  
`Computer Configuration > Policies > Windows Settings > Security Settings > Local Policies > Security Options`

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

📸 **Screenshot:**
- Each of the above settings highlighted in the GPO Editor
- Side-by-side of "before" and "after" configurations if available

---

## 🧪 3. Verification and Testing

- Ran `gpupdate /force` on client machines to apply policies immediately.
- Used `secpol.msc` and `gpresult /h` to verify effective policy settings.
- Attempted legacy connections to confirm they were blocked or upgraded to NTLMv2.

📸 **Screenshot:**
- PowerShell or command prompt output of gpresult showing policy enforcement

---

## 🗂️ 4. Screenshot Storage

All images related to this section are stored in:  
📂 [`06-Screenshots/Network-Security/lan-manager-auth-level.png`]()
