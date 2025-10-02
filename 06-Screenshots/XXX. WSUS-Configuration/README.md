# 🌐 WSUS Configuration

This section covers the process of configuring Windows Server Update Services (WSUS) to manage updates for systems in your Active Directory environment, ensuring that all machines remain up to date and secure.

---

## 1. 📥 Installing WSUS

Begin by installing the Windows Server Update Services (WSUS) role on your Windows Server. You can install it via Server Manager or using PowerShell.

📸 **Installing WSUS**

---

## 2. 🛠️ Configuring WSUS Server

After installation, configure the WSUS server by selecting the update classifications, languages, and synchronization schedule. This setup allows you to control which updates are downloaded and distributed to your clients.

📸 **Configuring WSUS Server**

---

## 3. ⏳ Synchronizing Updates

Configure WSUS to synchronize updates from Microsoft Update or a local update source. This can be done through the Synchronization Schedule section in the WSUS console.

📸 **Synchronizing Updates**

---

## 4. ✅ Approving Updates

Once the updates are synchronized, you must approve them for deployment to your target systems. You can approve updates individually or in bulk based on classification or severity.

📸 **Approving Updates**

---

## 5. 🛠️ Configuring Group Policy for WSUS

Use Group Policy to point client systems to the WSUS server for updates. The GPO should include the Specify Intranet Microsoft Update Service Location policy, which sets the WSUS server’s URL.

📸 **Configuring Group Policy for WSUS**

---

## 6. 🔍Verifying WSUS Client Configuration

Verify that the client systems are correctly configured to use the WSUS server by checking the Windows Update settings in the Control Panel or by using the wuauclt /detectnow command to force a detection.

📸 **Verifying WSUS Client Configuration**

---

## 7. 👁️ Checking Update Installation Status

Use the WSUS console or PowerShell to check the installation status of updates on client systems. Ensure that all critical updates are successfully applied.

📸 **Checking Update Installation Status**

---

## 8. 📝 Managing Update Approvals

Manage the update approvals based on the business needs, such as deferring certain updates or approving emergency patches in response to vulnerabilities.

📸 **Managing Update Approvals**

---

## 9. 📋 WSUS Reporting

Use WSUS reporting tools to track which systems have successfully received and installed updates, and which ones have failed to apply updates.

📸 **WSUS Reporting**

---

Each image corresponds to a step described in 📂 [`06-Screenshots/XXX. WSUS-Configuration`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/09-Infrastructure-Protection/IV.%20WSUS-Configuration.md).
