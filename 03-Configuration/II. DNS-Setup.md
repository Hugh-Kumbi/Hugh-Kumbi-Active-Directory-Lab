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

![DNS Server Post Configuration Reverse Lookup Zone](https://github.com/user-attachments/assets/47b146b5-d91c-49fc-808b-5db77e1cebdd)

📸 **Reverse Lookup Zone Type**

![DNS Server Post Configuration Reverse Lookup Zone 1](https://github.com/user-attachments/assets/33d2b8c2-1019-4d14-a9ee-71ab7b944eb6)

📸 **Reverse Lookup Active Directory Zone Replication Scope**

![DNS Server Post Configuration Reverse Lookup Zone 2](https://github.com/user-attachments/assets/8d0b09be-9131-4e15-9638-57de4f7b82ec)

📸 **Reverse Lookup Zone Name**

![DNS Server Post Configuration Reverse Lookup Zone 3](https://github.com/user-attachments/assets/4a434024-55ad-47fe-8255-75e79886c909)

📸 **Reverse Lookup Zone Name Network ID**

![DNS Server Post Configuration Reverse Lookup Zone 4](https://github.com/user-attachments/assets/739c273c-da4c-4742-965f-8112b255bd39)

📸 **Reverse Lookup Zone Dynamic Update**

![DNS Server Post Configuration Reverse Lookup Zone 5](https://github.com/user-attachments/assets/9ab771db-aad5-42fb-b2c7-ceea4b9dfabd)

📸 **Reverse Lookup Zone Creation Completion**

![DNS Server Post Configuration Reverse Lookup Zone 6](https://github.com/user-attachments/assets/7c70f166-c141-43f1-bccd-a98811c75f8b)

---

## 🗂️ 2. Forward Lookup Zone Configuration

Within the **Forward Lookup Zone**, I verified the creation of:

- **Host (A)** records for:
  - Domain Controller: `WinServer2025` ➝ `192.168.1.10`
  - Windows 11 clients: `AD-WIN11-01`, `AD-WIN11-01`
- **_msdcs** subdomain (used for AD replication and services)
- SRV Records for:
  - `_ldap._tcp.dc._msdcs.hughdomain.local`
  - `_kerberos._tcp.dc._msdcs.hughdomain.local`

📸 **DNS Manager With `msdcs` and SRV Records Visible**

![DNS Manager With msdcs and SRV Records Visible](https://github.com/user-attachments/assets/6fe3186d-56b2-44b1-987e-d332d97b837c)

📸 **Host Records For Domain Members**

![Host Records For Domain Members](https://github.com/user-attachments/assets/799d22f0-446d-4598-810b-0c1c1d01e820)

---

## 🔄 3. Reverse Lookup Zone Setup

To support name resolution from IP → hostname, I manually created a **Reverse Lookup Zone**:

- **Zone Name:** `1.168.192.in-addr.arpa`
- **Type:** Primary, AD-integrated
- Enabled secure dynamic updates

Verified PTR records for:
- `192.168.1.10` ➝ `WinServer2025`
- `192.168.1.11` ➝ `AD-WIN11-01`
- `192.168.1.12` ➝ `AD-WIN11-02`

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

    ```powershell
  nslookup -type=SRV _kerberos._tcp.dc._msdcs.hughdomain.local
  ```

    ```powershell
  dcdiag /test:dns /v
  ```
  
📸 **Verified That Domain Services Could Be Located**

![Verified That Domain Services Could Be Located](https://github.com/user-attachments/assets/506cd97a-d99f-4ea0-ba4d-24cba15e9648)

![Verified That Domain Services Could Be Located 1](https://github.com/user-attachments/assets/659148cc-76cd-4a77-b737-22ca71919597)

![Verified That Domain Services Could Be Located 2](https://github.com/user-attachments/assets/425b6d39-320b-4b11-888f-e2e2365293b0)

![Verified That Domain Services Could Be Located 3](https://github.com/user-attachments/assets/f444c25d-ae39-4eaf-9e4e-41927f676dfa)

![Verified That Domain Services Could Be Located 4](https://github.com/user-attachments/assets/5de037cc-6309-499c-b73d-7bd1da8174ab)

![Verified That Domain Services Could Be Located 5](https://github.com/user-attachments/assets/afb0ae54-6ea4-43c2-be2e-ef03103f72f1)

![Verified That Domain Services Could Be Located 6](https://github.com/user-attachments/assets/1ae65ced-5272-4787-a8a1-93622fbecc52)

![Verified That Domain Services Could Be Located 7](https://github.com/user-attachments/assets/75154b70-67ea-41ce-88f7-c2b65c157d20)

📸 **Output From `ping` Commands For Hostname and IP Resolution**

![Output From ping Commands For Hostname and IP Resolution](https://github.com/user-attachments/assets/50a58e4a-5119-4ca6-bf5e-4155da8388c5)

📸 **Output From `nslookup` Commands For Hostname and IP Resolution**

![Output From nslookup Commands For Hostname and IP Resolution](https://github.com/user-attachments/assets/89ca04a7-5e98-40fa-af84-e1c062163573)

📸 **Command Prompt With `Ipconfig all` Showing Domain Suffix**

![Command Prompt With Ipconfig all Showing Domain Suffix](https://github.com/user-attachments/assets/7a8c2ef9-ddd0-42c7-9c3a-6cf824031e78)

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
