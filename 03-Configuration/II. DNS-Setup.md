# 🌐 DNS Configuration for Active Directory

This section details how I configured the **Domain Name System (DNS)** on my Windows Server 2025 Domain Controller to ensure proper name resolution within the domain environment.

---

## ⚙️ 1. DNS Role Configuration

During the **Active Directory Domain Services (AD DS)** installation and domain promotion process, the **DNS Server** role was installed automatically.

### Key Settings Verified:
- Forward Lookup Zone: `hughdomain.local` (Active Directory–integrated)
- Reverse Lookup Zone: Created for subnet `192.168.1.0/24`
- Secure dynamic updates enabled

📸 **DNS Manager Showing Forward Lookup Zone for hughdomain.local**

![DNS Manager Showing Forward Lookup Zone for hughdomain](https://github.com/user-attachments/assets/c51b04af-24b8-40e5-858e-547e8d207033)

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
  - Windows 11 clients: `AD-WIN11-01`, `AD-WIN11-02`
- **_msdcs** subdomain (used for AD replication and services)
- SRV Records for:
  - `_ldap._tcp.dc._msdcs.hughdomain.local`
  - `_kerberos._tcp.dc._msdcs.hughdomain.local`

📸 **DNS Manager with `msdcs` and SRV Records Visible**

![DNS Manager with msdcs and SRV Records Visible](https://github.com/user-attachments/assets/6fe3186d-56b2-44b1-987e-d332d97b837c)

📸 **Host Records for Domain Members**

![Host Records for Domain Members](https://github.com/user-attachments/assets/447427b9-9aa0-43a7-8486-6d473fc4fced)

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

![Reverse Lookup Zone Configuration in DNS Manager](https://github.com/user-attachments/assets/03a2ff6e-c85f-4947-8917-9263d655d7be)

📸 **PTR Record List**

![PTR Record List](https://github.com/user-attachments/assets/84c3653f-b565-4bc8-a490-c8c1b58803ca)

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
  
📸 **Verified that Domain Services Could be Located**

![Verified that Domain Services Could be Located](https://github.com/user-attachments/assets/506cd97a-d99f-4ea0-ba4d-24cba15e9648)

![Verified that Domain Services Could be Located 1](https://github.com/user-attachments/assets/659148cc-76cd-4a77-b737-22ca71919597)

![Verified that Domain Services Could be Located 2](https://github.com/user-attachments/assets/425b6d39-320b-4b11-888f-e2e2365293b0)

![Verified that Domain Services Could be Located 3](https://github.com/user-attachments/assets/f444c25d-ae39-4eaf-9e4e-41927f676dfa)

![Verified that Domain Services Could be Located 4](https://github.com/user-attachments/assets/5de037cc-6309-499c-b73d-7bd1da8174ab)

![Verified that Domain Services Could be Located 5](https://github.com/user-attachments/assets/afb0ae54-6ea4-43c2-be2e-ef03103f72f1)

![Verified that Domain Services Could be Located 6](https://github.com/user-attachments/assets/1ae65ced-5272-4787-a8a1-93622fbecc52)

![Verified fhat Domain Services Could be Located 7](https://github.com/user-attachments/assets/75154b70-67ea-41ce-88f7-c2b65c157d20)

📸 **Output from `ping` Commands for Hostname and IP Resolution**

![Output from ping Commands for Hostname and IP Resolution](https://github.com/user-attachments/assets/50a58e4a-5119-4ca6-bf5e-4155da8388c5)

📸 **Output from `nslookup` Commands for Hostname and IP Resolution**

![Output from nslookup Commands for Hostname and IP Resolution](https://github.com/user-attachments/assets/89ca04a7-5e98-40fa-af84-e1c062163573)

📸 **Command Prompt with `Ipconfig all` Showing Domain Suffix**

![Command Prompt with Ipconfig all Showing Domain Suffix](https://github.com/user-attachments/assets/7a8c2ef9-ddd0-42c7-9c3a-6cf824031e78)

**On Client Machines:**
- Used `nslookup` to confirm the DNS server `(192.168.1.10)` was responding
- Ran `gpupdate /force` and `gpresult /r` to check successful GPO delivery

📸 **Output from `nslookup` to Confirm the DNS Server Response for `AD-WIN11-01`**

![Output from `nslookup` to Confirm The DNS Server Response](https://github.com/user-attachments/assets/b2077a0c-d7a0-41fb-b93e-ce29116e3017)

📸 **Output from `gpupdate` Command for `AD-WIN11-01`**

![Output from `gpupdate` Command for `AD-WIN11-01`](https://github.com/user-attachments/assets/8974d5c9-c52c-4937-9196-8e14ff373ec6)

📸 **Output from `gpresult` Command for `AD-WIN11-01`**

![Output from `gpresult` Command for `AD-WIN11-01`](https://github.com/user-attachments/assets/795f2a4b-c930-4d9d-b2bf-1ceda5056d79)

![Output from `gpresult` Command for `AD-WIN11-01` 1](https://github.com/user-attachments/assets/3087e4d0-7ecd-4f17-95c2-ccf76b4fdb89)

📸 **Output from `nslookup` to Confirm The DNS Server Response for `AD-WIN11-02`**

![Output from `nslookup` to Confirm The DNS Server Response for `AD-WIN11-02`](https://github.com/user-attachments/assets/df5988db-2130-464e-a896-44735dda2ea8)

📸 **Output from `gpupdate` Command for `AD-WIN11-02`**

![Output from `gpupdate` Command for `AD-WIN11-02`](https://github.com/user-attachments/assets/6eb4e6da-f4b6-4347-a24a-bb04f9b31a16)

📸 **Output from `gpresult` Command for `AD-WIN11-02`**

![Output from `gpresult` Command for `AD-WIN11-02`](https://github.com/user-attachments/assets/1111636a-791b-47ff-b20d-f96c15e0c0bc)

![Output from `gpresult` Command for `AD-WIN11-02` 1](https://github.com/user-attachments/assets/5a403c0d-4d3b-4e67-8c34-6d3be2416ff6)

---

## 📁 5. Screenshot Storage

All screenshots for this section should be placed in:

  📂 [`06-Screenshots/DNS-Setup.png`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/06-Screenshots/V.%20DNS-Setup/README.md)
