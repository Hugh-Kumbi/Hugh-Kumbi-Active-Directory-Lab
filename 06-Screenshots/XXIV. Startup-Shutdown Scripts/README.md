# 🔧 Startup/Shutdown Scripts Configuration

This section describes the configuration of Startup and Shutdown Scripts in Group Policy, which are used to automate tasks that need to be performed when computers start up or shut down.

---

## 🛠️ 1. Creating Startup/Shutdown Scripts

Startup and shutdown scripts are used to perform specific tasks before the system starts or when it shuts down. These scripts can include tasks like updating software, clearing temporary files, or mapping network drives at startup.

📸 **Creating Startup/Shutdown Scripts**

---

## 2. ⚙️ Configuring the Startup/Shutdown Script in Group Policy

After creating the scripts, they can be configured in the Group Policy Management Console (GPMC) to apply to the desired systems. This ensures that the scripts run automatically during system startup or shutdown.

📸 **Configuring the Startup/Shutdown Script in Group Policy**

---

## 3. 🚀 Testing the Startup/Shutdown Script

To test the functionality, restart the computer to verify that the startup script runs correctly and shutdown to confirm that the shutdown script executes as expected.

📸 **Testing the Startup/Shutdown Script**

---

## 4. ❓ Troubleshooting Startup/Shutdown Scripts

If the scripts do not run as expected, you can troubleshoot by checking the Event Viewer for any errors, reviewing the script permissions, and ensuring that the correct GPOs are applied to the system.

📸 **Troubleshooting Startup/Shutdown Scripts**

---

## 5. 🔍 Verifying Script Application with `gpresult`

Use the gpresult command to verify that the startup and shutdown scripts are applied to the system. This helps ensure that the correct policies are in place.

📸 **Verifying Script Application with `gpresult`**

---

## 6. 📥 Applying Group Policy Updates

To ensure that the startup and shutdown scripts are applied to all relevant systems, run gpupdate to refresh the policies.

📸 **Applying Group Policy Updates**

---

Each image corresponds to a step described in 📂 `08-User-Environment-Management/VII.Startup-Shutdown-Scripts.md`.
