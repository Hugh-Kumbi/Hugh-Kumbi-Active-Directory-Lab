# 🔒 Windows Firewall Configuration

This section demonstrates the configuration of Windows Firewall settings within the Active Directory environment to enhance system security and manage network traffic.

---

## 1. 🛡️ Configuring Windows Firewall via Group Policy

Use Group Policy to configure Windows Firewall settings across the domain. You can define rules for inbound and outbound traffic, specify exceptions, and manage the firewall settings for all computers within the domain.

📸 **Configuring Windows Firewall via Group Policy**

---

## 2. ⚙️ Configuring Firewall Rules for Specific Applications

Configure inbound and outbound rules for specific applications to control network access. This allows for enhanced security by restricting unnecessary traffic while allowing required applications to function.

📸 **Configuring Firewall Rules for Specific Applications**

---

## 3. 📝 Enabling and Configuring Logging in Windows Firewall

Configure the firewall to log network traffic, which helps in auditing and troubleshooting. The logs can be reviewed to detect unusual activity or unauthorized access attempts.

📸 **Enabling and Configuring Logging in Windows Firewall**

---

## 4. 🔧 Creating Custom Firewall Rules

In addition to the default firewall rules, custom rules can be created to meet specific security requirements. This includes creating rules for particular IP addresses, ports, or protocols.

📸 **Creating Custom Firewall Rules**

---

## 5. 💻 Using PowerShell to Configure Windows Firewall

Use PowerShell commands to configure Windows Firewall settings for automation and bulk modifications. PowerShell scripts can help apply consistent firewall configurations across multiple systems.

📸 **Using PowerShell to Configure Windows Firewall**

---

## 6. 🧪 Testing Firewall Configuration

Once the firewall settings are applied, test the configuration by trying to access the blocked services or applications from a client machine. Use tools like Telnet or PowerShell to verify that the rules are functioning correctly.

📸 **Testing Firewall Configuration**

---

## 7. 🔍 Reviewing Windows Firewall Event Logs

Check Event Viewer for logs related to Windows Firewall activity. These logs can help identify if any traffic was blocked or allowed, which is crucial for troubleshooting.

📸 **Reviewing Windows Firewall Event Logs**

---

## 8. 📜 Group Policy Result for Firewall Settings

Use the gpresult command to check whether the firewall settings configured through Group Policy have been successfully applied to a client machine.

📸 **Group Policy Result for Firewall Settings**

---

Each image corresponds to a step described in 📂 `09-Infrastructure-Protection/I.Windows-Firewall.md`.
