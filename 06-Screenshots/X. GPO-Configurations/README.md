# 🔧 Group Policy Configuration

This section showcases the structure and application of Group Policy Objects (GPOs) across the domain.

---

**1. Active Directory Users and Computers (ADUC) Showing OU Hierarchy**

- Illustrates the logical structure of Organizational Units (OUs), designed for clean GPO targeting and delegation.

📸 **ADUC Showing OU Hierarchy**

<img width="1920" height="909" alt="Active Directory Users and Computers (ADUC) Showing OU Hierarchy" src="https://github.com/user-attachments/assets/bd73f319-b5fb-4471-91d2-0144f0b791ba" />

---

**2. GPMC With List of GPOs**

- Displays all configured GPOs, including baseline policies, startup/shutdown scripts, and user environment configurations.

📸 **GPMC With List of GPOs**

![Group Policy Management Console - GPO List](https://github.com/user-attachments/assets/cddf40b7-62a0-4cc8-b8a9-dcf1289153cb)

---

**3. Link Status to Respective OUs**

- Verifies that GPOs are correctly linked to their intended OUs, ensuring the right policies apply to the right systems and users.

📸 **Link Status to Respective OUs**

![Link Status to Domain Root](https://github.com/user-attachments/assets/8419880b-5c0e-4bca-a39e-d3c28cf0d956)

![Link Status to Domain Controller](https://github.com/user-attachments/assets/1b625100-a06a-4aba-a13c-812f6016af31)

![Link Status to Groups OU](https://github.com/user-attachments/assets/439629b7-8078-450e-8756-7ec81a192a3c)

![Link Status to Tech OU](https://github.com/user-attachments/assets/4f1e9f37-e83f-4353-bea0-a0b7b3e51d34)

![Link Status to IT Computers](https://github.com/user-attachments/assets/e8c0540a-aac3-4f7a-acd3-c6c42398c65b)

---

**4. GPMC Showing GPO Inheritance Settings**

- Highlights how policy inheritance is handled, including any blocked inheritance or enforced GPOs.

📸 **GPMC Showing GPO Inheritance Settings**

![GPMC Showing GPO Inheritance Settings for Domain oot](https://github.com/user-attachments/assets/074de9ee-94c7-49cc-99be-05c6fa7346e2)

---

**5. WMI & Security Filter Applied**

- Demonstrates targeting of specific machines or users using WMI filters or security group filtering for granular control.

📸 **WMI Filter Applied**


📸 **Security Filter Applied**

---

**6. Command Line Results From `gpupdate`**

- Confirms successful refresh of Group Policy on a client system, ensuring policies are up to date.

📸 **Command Line Results From gpupdate**

![Command Line Results From gpupdate](https://github.com/user-attachments/assets/393227ba-3625-4c5f-b801-b0d39e827a24)

---

**7. Command Line Results From `gpresult`**

- Shows a summary of the applied policies on the system, confirming expected GPOs are enforced.

📸 **Command Line Results From gpresult**

![Group Policy Results 1](https://github.com/user-attachments/assets/6d3b0ed5-fea1-491e-94df-7df944c765e0)

![Grop Policy Results 2](https://github.com/user-attachments/assets/6bcddea7-d1d5-4e53-b2b6-20641a4e393b)

---

**8. Command Line Results From `repadmin syncall AdeP`**

- Validates successful Active Directory replication, ensuring GPOs are synchronized across domain controllers.

📸 **Command Line Results From Repadmin Syncall AdeP**

![Command Line Results From Repadmin Syncall AdeP](https://github.com/user-attachments/assets/e6cb722d-b5fc-41ca-973a-22f2f56adfc1)

---

**9. Event Viewer Logs Confirming GPO Application**

- Displays log entries that confirm the successful application of Group Policy on client systems, useful for troubleshooting.

📸 **Event Viewer logs confirming GPO application**

![Event Viewer logs Confirming GPO Application](https://github.com/user-attachments/assets/2b27071d-d616-4de8-bb5d-932dfeff5ae7)

---

Each image corresponds to a step described in 📂 03-Configuration/GPO-Configurations.md

