# 🔧 Logon/Logoff Scripts Configuration

This section outlines the configuration of Logon and Logoff Scripts in Group Policy, which are used to automate tasks when users log on or log off from their workstations.

---

## 1. 📜 Creating Logon/Logoff Scripts

Logon and logoff scripts can be created and configured to run automatically whenever a user logs on or off the system. These scripts are typically used for environment setup, file mappings, network configurations, etc.

📸 **Creating Logon/Logoff Scripts**

---

## 2. 👨‍💻 Configuring the Logon/Logoff Script in Group Policy

Once the scripts are created, they can be assigned through Group Policy, allowing them to be applied to users in specific OUs or security groups.

📸 **Configuring the Logon/Logoff Script in Group Policy**

---

## 3. 🖥️ Testing Logon/Logoff Script Execution

It is essential to test the scripts to ensure they execute properly when users log on or off. Using tools like gpresult or reviewing Event Viewer logs can help verify proper execution.

📸 **Testing Logon/Logoff Script Execution**

---

## 4. ❓ Troubleshooting Logon/Logoff Scripts

If the scripts do not execute as expected, troubleshooting steps include checking script permissions, ensuring proper network connectivity, and reviewing Event Viewer logs for any error messages related to script execution.

📸 **Troubleshooting Logon/Logoff Scripts**

---

## 5. 🔍 Verifying the Script with `gpresult`

After configuration, use the gpresult command to ensure that the logon/logoff script has been applied to the target systems and users.

📸 **Verifying the Script with `gpresult`**

---

## 6. 🔄 Applying Group Policy Updates

Run gpupdate to manually refresh Group Policy and apply the logon/logoff scripts on all target systems.

📸 **Applying Group Policy Updates**

---

Each image corresponds to a step described in 📂 `08-User-Environment-Management/V.Logon-Logoff-Scripts-Config.md`.
