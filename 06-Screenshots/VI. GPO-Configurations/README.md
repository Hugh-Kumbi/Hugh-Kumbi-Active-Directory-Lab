# 🔧 Group Policy Configuration

This section showcases the structure and application of Group Policy Objects (GPOs) across the domain.

---

**1. Active Directory Users and Computers (ADUC) Showing OU Hierarchy**

- Illustrates the logical structure of Organizational Units (OUs), designed for clean GPO targeting and delegation.


**2. GPMC With List of GPOs**

- Displays all configured GPOs, including baseline policies, startup/shutdown scripts, and user environment configurations.


**3. Link Status to Respective OUs**

- Verifies that GPOs are correctly linked to their intended OUs, ensuring the right policies apply to the right systems and users.


**4. GPMC Showing GPO Inheritance Settings**

- Highlights how policy inheritance is handled, including any blocked inheritance or enforced GPOs.


**5. Example of WMI or Security Filter Applied**

- Demonstrates targeting of specific machines or users using WMI filters or security group filtering for granular control.


**6. Command Line Results From `gpupdate`**

- Confirms successful refresh of Group Policy on a client system, ensuring policies are up to date.


**7. Command Line Results From `gpresult`**

- Shows a summary of the applied policies on the system, confirming expected GPOs are enforced.


**8. Command Line Results From `repadmin syncall AdeP`**

- Validates successful Active Directory replication, ensuring GPOs are synchronized across domain controllers.


**9. Event Viewer Logs Confirming GPO Application**

- Displays log entries that confirm the successful application of Group Policy on client systems, useful for troubleshooting.


---

Each image corresponds to a step described in 📂 03-Configuration/GPO-Configurations.md

