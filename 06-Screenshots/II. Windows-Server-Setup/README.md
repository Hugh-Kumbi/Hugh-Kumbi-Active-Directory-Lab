# 🛠️ Windows Server 2025 Setup
This section contains screenshots documenting the step-by-step setup of the domain controller using Windows Server 2025. These images demonstrate key configurations and verification steps necessary to prepare the server as the foundation of the Active Directory environment.

## 📸 Screenshot Descriptions:
**1. Installation Setup Screen With Edition Selection**
Shows the Windows Server 2025 installer where the Server edition was selected before proceeding with the installation.

   ![Standard Evaluation (Desktop Experience)](https://github.com/user-attachments/assets/8265f6c7-e9c3-4134-9d0a-a82567a38632)

**2. First Boot Desktop After Installation**
   Captures the initial login to the newly installed server, confirming successful installation and access to the desktop environment.

   ![First Boot Desktop After Installation](https://github.com/user-attachments/assets/619605d5-750f-4948-bda0-6d491d057bda)

**3. Network Settings Showing Static IP and DNS Config**
   Displays the manual IP address and DNS configuration required to support reliable domain and network services.

   ![Network Settings Showing Static IP and DNS Config](https://github.com/user-attachments/assets/d0170b00-31ab-48cc-96e8-5b63ab36ee17)

**4. System > About > Showing Kept Computer Name**
   Confirms that the original computer name was retained during setup, which is a best practice before domain promotion.

   ![System About Showing Kept Computer Name](https://github.com/user-attachments/assets/7dc12389-7af9-486c-b9e7-b5dbfd4d7e76)

**5. "Add Roles and Features Wizard" With AD DS Selected**
   Demonstrates the step in Server Manager where the Active Directory Domain Services (AD DS) role is selected in preparation for domain controller promotion.

   ![AD DS Selected in Add Roles and Features Wizard](https://github.com/user-attachments/assets/47187941-9d17-46ee-933d-238c215d06c7)

**6. Domain Configuration Summary Before Installation**
   Shows the summary of settings just before completing the promotion process, including domain name, NetBIOS name, and replication options.

   ![Domain Configuration Summary Before Install](https://github.com/user-attachments/assets/280e0fbd-432e-4979-afb1-5de5f3a742b1)

**7. Confirmation of Successful Promotion**
   Verifies that the server was successfully promoted to a domain controller with no errors.

   ![Confirmation of Successful Promotion](https://github.com/user-attachments/assets/aa3b0eab-428d-4f7b-9336-bc6e325cb2f9)

**8. PowerShell With `dcdiag` Results**
   Captures the output of the dcdiag command, confirming domain controller health and connectivity.

   ![PowerShell With dcdiag Results](https://github.com/user-attachments/assets/049a9c06-d3ad-4762-8825-cfa5d0d66d93)

**9. DNS Manager Showing Forward Lookup Zone for `hughdomain.local`**
   Displays the configured DNS forward lookup zone, validating that DNS was set up properly during the AD DS role installation.

   ![DNS Manager Showing Forward Lookup Zone For hughdomain local](https://github.com/user-attachments/assets/8aecd964-c65b-4048-ac74-0d2ac5bfe54a)

Each image corresponds to a step described in 📂 02-Environment-Setup/Windows-Server-Setup.md.
