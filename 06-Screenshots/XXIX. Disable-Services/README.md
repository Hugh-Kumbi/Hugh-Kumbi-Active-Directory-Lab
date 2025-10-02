# ⚙️ Disable Services Configuration

This section describes the process of disabling unnecessary or insecure services on Windows Server to reduce the attack surface and improve overall security.

---

## 1. 🔍 Identifying Unnecessary Services

I began by identifying all the services that weren't required for our specific environment. I used the `services.msc` console to get a clear visual overview and then cross-referenced it with a PowerShell script to get a more detailed analysis. Once I had my list, I carefully disabled the unnecessary services that were identified as potential security risks, which really helped to lock down the system.

📸 **Identifying Unnecessary Services**

<img width="1920" height="909" alt="Identifying Unnecessary Services" src="https://github.com/user-attachments/assets/918209ff-315c-4317-ac47-075e7a6cd247" />

---

## 2. 🔕 Disabling Unnecessary Services via `Services.msc`

I started by opening the `services.msc` console to review everything that was running. I identified and disabled services that weren't needed for our secure server environment, starting with high-risk ones like `Print Spooler` and `Remote Registry`. It was a straightforward but effective step that immediately reduced our potential attack surface.

📸 **Disabling Services via `Services.msc`**

<img width="1920" height="909" alt="Disabling Unnecessary Services via" src="https://github.com/user-attachments/assets/a53309ea-e762-4abb-82be-8af768b326bc" />

---

## 3. 🖥️ Using PowerShell to Disable Services

I used PowerShell to handle the bulk of the service changes because it was faster and more precise for our deployment scripts. For instance, to ensure `Remote Desktop Services` were disabled across the board, I ran the command `Set-Service -Name "UmRdpService" -StartupType Disabled` and then stopped the service immediately. This methodical approach allowed me to consistently harden the systems by disabling a whole list of non-essential services we had identified beforehand.

```
Set-Service -Name "TermService" -StartupType Disabled
```

📸 **Using PowerShell to Disable Services for AD-WIN11-01**

<img width="1920" height="909" alt="Using PowerShell to Disable Services for AD-WIN-01" src="https://github.com/user-attachments/assets/a90857d5-230c-46ff-bb6e-c5f37808633a" /><br />

📸 **Using PowerShell to Disable Services  for AD-WIN11-02**

<img width="1920" height="909" alt="Using PowerShell to Disable Services for AD-WIN-01" src="https://github.com/user-attachments/assets/a90857d5-230c-46ff-bb6e-c5f37808633a" />

---

## 4. ⚠️ Disabling Windows Defender Antivirus

Since our Active Directory environment wasn't using a third-party antivirus solution at the time, I made the decision to leave `Windows Defender Antivirus` enabled to ensure we weren't left unprotected. However, I've noted that for the future rollout, once a dedicated enterprise-grade solution is fully implemented and verified, Windows Defender should be disabled to avoid any potential conflicts. I made sure to document that this critical step is contingent on confirming a functional alternative is actively protecting the systems.

---

## 5. 🛠️ Configuring Windows Update Service

I disabled the `Windows Update Service` temporarily to prevent any unexpected automatic reboots during our critical maintenance window. It was a necessary step to ensure system stability while we were applying our patches and configurations. Once the maintenance was complete, I made sure to re-enable it immediately and verified that our automated patch management system was in place to apply updates on our regular, controlled schedule.

📸 **Configuring Windows Update Service on `AD-WIN11-01`**

![Services Console Showing Windows Update Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/70f651b8-1c10-4816-9b66-562989c42040)

📸 **Configuring Windows Update Service on `AD-WIN11-02`**

![Services Console Showing Windows Update Settings on `AD-WIN11-02`](https://github.com/user-attachments/assets/ec731883-3c33-4451-ac11-44e745852c39)

---

## 6. 📜 Using Group Policy to Disable Services

For the broader network, I used Group Policy to disable the unnecessary services across all our domain-joined machines. It was the only practical way to manage it at scale—manually touching each workstation in an environment our size would have been impossible. I created and linked a new GPO to enforce those service settings, which consistently applied our security baseline across the entire Active Directory environment.

📸 **Using Group Policy to Disable Services**

![Disabled Spooler Services](https://github.com/user-attachments/assets/70570ba9-cf52-4597-a032-68a535894ffa)

![Disabled XblAuthManager](https://github.com/user-attachments/assets/cab4c7d5-1502-4f43-9ff7-e5bdee95ef7c)

![Disabled XblGameSave](https://github.com/user-attachments/assets/bc588387-0aa4-4ba5-a8a3-ed079f6f345f)

![Disabled XboxNetApiSvc](https://github.com/user-attachments/assets/e68db57e-cc0e-49a2-b81c-0926f3539259)

![Disabled XboxGipSvc](https://github.com/user-attachments/assets/8bac4bc9-f550-4a5f-847a-8181beb62241)

![Disabled Windows Media Player Network Sharing Service](https://github.com/user-attachments/assets/a46e5d49-115b-40ca-9218-b3a2bbfaa33e)

![Disabled Fax](https://github.com/user-attachments/assets/7ed41d05-f3f8-414b-8ba6-0f260aca3525)

![Disabled Remote Registry](https://github.com/user-attachments/assets/c1cd74a5-cbc2-4261-9f9d-6f437d7e501e)

![Disabled SNMP](https://github.com/user-attachments/assets/4086e017-8d02-4d55-ad33-80a35bbe248c)

![Disabled Telnet](https://github.com/user-attachments/assets/5674306e-65bf-442d-bfa7-310cd78cba33)

![Disabled Windows Search](https://github.com/user-attachments/assets/700b6048-d1b7-43a9-819d-6218dabc987d)

![Disabled Windows Update](https://github.com/user-attachments/assets/63fbbcae-82fa-48b4-8692-b36729b4a2cd)

![Disabled Windows Error Reporting](https://github.com/user-attachments/assets/e279cc96-8a32-4dad-b3f6-391d22544c25)

![Disabled Secondary Logon](https://github.com/user-attachments/assets/aa17976e-d9b6-4648-ba0c-88b6204aa513)

![Disabled Windows Insider Service](https://github.com/user-attachments/assets/cd0820c0-fd97-4e9f-98ac-b4a29b7cddbd)

---

## 7. 🔍 Verifying Disabled Services

Once I had disabled the services, my final verification was a two-part check. First, I confirmed that all our essential services were still up and running perfectly. Then, I cross-referenced the `Services.msc` console and Task Manager to ensure the disabled services—like `Print Spooler` and `Remote Registry`—were completely stopped and their startup type was set to 'Disabled'. I didn't just take the system's word for it; I physically saw that their status was blank and they were no longer consuming resources.

📸 **Verifying Services Console Showing Print Spooler Settings on `AD-WIN11-01`**

![Services Console Showing Print Spooler Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/9483b4f2-ea1c-4fe2-bf68-f2f0be760bf1)

📸 **Verifying Services Console Showing Print Spooler Settings on `AD-WIN11-02`**

![Services Console Showing Print Spooler Settings on `AD-WIN11-02`](https://github.com/user-attachments/assets/06d0d887-eeb9-41e1-9dc4-d9ac6122a471)

📸 **Verifying Services Console Showing RemoteRegistry Settings on `AD-WIN11-01`**

![Services Console Showing RemoteRegistry Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/29386e6e-ee0b-4a71-8578-d697d093c194)

📸 **Verifying Services Console Showing RemoteRegistry Settings on `AD-WIN11-02`**

![Services Console Showing RemoteRegistry Settings on `AD-WIN11-02`](https://github.com/user-attachments/assets/e5d5aee1-8638-4337-8150-835ae52a6614)

📸 **Verifying Services Console Showing Secondary Logon Settings on `AD-WIN11-01`**

![Services Console Showing Secondary Logon Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/cc711369-7376-4d91-bdf0-db593b53675f)

📸 **Verifying Services Console Showing Secondary Logon Settings on `AD-WIN11-02`**

![Services Console Showing Secondary Logon Settings on `AD-WIN11-02`](https://github.com/user-attachments/assets/6cc307cb-7512-406b-a213-cc2dd5792e76)

📸 **Verifying Services Console Showing SNMP Settings on `AD-WIN11-01`**

![Services Console Showing SNMP Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/8d2bf2cf-55e4-44a2-8608-f84501d29869)

📸 **Verifying Services Console Showing SNMP Settings on `AD-WIN11-02`**

<img width="1920" height="909" alt="Services Console Showing SNMP Settings on AD-WIN11-02" src="https://github.com/user-attachments/assets/4d693345-bace-4572-bdde-c28b100e5e29" />

📸 **Verifying Services Console Showing Windows Error Reporting Settings on `AD-WIN11-01`**

![Services Console Showing Windows Error Reporting Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/20a6ac90-c593-42f8-bc0f-d382cd3b5146)

📸 **Verifying Services Console Showing Windows Error Reporting Settings on `AD-WIN11-02`**

![Services Console Showing Windows Error Reporting Settings on `AD-WIN11-02`](https://github.com/user-attachments/assets/ccb9c651-fbe2-4123-b61f-49cbdf47372e)

📸 **Verifying Services Console Showing Windows Insider Service Settings on `AD-WIN11-01`**

![Services Console Showing Windows Insider Service Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/5e1db333-ed98-484e-860b-1ee091373d60)

📸 **Verifying Services Console Showing Windows Insider Service Settings on `AD-WIN11-02`**

![Services Console Showing Windows Insider Service Settings on `AD-WIN11-02`](https://github.com/user-attachments/assets/694f883e-642d-41f9-88ba-649985578bd4)

📸 **Verifying Services Console Showing Windows Media Player Network Sharing Service Settings on `AD-WIN11-01`**

![Services Console Showing Windows Media Player Network Sharing Service Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/4467ac4b-a911-4548-ace0-4e8f08af6544)

📸 **Verifying Services Console Showing Windows Media Player Network Sharing Service Settings on `AD-WIN11-02`**

![Services Console Showing Windows Media Player Network Sharing Service Settings on `AD-WIN11-02`](https://github.com/user-attachments/assets/28545b16-7646-4ba2-8602-b56289b7230d)

📸 **Verifying Services Console Showing Windows Search Settings on `AD-WIN11-01`**

![Services Console Showing Windows Search Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/07a20575-fed5-46d9-8a5c-f1dbc6136e01)

📸 **Verifying Services Console Showing Windows Search Settings on `AD-WIN11-02`**

![Services Console Showing Windows Search Settings on `AD-WIN11-02`](https://github.com/user-attachments/assets/7e1afc86-9c56-48b8-9e68-85f54b1bb883)

📸 **Verifying Services Console Showing Windows Update Settings on `AD-WIN11-01`**

![Services Console Showing Windows Update Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/70f651b8-1c10-4816-9b66-562989c42040)

📸 **Verifying Services Console Showing Windows Update Settings on `AD-WIN11-02`**

![Services Console Showing Windows Update Settings on `AD-WIN11-02`](https://github.com/user-attachments/assets/ec731883-3c33-4451-ac11-44e745852c39)

📸 **Verifying Services Console Showing Xbox Services Settings on `AD-WIN11-01`**

![Services Console Showing Xbox Services Settings on `AD-WIN11-01`](https://github.com/user-attachments/assets/2e5030cc-ba9a-4c4e-b2a1-fd93b686b291)

📸 **Verifying Services Console Showing Xbox Services Settings on `AD-WIN11-02`**

![Services Console Showing Xbox Services Settings on `AD-WIN11-02`](https://github.com/user-attachments/assets/09b277cc-28ed-4cbe-a526-ae7568fad5a2)

---

## 8. 🧪 Testing System Stability

After I disabled all the targeted services, my next critical step was to put the system through a rigorous testing regimen. I thoroughly tested for both stability and core functionality, rebooting several times and running through all our standard operational checks. This was to ensure that no critical dependencies had been accidentally broken and that the changes hadn't introduced any adverse effects on our applications or user workflows. I confirmed everything was running smoothly before signing off on the changes.

---

Each image corresponds to a step described in:<br />
📂 [`09-Infrastructure-Protection/III.Disable-Services.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/09-Infrastructure-Protection/III.%20Disable-Services.md)
