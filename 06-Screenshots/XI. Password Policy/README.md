# 🔐 Password Policy (Domain GPO)

This section highlights the configuration and enforcement of the domain-wide password policy applied through a dedicated GPO named Win11 Security Policy. The goal was to enhance account security by enforcing complex passwords, regular changes, and minimum length standards.

---

## 1. 🔑 GPMC Showing the Domain Password Policy GPO**

- Confirms that the Win11 Security Policy GPO is linked at the domain level, ensuring uniform password standards across all users.

![GPMC Showing The Domain Password Policy GPO](https://github.com/user-attachments/assets/29c96aa3-0f43-4468-8f87-873f40e98004)

---

## 2. 📜 Group Policy Editor Window Showing the Password Policy Path

- Shows the exact configuration path:<br />
📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Account Policies > Password Policy.`

![Group Policy Editor Window Showing the Password Policy Path](https://github.com/user-attachments/assets/1ce841d1-5c09-4be7-9196-b48c0d8c84ae)

---

## 3. ✅ Each Setting With Its Configured Value

- Displays detailed settings including minimum password length, complexity requirements, maximum and minimum password age, and password history enforcement.

![Each Setting With Its Configured Value](https://github.com/user-attachments/assets/4938bd3a-8efd-421a-9a8c-82eaf0f54a4f)

---

## 4. 👁️ GPO Scope Tab – Security Filtering**

Displays the Security Filtering that targets Authenticated Users to ensure correct application.

📸 **Password Policy Security Filtering**

<img width="1920" height="909" alt="Password Policy Security Filtering" src="https://github.com/user-attachments/assets/107e13fc-e18e-41f2-8ee5-58de3c35353f" />

---

**5. Command Line Results From `gpupdate /force`**

Verifies that the updated Password Policy was pushed to a Windows 11 client.

📸 **`gpupdate /force` Output on `AD-WIN11-01**

<img width="1920" height="909" alt="Output From `gpupdate` Command for `AD-WIN11-01`" src="https://github.com/user-attachments/assets/84a02969-d190-4648-a2d6-1a7180ee9304" /><br />

📸 **`gpupdate /force` Output on `AD-WIN11-02**

<img width="1920" height="909" alt="GPUPDATE After Account Lockout Policy Implementation AD-WIN11-01" src="https://github.com/user-attachments/assets/32283881-497d-418a-910d-b02b48359fcd" />

---

## 6. 📊 `gpresult` Showing WIN Security Policy Application**

- Verifies that the policy is successfully applied to the client machine, with the Win11 Security Policy listed as an active GPO.

📸 **`gpresult /force` Output on `AD-WIN11-01**

![`gpresult` Showing WIN Security Policy Application 1](https://github.com/user-attachments/assets/c63c2776-fa06-4c92-bdc7-04b2bb9a799c)

📸 **`gpresult /force` Output on `AD-WIN11-02**

![`gpresult` Showing WIN Security Policy Application 2](https://github.com/user-attachments/assets/9b587325-82d6-496c-b71c-08e89f52737d)

---

## 7. 📊 Resultant Set of Policy (RSoP)
- Provides a graphical summary of all enforced security settings on the system, helping validate that the password policy is functioning as expected.
  
<img width="1920" height="909" alt="repadmin syncall Output for Password Policy" src="https://github.com/user-attachments/assets/b438d0a4-9f6a-46c2-a8e5-5dfd3b003f7f" />

---

## 8. 📝 Event Viewer – Group Policy Operational Log

Displays log entries that confirm successful application of the Password Policy on the client, useful for auditing and troubleshooting.

📸 **Event Viewer Logs**

<img width="1920" height="909" alt="Event Viewer Logs for Password Policy" src="https://github.com/user-attachments/assets/e3fe4598-1477-4f64-9460-9acc90fc08ab" />

---

## 9. 🔄 Replication Check – repadmin syncall

Validates that the Password Policy GPO has replicated successfully across all domain controllers.

📸 **repadmin syncall Output**

<img width="1920" height="909" alt="Command Line Results from Repadmin Syncall AdeP" src="https://github.com/user-attachments/assets/8e030d3f-e6bf-43e3-84ee-370ebfce56dc" />

---

# 📁 6. Screenshot Storage
All screenshots related to GPOs should be saved in:<br />
📂 [`06-Screenshots/XI. Password Policy`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/tree/main/06-Screenshots/XI.%20Password%20Policy)
