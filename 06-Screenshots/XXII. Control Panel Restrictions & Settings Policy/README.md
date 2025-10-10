# 🔧 Control Panel Restrictions & Settings Policy

Having configured the Control Panel Restrictions via Group Policy, I have successfully limited user access to only authorized Control Panel applets. This enhances security and reduces support calls by preventing users from modifying critical system settings.

---

## 1. 🔒 Configuring Control Panel Restrictions Using Group Policy

Having now implemented these settings, I can confirm that the Group Policy-based restrictions are actively preventing standard users from accessing specified Control Panel items. This effectively ensures that only authorized administrators can modify critical system settings, thereby enhancing our security posture and configuration stability.

📸 **Configuring Control Panel Restrictions Using Group Policy**

<img width="1920" height="909" alt="Configuring Control Panel Restrictions Using Group Policy" src="https://github.com/user-attachments/assets/4ce0ce81-99a3-4bfd-a0ea-b3c077fd3a70" />

---

## 2. 👁️‍🗨️ Enabling the Policy to Hide Specific Control Panel Items

Having completed the configuration, I specified the Control Panel items to be hidden. This has successfully made applets like "Power Options," "Programs and Features," and "System" inaccessible to standard users, effectively preventing unauthorized changes to these system configurations.

📸 **Policy to Hide Specific Control Panel Items**

![Control Panel Restrictions Showing Disallowed Control Panel Items](https://github.com/user-attachments/assets/b183592b-ca64-47e5-8647-75ee2bfc1cd3)

---

## 3. 🚫 Enabling the Policy to Disable Specific Control Panel Items

I have successfully implemented this by using the "Show only specified Control Panel items" policy and leaving the list blank, which effectively disables the Control Panel entirely for standard users. For a more targeted approach, I also configured policies to prohibit access to specific applets like "Personalization," preventing any user interaction with those settings altogether.

📸 **Enabling the Policy to Disable Specific Control Panel Items**

![Control Panel Restrictions Showing Only Specified Control Panel Items](https://github.com/user-attachments/assets/7d15f348-6cb5-43c5-a0c4-17d428e02947)

![Policy Setting - Prohibit Access to Control Panel](https://github.com/user-attachments/assets/46c89f91-bcc2-41e7-a160-f71dc1950c97)

---

## 4. 🔧 Applying the Control Panel Restrictions Policy Using GPO

Having completed the deployment, I linked the GPO containing the Control Panel restrictions to the "Employees" OU. I also applied security filtering to ensure the policy only applies to the "Authorized Users" security group, effectively targeting the restrictions to the appropriate user base.

📸 **Applying the Control Panel Restrictions Policy Using GPO**

<img width="1920" height="909" alt="Group Policy Management Console Showing the Control Panel Restrictions GPO and Link" src="https://github.com/user-attachments/assets/1bc923d6-41fa-4483-b915-aacbefc6a5f8" />

---

## 5. ✅ Verifying Policy Application with `gpresult`

Following the policy application, I used the `gpresult /h gp_report.html` command on user machines. The generated HTML report confirmed that the Control Panel Restrictions GPO was successfully received and applied, verifying the settings were targeting the correct users.

📸 **Verifying Policy Application with `gpresult` on `AD-WIN11-01`**

<img width="1920" height="909" alt="Final `gpresult` from `AD-WIN11-01`" src="https://github.com/user-attachments/assets/bf8dabb5-e54e-4b43-b505-8ed18dba2cbc" /><br /> 

<img width="1920" height="909" alt="Final `gpresult` from `AD-WIN11-01` 1" src="https://github.com/user-attachments/assets/4136cdf6-d75b-432e-9d34-134e718599c7" /><br /> 

<img width="1920" height="909" alt="Final `gpresult` from `AD-WIN11-01` 2" src="https://github.com/user-attachments/assets/79a3640c-5857-443c-bd7c-0440db54e338" /><br /> 

📸 **Verifying Policy Application with `gpresult` on `AD-WIN11-02`**

<img width="1920" height="909" alt="Final `gpresult` from `AD-WIN11-02`" src="https://github.com/user-attachments/assets/f38d28b7-ea2e-4525-b083-e88746fbb584" /><br /> 

<img width="1920" height="909" alt="Final `gpresult` from `AD-WIN11-02` 1" src="https://github.com/user-attachments/assets/1fe75bf2-c578-4b56-bbfb-42c0090222c2" /><br /> 

<img width="1920" height="909" alt="Final `gpresult` from `AD-WIN11-02` 2" src="https://github.com/user-attachments/assets/93f1f582-840c-4087-ada8-40d37e7036ed" />

---

## 6. ❓ Troubleshooting Control Panel Restrictions

When the policy did not apply initially for a subset of users, I used the Group Policy Results wizard in the GPMC and cross-referenced the findings with operational logs in Event Viewer. This diagnostic process quickly identified a network connectivity issue that was preventing the policy from downloading, which we were then able to resolve.

---

Each image corresponds to a step described in:<br /> 
📂 [`08-User-Environment-Management/IX. Control Panel Restrictions & Settings Policy`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/08-User-Environment-Management/IX.%20Control%20Panel%20Restrictions%20&%20Settings%20Policy.md)

