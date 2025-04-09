# 🌐 DNS Configuration for Active Directory

This section details how I configured the **Domain Name System (DNS)** on my Windows Server 2025 Domain Controller to ensure proper name resolution within the domain environment.

---

## ⚙️ 1. DNS Role Configuration

During the **Active Directory Domain Services (AD DS)** installation and domain promotion process, the **DNS Server** role was installed automatically.

### Key Settings Verified:
- Forward Lookup Zone: `hughdomain.local` (Active Directory–integrated)
- Reverse Lookup Zone: Created for subnet `192.168.1.0/24`
- Secure dynamic updates enabled

📸 **Screenshot suggestion:**
![DNS Manager Showing Forward Lookup Zone For hughdomain local](https://github.com/user-attachments/assets/49da0768-4f2f-4e93-89a0-7497c99bec09)

![Reverse lookup zone creation wizard](https://github.com/user-attachments/assets/10ebd273-c1a7-4e61-8323-b29e8f0225b2)

---

## 🗂️ 2. Forward Lookup Zone Configuration

Within the **Forward Lookup Zone**, I verified the creation of:

- **Host (A)** records for:
  - Domain Controller: `WIN-D2PQBCI88JQ` ➝ `192.168.1.10`
  - Windows 11 clients: `DESKTOP-74HPA3F`, `DESKTOP-2N3JERQ
- **_msdcs** subdomain (used for AD replication and services)
- SRV Records for:
  - `_ldap._tcp.dc._msdcs.hughdomain.local`
  - `_kerberos._tcp.dc._msdcs.hughdomain.local`

📸 **Screenshot suggestion:**
- DNS Manager with `_msdcs` and SRV records visible  
- Host records for domain members

---

## 🔄 3. Reverse Lookup Zone Setup

To support name resolution from IP → hostname, I manually created a **Reverse Lookup Zone**:

- **Zone Name:** `1.168.192.in-addr.arpa`
- **Type:** Primary, AD-integrated
- Enabled secure dynamic updates

Verified PTR records for:
- `192.168.1.10` ➝ `WIN-D2PQBCI88JQ`
- `192.168.1.20` ➝ `DESKTOP-74HPA3F`
- `192.168.1.30` ➝ `DESKTOP-2N3JERQ`

📸 **Screenshot suggestion:**
- Reverse Lookup Zone configuration in DNS Manager  
- PTR record list

---

## 🧪 4. DNS Testing & Verification

To ensure everything worked:

### On the Domain Controller:
- Ran `nslookup` and `ping` commands for hostname and IP resolution  
- Verified that domain services could be located via:
  ```powershell
  nslookup -type=SRV _ldap._tcp.dc._msdcs.hughdomain.local

