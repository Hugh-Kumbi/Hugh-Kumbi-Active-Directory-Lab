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
