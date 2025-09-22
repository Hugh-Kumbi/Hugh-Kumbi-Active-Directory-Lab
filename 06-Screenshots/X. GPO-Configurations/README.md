# 🔧 Group Policy Configuration

This section showcases the structure and application of Group Policy Objects (GPOs) across the domain.

---

**1. Active Directory Users and Computers (ADUC) Showing OU Hierarchy**

- Illustrates the logical structure of Organizational Units (OUs), designed for clean GPO targeting and delegation.

📸 **ADUC Showing OU Hierarchy**

<img width="1920" height="909" alt="Active Directory Users and Computers (ADUC) Showing OU Hierarchy" src="https://github.com/user-attachments/assets/3ff7c471-fba8-49c1-9438-7c0aaa92fa3a" /><br />

<img width="1920" height="909" alt="Active Directory Users and Computers (ADUC) Showing OU Hierarchy 1" src="https://github.com/user-attachments/assets/79a49d22-d88a-45a9-b41d-e9b45435384a" />

---

**2. GPMC with List of GPOs**

- Displays all configured GPOs, including baseline policies, startup/shutdown scripts, and user environment configurations.

📸 **GPMC with List of GPOs**

<img width="1920" height="909" alt="GPMC With List of GPOs" src="https://github.com/user-attachments/assets/3e4e5d94-0192-4e77-b2fe-eeed535764d3" />

---

**3. Link Status to Respective OUs**

- Verifies that GPOs are correctly linked to their intended OUs, ensuring the right policies apply to the right systems and users.

📸 **Link Status to Respective OUs**

<img width="1920" height="909" alt="Link Status to Domain Root" src="https://github.com/user-attachments/assets/0beb3f76-8455-4979-a7e9-df1096964e67" /><br />

<img width="1920" height="909" alt="Link Status to Domain Controller" src="https://github.com/user-attachments/assets/20fe3942-ba7a-4253-a659-c13133411d16" /><br />

<img width="1920" height="909" alt="Link Status to Employees OU" src="https://github.com/user-attachments/assets/938e7fc0-b2fd-4eca-89ff-bb323f0e3d07" /><br />

<img width="1920" height="909" alt="Link Status to MeiVaultComputers OU" src="https://github.com/user-attachments/assets/38dd2f34-ac34-484b-99de-fcdd180da44d" />

---

**4. GPMC Showing GPO Inheritance Settings**

- Highlights how policy inheritance is handled, including any blocked inheritance or enforced GPOs.

📸 **GPMC Showing GPO Inheritance Settings**

<img width="1920" height="909" alt="GPMC Showing GPO Inheritance Settings" src="https://github.com/user-attachments/assets/2b5316bf-278c-43b2-aa4c-05c408220021" />

---

**5. WMI & Security Filter Applied**

- Demonstrates targeting of specific machines or users using WMI filters or security group filtering for granular control.

📸 **WMI Filter Applied**

<img width="1920" height="909" alt="WMI Filter Applied" src="https://github.com/user-attachments/assets/93e7193c-fab6-41a8-8dda-879cc819adda" /><br />

📸 **Security Filter Applied**

<img width="1920" height="909" alt="Security Filter Applied" src="https://github.com/user-attachments/assets/e61dbe3f-2119-43b0-8275-96cfe0bebe09" /><br />

<img width="1920" height="909" alt="Security Filter Applied 1" src="https://github.com/user-attachments/assets/1804df48-2947-494a-8941-45bd6e4e0c38" /><br />

<img width="1920" height="909" alt="Security Filter Applied 3" src="https://github.com/user-attachments/assets/e6f76883-9886-4a72-8f96-9346653ce863" /><br />

<img width="1920" height="909" alt="Security Filter Applied 2" src="https://github.com/user-attachments/assets/99c02a0c-0f28-4d64-ac6b-35f96c5a5f87" />

---

**6. Command Line Results from `gpupdate`**

- Confirms successful refresh of Group Policy on a client system, ensuring policies are up to date.

📸 **Command Line Results from `gpupdate on AD-WIN11-01`**

<img width="1920" height="909" alt="Command Line Results from gpupdate on AD-WIN11-01" src="https://github.com/user-attachments/assets/41826450-1146-41d9-96c9-bdcd52d27913" /><br />

📸 **Command Line Results from `gpupdate on AD-WIN11-02`**

<img width="1920" height="909" alt="Command Line Results from gpupdate on AD-WIN11-02" src="https://github.com/user-attachments/assets/7f0712eb-03c3-482b-b612-57857fd01003" />

---

**7. Command Line Results from `gpresult`**

- Shows a summary of the applied policies on the system, confirming expected GPOs are enforced.

📸 **Command Line Results from `gpresult on AD-WIN11-01`**

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-01" src="https://github.com/user-attachments/assets/18ddef13-7d98-464b-a832-1368df0658b5" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-01 1" src="https://github.com/user-attachments/assets/11880d48-7cb0-4022-bc07-5237ce9643d2" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-01 2" src="https://github.com/user-attachments/assets/af2add1e-cbf8-4920-aaaf-fb0b4351af76" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-01 3" src="https://github.com/user-attachments/assets/d2e04722-49aa-4918-b633-ecd2af19358b" /><br />

📸 **Command Line Results from `gpresult on AD-WIN11-02`**

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-02" src="https://github.com/user-attachments/assets/6ec30dd0-7908-475a-a7fc-b8ee47fddd79" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-02 1" src="https://github.com/user-attachments/assets/69a415e4-9a35-463d-a468-fc67b491b886" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-02 2" src="https://github.com/user-attachments/assets/474653f7-5c7b-4302-b729-4c44da093cdb" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-02 3" src="https://github.com/user-attachments/assets/e05a1653-6ae6-4934-8fb1-2b34e7f88149" />

---

**8. Command Line Results from `repadmin syncall AdeP`**

- Validates successful Active Directory replication, ensuring GPOs are synchronized across domain controllers.

📸 **Command Line Results from Repadmin Syncall AdeP**

<img width="1920" height="909" alt="Command Line Results from Repadmin Syncall AdeP" src="https://github.com/user-attachments/assets/636556ea-0c17-44d8-ac34-1151c18b3ec6" />

---

**9. Event Viewer Logs Confirming GPO Application**

- Displays log entries that confirm the successful application of Group Policy on client systems, useful for troubleshooting.

📸 **Event Viewer Logs confirming GPO application**

<img width="1920" height="909" alt="Event Viewer logs confirming GPO application" src="https://github.com/user-attachments/assets/ade41b66-6fff-404d-b14d-51b15f670754" />

---

Each image corresponds to a step described in: <br />
📂 [`03-Configuration/VII. GPO-Configurations.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/03-Configuration/VII.%20GPO-Configurations.md)
