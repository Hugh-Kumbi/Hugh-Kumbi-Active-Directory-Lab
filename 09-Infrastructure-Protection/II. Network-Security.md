# 🌐 Network Security Configuration via GPO

In this section, I implemented secure network communication policies across all domain-joined systems to ensure data confidentiality and integrity. These settings help defend against man-in-the-middle (MITM) attacks and enforce strong authentication protocols.

---

## 🏷️ 1. GPO Name

- **GPO Name:** Network Security Policy  
- **Linked To:** hughdomain.local (domain root)

📸 **Group Policy Management Console Showing the Network Security Policy Linked to Domain**  

![Group Policy Management Console Showing the Network Security Policy Linked to Domain](https://github.com/user-attachments/assets/e9cc4a4e-14bb-4324-b8dc-0d12134d2e28)

📸 **Network Security Configuration Compiled on `AD-WIN11-01`**  
 
![Verifying Effective Policy Settings using `secpol msc` on `AD-WIN11-01` 1](https://github.com/user-attachments/assets/3f0f93fc-4659-45bf-b8ff-0a9bc980f501)

![Verifying Effective Policy Settings using `secpol msc` on `AD-WIN11-01` 2](https://github.com/user-attachments/assets/b476e07d-240d-4851-94c8-8fdb27fcc7b6)

![Verifying Effective Policy Settings using `secpol msc` on `AD-WIN11-01` 3](https://github.com/user-attachments/assets/ec054495-2364-4dde-b122-8189493572ae)

📸 **Network Security Configuration Compiled on `AD-WIN11-02`**  

![Verifying Effective Policy Settings using `secpol msc` on `AD-WIN11-02` 1](https://github.com/user-attachments/assets/41967b35-0b34-4e58-bd86-6c87a6b1d244)

![Verifying Effective Policy Settings using `secpol msc` on `AD-WIN11-02` 2](https://github.com/user-attachments/assets/ad827ddd-3b8b-430f-b336-4e493585f0a0)

![Verifying Effective Policy Settings using `secpol msc` on `AD-WIN11-02` 3](https://github.com/user-attachments/assets/f14860ff-362a-4560-9e00-57e2ce46abf8)

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

![LAN Manager Authentication Level Properties](https://github.com/user-attachments/assets/eb58a6db-ed19-46f8-9918-ad8f4a0d384b)

![LAN Manager Authentication Level Properties 1](https://github.com/user-attachments/assets/2c7c7c1a-1c8c-4913-ae1c-1cdf87b6ae23)

📸 **Minimum Session Security for NTLM SSP Properties**

![Minimum Session Security for NTLM SSP Properties](https://github.com/user-attachments/assets/efaeeb57-088b-481c-a678-3a661e7c8eb7)

📸 **Minimum Session Security for NTLM SSP Servers Properties**

![Minimum Session Security for NTLM SSP Servers Properties](https://github.com/user-attachments/assets/9f01a073-c006-4637-9b1b-46078c509710)

📸 **Digitally Sign Communications Clients Properties**

![Digitally Sign Communications Clients Properties](https://github.com/user-attachments/assets/fa463e67-f451-4cb1-b119-6d704433f8ba)

![Digitally Sign Communications Clients Properties 1](https://github.com/user-attachments/assets/abed2d8e-10bb-44e3-9304-639ee89c8af8)

📸 **Digitally Sign Communications Server Properties**

![Digitally Sign Communications Server Properties](https://github.com/user-attachments/assets/3dca1c52-53ef-4c8f-ac72-14d0f8e0cdb9)

![Digitally Sign Communications Server Properties 1](https://github.com/user-attachments/assets/74652909-7942-45ec-8fca-73333d38a154)

---

## 🧪 3. Verification and Testing

- Ran `gpupdate /force` on client machines to apply policies immediately.
- Used `secpol.msc` and `gpresult /h` to verify effective policy settings.
- Attempted legacy connections to confirm they were blocked or upgraded to NTLMv2.

📸 **Command Line Showing `gpresult` For The Network Security Configuration for `AD-WIN11-01`**

![Command Line Showing `gpresult` for the Network Security Configuration for `AD-WIN11-01`](https://github.com/user-attachments/assets/595da062-9061-4ffb-8321-402ffb27340e)

![Command Line Showing `gpresult` for the Network Security Configuration for `AD-WIN11-01` 1](https://github.com/user-attachments/assets/4efb2032-7b85-4cba-b1dd-8cfe795837a6)

![Command Line Showing `gpresult` for the Network Security Configuration for `AD-WIN11-01` 2](https://github.com/user-attachments/assets/8c1419e4-b2ef-4b51-9d6a-80eb0b24853e)

📸 **Command Line Showing `gpresult` for the Network Security Configuration for `AD-WIN11-02`**

![Command Line Showing `gpresult` for the Network Security Configuration for `AD-WIN11-02`](https://github.com/user-attachments/assets/307b7bde-2808-4ab4-911f-4919ab8b2af0)

![Command Line Showing `gpresult` for the Network Security Configuration for `AD-WIN11-02` 1](https://github.com/user-attachments/assets/60cc6588-706e-42b2-a775-e841a4a31748)

![Command Line Showing `gpresult` for the Network Security Configuration for `AD-WIN11-02` 2](https://github.com/user-attachments/assets/68085173-6051-4840-84e2-27137adc31b1)

📸 **Verifying Effective Policy Settings using `rsop.msc` on `AD-WIN11-01`**

![Verifying Effective Policy Settings using `secpol msc` on `AD-WIN11-01`](https://github.com/user-attachments/assets/2135d136-9301-4c8c-87d0-f66a28a807b0)

📸 **Verifying Effective Policy Settings using `rsop.msc` on `AD-WIN11-02`**

![Verifying Effective Policy Settings using `secpol msc` on `AD-WIN11-02`](https://github.com/user-attachments/assets/103dedc7-f014-4660-bc22-abccc4e413e9)

---

## 🗂️ 4. Screenshot Storage

All images related to this section are stored in:  
📂 [`06-Screenshots/Network-Security/lan-manager-auth-level.png`]()
