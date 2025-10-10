# 🔧 Control Panel Restrictions Policy

Having configured the Control Panel Restrictions via Group Policy, I have successfully limited user access to only authorized Control Panel applets. This enhances security and reduces support calls by preventing users from modifying critical system settings.

---

## 1. 🔒 Configuring Control Panel Restrictions Using Group Policy

Having now implemented these settings, I can confirm that the Group Policy-based restrictions are actively preventing standard users from accessing specified Control Panel items. This effectively ensures that only authorized administrators can modify critical system settings, thereby enhancing our security posture and configuration stability.

📸 **Configuring Control Panel Restrictions Using Group Policy**

---

## 2. 👁️‍🗨️ Enabling the Policy to Hide Specific Control Panel Items

Having completed the configuration, I specified the Control Panel items to be hidden. This has successfully made applets like "Power Options," "Programs and Features," and "System" inaccessible to standard users, effectively preventing unauthorized changes to these system configurations.

📸 Enabling the Policy to Hide Specific Control Panel Items

---

## 3. 🚫 Enabling the Policy to Disable Specific Control Panel Items

I have successfully implemented this by using the "Show only specified Control Panel items" policy and leaving the list blank, which effectively disables the Control Panel entirely for standard users. For a more targeted approach, I also configured policies to prohibit access to specific applets like "Personalization," preventing any user interaction with those settings altogether.

📸 Enabling the Policy to Disable Specific Control Panel Items

---

## 4. 🔧 Applying the Control Panel Restrictions Policy Using GPO

Having completed the deployment, I linked the GPO containing the Control Panel restrictions to the "Employees" OU. I also applied security filtering to ensure the policy only applies to the "Authorized Users" security group, effectively targeting the restrictions to the appropriate user base.

📸 **Applying the Control Panel Restrictions Policy Using GPO**

---

## 5. ✅ Verifying Policy Application with `gpresult`

Following the policy application, I used the `gpresult /h gp_report.html` command on user machines. The generated HTML report confirmed that the Control Panel Restrictions GPO was successfully received and applied, verifying the settings were targeting the correct users.

📸 **Verifying Policy Application with `gpresult`**

---

## 6. ❓ Troubleshooting Control Panel Restrictions

When the policy did not apply initially for a subset of users, I used the Group Policy Results wizard in the GPMC and cross-referenced the findings with operational logs in Event Viewer. This diagnostic process quickly identified a network connectivity issue that was preventing the policy from downloading, which we were then able to resolve.

📸 **Troubleshooting Control Panel Restrictions**

---

Each image corresponds to a step described in:<br /> 
📂 [`08-User-Environment-Management/IX. Control Panel Restrictions Policy`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/08-User-Environment-Management/IX.%20Control%20Panel%20Restrictions%20Policy.md)

