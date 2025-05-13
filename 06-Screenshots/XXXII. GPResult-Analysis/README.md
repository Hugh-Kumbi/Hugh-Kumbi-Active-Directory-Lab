# 🖥️ Computer GPO Report

---

This section presents the Group Policy Results (GPResult) for the computer-level settings applied in the Active Directory environment. Using the gpresult command, I generated a detailed report to verify that the intended Group Policies were correctly applied to the client machine.

## 1. ✨ Generating Computer GPO Report

I used the following command in Command Prompt (Run as Administrator) to generate the report:

```
gpresult /S CLIENT-PC /SCOPE COMPUTER /H Computer_GPO_Report.html
```

This command created an HTML report showing all policies applied at the computer level.

📸 **Generating Computer GPO Report**

---

## 2. 🔓 Opening the GPO Report

I opened the Computer_GPO_Report.html file in a web browser to examine the computer configuration policies that were applied.

📸 **Viewing Computer GPO Report in Browser**

---

## 3. ✔️ Verifying Applied Policies

The report includes essential details such as:

OS and computer name

Applied Group Policies

Resultant Set of Policy (RSoP) summary

Success or failure status for each setting

📸 **Group Policy Results Summary**

---

## 4. ❓ Troubleshooting GPO Issues

If certain policies did not apply as expected, I reviewed the denied policies, reason for filtering, and GPO status from the report to troubleshoot potential misconfigurations.

📸 **GPO Denied or Not Applied**

---

By analyzing this computer-level GPResult report, I confirmed that Group Policies related to firewall, security settings, scripts, and drive encryption were correctly applied to the workstation.

---

# 👤 User GPO Report
This section contains the Group Policy Results (GPResult) for the user-level settings applied in the Active Directory lab. I generated this report to verify that all configured user policies were successfully applied to the logged-in domain user.

## 1. ✨ Generating User GPO Report

I opened Command Prompt (Run as Administrator) on the client machine and executed the following command:

```
gpresult /S CLIENT-PC /SCOPE USER /H User_GPO_Report.html
```

This command created an HTML file containing detailed information about all user-level policies applied.

📸 **Running User GPResult Command**

---

## 2. 👁️ Viewing the Report

I opened the User_GPO_Report.html file in a web browser to review the configuration.

📸 **User GPO Report in Browser**

---

## 3. 🗝️ Key Policy Settings Verified

The report helped me confirm the successful application of:

Folder redirection

Mapped drives

Logon/logoff scripts

Desktop wallpaper

Control Panel restrictions

📸 **Summary of Applied User Policies**

---

## 4. ❓ Troubleshooting User Policy Application

I reviewed filtering, denied policies, and slow link detection if expected settings weren’t applied.

📸 **Troubleshooting User GPO Issues**

---

By completing this report, I ensured that all user-specific configurations were enforced correctly across domain-joined Windows clients, contributing to a secure and consistent environment.
