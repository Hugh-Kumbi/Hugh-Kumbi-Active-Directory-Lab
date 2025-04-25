# 🌐 DNS Configuration for Active Directory

This section documents the DNS setup and verification process that supports the Active Directory domain infrastructure. Proper DNS configuration ensures reliable name resolution for domain-joined devices and critical services like logon, replication, and Group Policy.

---

## 📸 Screenshot Descriptions:

**1. DNS Manager Showing Forward Lookup Zone for `hughdomain.local`**

- Confirms that the primary zone for the AD domain has been created and is active.

![DNS Manager Showing Forward Lookup Zone For hughdomain.local](https://github.com/user-attachments/assets/49da0768-4f2f-4e93-89a0-7497c99bec09)

**2. Reverse Lookup Zone Creation Wizard**

- Displays the steps taken to create a reverse lookup zone for IP-to-hostname resolution.

![Reverse Lookup Zone Creation Wizard](https://github.com/user-attachments/assets/10ebd273-c1a7-4e61-8323-b29e8f0225b2)

**3. DNS Manager With `msdcs` and SRV Records Visible**

- Shows critical service records (SRV) under the `_msdcs` folder, which are essential for locating domain controllers.

![DNS Manager With msdcs and SRV Records Visible](https://github.com/user-attachments/assets/6bdf6414-3673-4d76-91bb-3635bb6687bc)

**4. Host Records for Domain Members**

- Verifies that A (Host) records have been created for key domain devices, enabling name-to-IP mapping.

![Host Records For Domain Members](https://github.com/user-attachments/assets/799d22f0-446d-4598-810b-0c1c1d01e820)

**5. Reverse Lookup Zone Configuration in DNS Manager**

- Displays the zone set up for reverse DNS, ensuring that IP addresses can be resolved to hostnames.

![Reverse Lookup Zone Configuration in DNS Manager](https://github.com/user-attachments/assets/60a91dd9-dff6-43f8-9377-c609b3e6f845)

**6. PTR Record List**

- Lists pointer (PTR) records confirming successful reverse resolution for domain-joined clients and servers.

![PTR Record List](https://github.com/user-attachments/assets/e4d77d55-e09a-4fcf-a2cf-062d0f4be1e1)

**7. Verified That Domain Services Could Be Located**

- Demonstrates that DNS is correctly resolving domain services such as Kerberos, LDAP, and GC.

![Verified That Domain Services Could Be Located](https://github.com/user-attachments/assets/d1886a50-33e2-4383-a1cc-c511cfecae4a)

**8. Output From `ping` Commands for Hostname and IP Resolution**

- Shows successful responses when pinging devices by name and IP, confirming bidirectional DNS resolution.

![Output From Ping Commands For Hostname and IP Resolution](https://github.com/user-attachments/assets/4399c704-b426-4fd2-a349-3532c22f2d9d)

**9. Output From `nslookup` Commands For Hostname and IP Resolution:**

- Displays results from `nslookup` queries using both hostnames and IP addresses. Confirms that the DNS server correctly resolves internal domain names to IPs and supports reverse lookup functionality. This validates proper DNS integration with Active Directory services.

![Output From `nslookup` Commands For Hostname and IP Resolution](https://github.com/user-attachments/assets/d166a456-0d28-4956-adc6-3c537ed42c6e)

**10. Command Prompt With `ipconfig /all` Showing Domain Suffix**

- Displays full DNS configuration of the client, including domain suffix and DNS server IP.

![Command Prompt With Ipconfig All Showing Domain Suffix](https://github.com/user-attachments/assets/d65ecde3-ce87-4e26-ad71-4946ab0d98c0)

**11. Output From `nslookup` to Confirm the DNS Server Response**

- Confirms that queries are being answered by the correct internal DNS server, with accurate forward and reverse resolution.

![Output From `nslookup` to Confirm The DNS Server Response](https://github.com/user-attachments/assets/05855f94-6b9f-4bd7-a129-b205c8993f35)

**12. Output From `gpupdate` Command**

- Verifies successful Group Policy update via DNS-based domain controller discovery.

![Output From `gpupdate` Command](https://github.com/user-attachments/assets/284e084a-7b85-455d-abbf-9117d30b444f)

**13. Output From `gpresult` Command**

- Confirms GPOs are applied, indirectly verifying DNS resolution and domain controller accessibility.

![Output From `gpresult` Command](https://github.com/user-attachments/assets/310ebd8a-498f-4426-bd5a-96ef72c4823c)

---

Each image corresponds to a step described in `📂 03-Configuration/DNS-Setup.md`
