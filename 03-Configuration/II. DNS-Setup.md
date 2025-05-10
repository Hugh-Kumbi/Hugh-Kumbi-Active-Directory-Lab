# 🌐 DNS Configuration for Active Directory

This section details how I configured the **Domain Name System (DNS)** on my Windows Server 2025 Domain Controller to ensure proper name resolution within the domain environment.

---

## ⚙️ 1. DNS Role Configuration

During the **Active Directory Domain Services (AD DS)** installation and domain promotion process, the **DNS Server** role was installed automatically.

### Key Settings Verified:
- Forward Lookup Zone: `hughdomain.local` (Active Directory–integrated)
- Reverse Lookup Zone: Created for subnet `192.168.1.0/24`
- Secure dynamic updates enabled

📸 **DNS Manager Showing Forward Lookup Zone For hughdomain.local**

![DNS Manager Showing Forward Lookup Zone For hughdomain.local](https://github.com/user-attachments/assets/49da0768-4f2f-4e93-89a0-7497c99bec09)

📸 **Reverse Lookup Zone Creation Wizard**

![Reverse Lookup Zone Creation Wizard](https://github.com/user-attachments/assets/10ebd273-c1a7-4e61-8323-b29e8f0225b2)

---

## 🗂️ 2. Forward Lookup Zone Configuration

Within the **Forward Lookup Zone**, I verified the creation of:

- **Host (A)** records for:
  - Domain Controller: `WIN-D2PQBCI88JQ` ➝ `192.168.1.10`
  - Windows 11 clients: `DESKTOP-74HPA3F`, `DESKTOP-2N3JERQ`
- **_msdcs** subdomain (used for AD replication and services)
- SRV Records for:
  - `_ldap._tcp.dc._msdcs.hughdomain.local`
  - `_kerberos._tcp.dc._msdcs.hughdomain.local`

📸 **DNS Manager With `msdcs` and SRV Records Visible**

![DNS Manager With msdcs and SRV Records Visible](https://github.com/user-attachments/assets/6bdf6414-3673-4d76-91bb-3635bb6687bc)

📸 **Host Records For Domain Members**

![Host Records For Domain Members](https://github.com/user-attachments/assets/799d22f0-446d-4598-810b-0c1c1d01e820)

---

## 🔄 3. Reverse Lookup Zone Setup

To support name resolution from IP → hostname, I manually created a **Reverse Lookup Zone**:

- **Zone Name:** `1.168.192.in-addr.arpa`
- **Type:** Primary, AD-integrated
- Enabled secure dynamic updates

Verified PTR records for:
- `192.168.1.10` ➝ `WIN-D2PQBCI88JQ`
- `192.168.1.101` ➝ `DESKTOP-74HPA3F`
- `192.168.1.12` ➝ `DESKTOP-2N3JERQ`

📸 **Reverse Lookup Zone Configuration in DNS Manager**

![Reverse Lookup Zone Configuration in DNS Manager](https://github.com/user-attachments/assets/60a91dd9-dff6-43f8-9377-c609b3e6f845)

📸 **PTR Record List**

![PTR Record List](https://github.com/user-attachments/assets/e4d77d55-e09a-4fcf-a2cf-062d0f4be1e1)

---

## 🧪 4. DNS Testing & Verification

To ensure everything worked:

**On the Domain Controller:**
- Ran `nslookup` and `ping` commands for hostname and IP resolution  
- Verified that domain services could be located via:

  ```powershell
  nslookup -type=SRV _ldap._tcp.dc._msdcs.hughdomain.local
  ```
📸 **Verified That Domain Services Could Be Located**

![Verified That Domain Services Could Be Located](https://github.com/user-attachments/assets/d1886a50-33e2-4383-a1cc-c511cfecae4a)

📸 **Output From `ping` Commands For Hostname and IP Resolution**

![Output From Ping Commands For Hostname and IP Resolution](https://github.com/user-attachments/assets/4399c704-b426-4fd2-a349-3532c22f2d9d)

📸 **Output From `nslookup` Commands For Hostname and IP Resolution**

![Output From `nslookup` Commands For Hostname and IP Resolution](https://github.com/user-attachments/assets/d166a456-0d28-4956-adc6-3c537ed42c6e)

📸 **Command Prompt With `Ipconfig all` Showing Domain Suffix**

![Command Prompt With Ipconfig All Showing Domain Suffix](https://github.com/user-attachments/assets/d65ecde3-ce87-4e26-ad71-4946ab0d98c0)

**On Client Machines:**
- Used `nslookup` to confirm the DNS server `(192.168.1.10)` was responding
- Ran `gpupdate /force` and `gpresult /r` to check successful GPO delivery

📸 **Output From `nslookup` to Confirm The DNS Server Response**

![Output From `nslookup` to Confirm The DNS Server Response](https://github.com/user-attachments/assets/05855f94-6b9f-4bd7-a129-b205c8993f35)

📸 **Output From `gpupdate` Command**

![Output From `gpupdate` Command](https://github.com/user-attachments/assets/284e084a-7b85-455d-abbf-9117d30b444f)

📸 **Output From `gpresult` Command**

![Output From `gpresult` Command](https://github.com/user-attachments/assets/310ebd8a-498f-4426-bd5a-96ef72c4823c)

---

## 📁 5. Screenshot Storage

All screenshots for this section should be placed in:

  📂 [`06-Screenshots/DNS-Setup.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/V.%20DNS-Setup/README.md)
