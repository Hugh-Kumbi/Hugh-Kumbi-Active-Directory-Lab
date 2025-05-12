# ⚙️ Disable Services Configuration

This section describes the process of disabling unnecessary or insecure services on Windows Server to reduce the attack surface and improve overall security.

---

## 1. 🔍 Identifying Unnecessary Services

Start by identifying services that are not required for your specific environment. Use the services.msc console or PowerShell to review and disable unnecessary services that could pose security risks.

📸 **Identifying Unnecessary Services**

---

## 2. 🔕 Disabling Unnecessary Services via `Services.msc`

Open `services.msc` and disable services like Print Spooler, Remote Registry, and others that are not required for your environment. This reduces potential attack vectors.

📸 **Disabling Services via `Services.msc`**

---

## 3. 🖥️ Using PowerShell to Disable Services

Use PowerShell to disable specific services that are not required. For example, to disable Remote Desktop Services, you can run the following command:

```
Set-Service -Name "TermService" -StartupType Disabled
```

📸 **Using PowerShell to Disable Services**

---

## 4. ⚠️ Disabling Windows Defender Antivirus (if required)

If your organization uses a third-party antivirus solution, you may choose to disable Windows Defender Antivirus. Be sure to ensure that an alternative security solution is in place.

📸 **Disabling Windows Defender Antivirus**

---

## 5. 🛠️ Configuring Windows Update Service

Windows Update Service may be disabled temporarily to prevent automatic updates during critical maintenance. However, make sure updates are applied on a regular schedule.

📸 **Configuring Windows Update Service**

---

## 6. 📜 Using Group Policy to Disable Services

Group Policy can be used to disable services on multiple machines within an Active Directory environment. This is particularly useful in larger networks where manually disabling services on each machine is impractical.

📸 **Using Group Policy to Disable Services**

---

## 7. 🔍 Verifying Disabled Services

After disabling services, verify that the necessary services remain operational and that the disabled services no longer appear as running in the Task Manager or Services.msc.

📸 **Verifying Disabled Services**

---

## 8. 🧪 Testing System Stability

After disabling services, thoroughly test the system for stability and functionality to ensure that no critical services were accidentally disabled and that no adverse effects were introduced.

📸 **Testing System Stability**

---

Each image corresponds to a step described in 📂 `09-Infrastructure-Protection/III.Disable-Services.md`.
