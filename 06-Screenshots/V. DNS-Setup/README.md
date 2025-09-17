# 🌐 DNS Configuration for Active Directory

This section documents the DNS setup and verification process that supports the Active Directory domain infrastructure. Proper DNS configuration ensures reliable name resolution for domain-joined devices and critical services like logon, replication, and Group Policy.

---

**1. DNS Manager Showing Forward Lookup Zone for `hughdomain.local`**

- Confirms that the primary zone for the AD domain has been created and is active.

📸 **Forward Lookup Zone For `hughdomain.local`**

![DNS Manager Showing Forward Lookup Zone for hughdomain](https://github.com/user-attachments/assets/c51b04af-24b8-40e5-858e-547e8d207033)

**2. Reverse Lookup Zone Creation Wizard**

- Displays the steps taken to create a reverse lookup zone for IP-to-hostname resolution.

📸 **Reverse Lookup Zone Creation Wizard**

<img width="1920" height="909" alt="DNS Server Post Configuration Reverse Lookup Zone 6" src="https://github.com/user-attachments/assets/c4d8b6ce-f510-4d7c-8769-05de37155649" /><br />

**3. DNS Manager with `msdcs` and SRV Records Visible**

- Shows critical service records (SRV) under the `_msdcs` folder, which are essential for locating domain controllers.

📸 **DNS Manager with `msdcs` and SRV Records Visible**

<img width="1920" height="909" alt="DNS Manager With msdcs and SRV Records Visible" src="https://github.com/user-attachments/assets/257fa471-9ec8-4766-9200-5deb5b6711b3" /><br />

**4. Host Records for Domain Members**

- Verifies that A (Host) records have been created for key domain devices, enabling name-to-IP mapping.

📸 **Host Records for Domain Members**

<img width="1920" height="909" alt="Host Records for Domain Members" src="https://github.com/user-attachments/assets/a9ef5ae8-7900-422a-ba51-b80a6319bd5d" />

**5. Reverse Lookup Zone Configuration in DNS Manager**

- Displays the zone set up for reverse DNS, ensuring that IP addresses can be resolved to hostnames.

📸 **Reverse Lookup Zone Configuration in DNS Manager**

![Reverse Lookup Zone Configuration in DNS Manager](https://github.com/user-attachments/assets/03a2ff6e-c85f-4947-8917-9263d655d7be)

**6. PTR Record List**

- Lists pointer (PTR) records confirming successful reverse resolution for domain-joined clients and servers.

📸 **PTR Record List**

![PTR Record List](https://github.com/user-attachments/assets/84c3653f-b565-4bc8-a490-c8c1b58803ca)

**7. Verified that Domain Services could be Located**

- Demonstrates that DNS is correctly resolving domain services such as Kerberos, LDAP, and GC.

📸 **Verified that Domain Services could be Located**

![Verified that Domain Services Could be Located](https://github.com/user-attachments/assets/506cd97a-d99f-4ea0-ba4d-24cba15e9648)

![Verified that Domain Services Could be Located 1](https://github.com/user-attachments/assets/659148cc-76cd-4a77-b737-22ca71919597)

![Verified that Domain Services Could be Located 2](https://github.com/user-attachments/assets/425b6d39-320b-4b11-888f-e2e2365293b0)

![Verified that Domain Services Could be Located 3](https://github.com/user-attachments/assets/f444c25d-ae39-4eaf-9e4e-41927f676dfa)

![Verified that Domain Services Could be Located 4](https://github.com/user-attachments/assets/5de037cc-6309-499c-b73d-7bd1da8174ab)

![Verified that Domain Services Could be Located 5](https://github.com/user-attachments/assets/afb0ae54-6ea4-43c2-be2e-ef03103f72f1)

![Verified that Domain Services Could be Located 6](https://github.com/user-attachments/assets/1ae65ced-5272-4787-a8a1-93622fbecc52)

![Verified fhat Domain Services Could be Located 7](https://github.com/user-attachments/assets/75154b70-67ea-41ce-88f7-c2b65c157d20)

**8. Output from `ping` Commands for Hostname and IP Resolution**

- Shows successful responses when pinging devices by name and IP, confirming bidirectional DNS resolution.

📸 **Output from `ping` Commands for Hostname and IP Resolution**

![Output from ping Commands for Hostname and IP Resolution](https://github.com/user-attachments/assets/50a58e4a-5119-4ca6-bf5e-4155da8388c5)

**9. Output from `nslookup` Commands For Hostname and IP Resolution**

- Displays results from `nslookup` queries using both hostnames and IP addresses. Confirms that the DNS server correctly resolves internal domain names to IPs and supports reverse lookup functionality. This validates proper DNS integration with Active Directory services.

📸 **Output from `nslookup` Commands for Hostname and IP Resolution**

![Output from nslookup Commands for Hostname and IP Resolution](https://github.com/user-attachments/assets/89ca04a7-5e98-40fa-af84-e1c062163573)

10. **Command Prompt with `ipconfig /all` Showing Domain Suffix**

- Displays full DNS configuration of the client, including domain suffix and DNS server IP.

📸 **Command Prompt with `ipconfig /all` Showing Domain Suffix**

![Command Prompt with Ipconfig all Showing Domain Suffix](https://github.com/user-attachments/assets/7a8c2ef9-ddd0-42c7-9c3a-6cf824031e78)

**11. Output From `nslookup` to Confirm the DNS Server Response**

- Confirms that queries are being answered by the correct internal DNS server, with accurate forward and reverse resolution.

📸 **Output From `nslookup` to Confirm the DNS Server Response for AD-WIN11-01**

![Output from `nslookup` to Confirm The DNS Server Response](https://github.com/user-attachments/assets/b2077a0c-d7a0-41fb-b93e-ce29116e3017)

📸 **Output From `nslookup` to Confirm the DNS Server Response for AD-WIN11-02**

![Output from `nslookup` to Confirm The DNS Server Response for `AD-WIN11-02`](https://github.com/user-attachments/assets/df5988db-2130-464e-a896-44735dda2ea8)

**12. Output From `gpupdate` Command**

- Verifies successful Group Policy update via DNS-based domain controller discovery.

📸 **Output From `gpupdate` Command for AD-WIN11-01**

![Output from `gpupdate` Command for `AD-WIN11-01`](https://github.com/user-attachments/assets/8974d5c9-c52c-4937-9196-8e14ff373ec6)

📸 **Output From `gpupdate` Command for AD-WIN11-02**

![Output from `gpupdate` Command for `AD-WIN11-02`](https://github.com/user-attachments/assets/6eb4e6da-f4b6-4347-a24a-bb04f9b31a16)

**13. Output From `gpresult` Command**

- Confirms GPOs are applied, indirectly verifying DNS resolution and domain controller accessibility.

📸 **Output From `gpresult` Command for AD-WIN11-01**

![Output from `gpresult` Command for `AD-WIN11-01`](https://github.com/user-attachments/assets/795f2a4b-c930-4d9d-b2bf-1ceda5056d79)

![Output from `gpresult` Command for `AD-WIN11-01` 1](https://github.com/user-attachments/assets/3087e4d0-7ecd-4f17-95c2-ccf76b4fdb89)

📸 **Output From `gpresult` Command for AD-WIN11-02**

![Output from `gpresult` Command for `AD-WIN11-02`](https://github.com/user-attachments/assets/1111636a-791b-47ff-b20d-f96c15e0c0bc)

![Output from `gpresult` Command for `AD-WIN11-02` 1](https://github.com/user-attachments/assets/5a403c0d-4d3b-4e67-8c34-6d3be2416ff6)

---

Each image corresponds to a step described in:<br />
[`📂 03-Configuration/DNS-Setup.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/03-Configuration/II.%20DNS-Setup.md)
