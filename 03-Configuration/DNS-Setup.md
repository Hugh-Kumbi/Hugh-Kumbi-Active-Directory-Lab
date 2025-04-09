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
- DNS Manager showing the forward lookup zone  
- Reverse lookup zone creation wizard

---

## 🗂️ 2. Forward Lookup Zone Configuration

Within the **Forward Lookup Zone**, I verified the creation of:

- **Host (A)** records for:
  - Domain Controller (e.g., `DC01` ➝ `192.168.1.10`)
  - Windows 11 clients (`AD-WIN11-01`, `AD-WIN11-02`)
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
- `192.168.1.10` ➝ `DC01`
- `192.168.1.20` ➝ `AD-WIN11-01`
- `192.168.1.30` ➝ `AD-WIN11-02`

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

