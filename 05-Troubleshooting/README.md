# 🛠️ Active Directory Troubleshooting

## 📘 Overview

This section of the Active Directory Lab focuses on identifying and resolving common issues encountered within an Active Directory environment. It provides insights into typical problems, their symptoms, and step-by-step solutions to ensure a stable and secure domain infrastructure.

---

## ⚠️ Common Issues and Resolutions

### 🙅 1. Group Policy Not Applying

**Symptoms:**
* Group Policy Objects (GPOs) not applying to users or computers.
* Settings not reflecting as expected on client machines.

**Troubleshooting Steps:**
- **Verify GPO Linkage and Scope:**
  - Ensure the GPO is linked to the correct Organizational Unit (OU).
  - Confirm that the user or computer object resides in the OU where the GPO is applied.
  - Check security filtering and WMI filtering settings.
- **Use `gpresult` or Group Policy Results Wizard:**
  - Run `gpresult /h gpresult.html` on the client machine to generate a report.
  - Analyze the report for any errors or denied GPOs.
- **Check Event Viewer Logs:**
- Navigate to 📂 `Event Viewer > Applications and Services Logs > Microsoft > Windows > GroupPolicy > Operational`.
- Look for warning or error events related to Group Policy processing.

### 📚 Reference: 

[Applying Group Policy troubleshooting guidance](https://learn.microsoft.com/en-us/troubleshoot/windows-server/group-policy/applying-group-policy-troubleshooting-guidance)

---

### 📇 2. Active Directory Replication Failures

**Symptoms:**
- Inconsistent directory information across domain controllers.
- Errors during replication attempts.

**Troubleshooting Steps:**
- **Use `repadmin` Tool:**
  - Run `repadmin /replsummary` to get a summary of replication status.
  - Use `repadmin /showrepl` to view detailed replication information.
- **Check DNS Configuration:**
  - Ensure all domain controllers can resolve each other's Fully Qualified Domain Names (FQDNs).
  - Verify that the correct DNS records exist for each domain controller.
**Monitor Event Logs:**
  - Look for replication-related errors in the `Directory Service` event log.

### 📚 Reference: 

[Active Directory replication troubleshooting guidance](https://learn.microsoft.com/en-us/troubleshoot/windows-server/active-directory/troubleshoot-adreplication-guidance)

---

## 👥 3. User Account Lockouts

Symptoms:
- Users are unable to log in due to account lockouts.
- Frequent lockout events in the security logs.
**Troubleshooting Steps:**
- **Identify the Source of Lockouts:**
  - Use the `Account Lockout and Management Tools` to trace the source.
  - Analyze the `Security` event logs for Event ID 4740.
- **Check for Cached Credentials:**
  - Ensure that users are not using outdated credentials on other devices or services.
- **Review Account Lockout Policies:**
  -  📂 Navigate to `Group Policy Management > Computer Configuration > Policies > Windows Settings > Security Settings > Account Policies > Account Lockout Policy`.
  - Adjust thresholds as necessary.

### 📚 Reference: 

[Troubleshooting the most common Active Directory account issues](https://www.youtube.com/watch?v=AhCWa2-75y8)

---

## 🎛 4. DNS Configuration Issues

**Symptoms:**
- Domain controllers unable to locate each other.
- Clients experiencing name resolution failures.
**Troubleshooting Steps:**
- **Verify DNS Settings:**
  - Ensure that all domain controllers and clients are pointing to the correct internal DNS servers.
- **Check for Missing or Incorrect DNS Records:**
  - Use `nslookup` to verify SRV and A records for domain controllers.
- **Clear DNS Cache:**
- Run `ipconfig /flushdns` to clear the DNS resolver cache on clients.

### 📚 Reference: 

[Techniques to troubleshoot Active Directory issues](https://www.techtarget.com/searchwindowsserver/tip/Techniques-to-troubleshoot-Active-Directory-issues)

---

## 🛠️ 5. Tools and Commands

- `dcdiag`: Diagnoses the health of domain controllers.
  - Usage: `dcdiag /v /c /d /e /s:DCName > dcdiag.log`
- `repadmin`: Monitors and troubleshoots replication issues.
  - Usage: `repadmin /replsummary`
- `gpresult`: Displays the Resultant Set of Policy (RSoP) information.
  - Usage: `gpresult /h gpresult.html`
- **Event Viewer:** Reviews system and application logs for errors and warnings.

---

## 📂 6. Files Included

- `Common-Issues.md`: Detailed documentation of common Active Directory issues and their resolutions.
- `README.md`: This documentation file summarizing the troubleshooting steps and tools.

---

## ✅ 7. Outcome

By addressing these common issues:
**Improved Stability:** Ensured consistent replication and policy application across the domain.
**Enhanced Security:** Reduced unauthorized access through proper account lockout policies.
**Efficient Troubleshooting:** Utilized built-in tools to quickly identify and resolve problems.

---

## 📚 8. References

[Active Directory Troubleshooting](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/ad-ds-troubleshooting)

[Applying Group Policy troubleshooting guidance](https://learn.microsoft.com/en-us/troubleshoot/windows-server/group-policy/applying-group-policy-troubleshooting-guidance)

[Active Directory replication troubleshooting guidance](https://learn.microsoft.com/en-us/troubleshoot/windows-server/active-directory/troubleshoot-adreplication-guidance)

[Techniques to troubleshoot Active Directory issues](https://www.techtarget.com/searchwindowsserver/tip/Techniques-to-troubleshoot-Active-Directory-issues)
