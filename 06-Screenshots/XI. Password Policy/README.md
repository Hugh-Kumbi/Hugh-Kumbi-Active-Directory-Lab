# 🔐 Password Policy (Domain GPO)

This section highlights the configuration and enforcement of the domain-wide password policy applied through a dedicated GPO named Win11 Security Policy. The goal was to enhance account security by enforcing complex passwords, regular changes, and minimum length standards.

---

## 1. 🔑 GPMC Showing the Domain Password Policy GPO

Confirms that the Win11 Security Policy GPO is linked at the domain level, ensuring uniform password standards across all users.

📸 **GPMC Showing the Domain Password Policy GPO**

<img width="1920" height="909" alt="GPMC Showing the Domain Password Policy GPO 1" src="https://github.com/user-attachments/assets/81f6cfda-d3b8-4c23-bda4-1406507062c5" />

---

## 2. 📜 Group Policy Editor Window Showing the Password Policy Path

Shows the exact configuration path:<br />
📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Account Policies > Password Policy.`

📸 **Password Policy Configuration Path**

<img width="1920" height="909" alt="Group Policy Editor Window 1" src="https://github.com/user-attachments/assets/a544e531-14b8-481a-9d28-59ddea99b39f" />

---

## 3. ✅ Each Setting with its Configured Value

Displays detailed settings including minimum password length, complexity requirements, maximum and minimum password age, and password history enforcement.

📸 **Password Policy Settings**

<img width="1920" height="909" alt="Group Policy Editor Window Showing the Password Policy Path" src="https://github.com/user-attachments/assets/6c979a92-4794-418f-a77a-1f8f1a4be9d7" />

---

## 4. 👁️ GPO Scope Tab – Security Filtering

Displays the Security Filtering that targets Authenticated Users to ensure correct application.

📸 **Password Policy Security Filtering**

<img width="1920" height="909" alt="Password Policy Security Filtering" src="https://github.com/user-attachments/assets/107e13fc-e18e-41f2-8ee5-58de3c35353f" />

---

**5. 🔃 Command Line Results from `gpupdate /force`**

Verifies that the updated Password Policy was pushed to a Windows 11 client.

📸 **`gpupdate /force` Output on `AD-WIN11-01**

<img width="1920" height="909" alt="Output From `gpupdate` Command for `AD-WIN11-01`" src="https://github.com/user-attachments/assets/84a02969-d190-4648-a2d6-1a7180ee9304" /><br />

📸 **`gpupdate /force` Output on `AD-WIN11-02**

<img width="1920" height="909" alt="GPUPDATE After Account Lockout Policy Implementation AD-WIN11-01" src="https://github.com/user-attachments/assets/32283881-497d-418a-910d-b02b48359fcd" />

---

## 6. 📊 `gpresult` Showing Password Policy Application**

Verifies that the policy is successfully applied to the client machine, with the Win11 Security Policy listed as an active GPO.

📸 **`gpresult /r` Output on `AD-WIN11-01**

![`gpresult` Showing WIN Security Policy Application 1](https://github.com/user-attachments/assets/c63c2776-fa06-4c92-bdc7-04b2bb9a799c)

📸 **`gpresult /r` Output on `AD-WIN11-02**

![`gpresult` Showing WIN Security Policy Application 2](https://github.com/user-attachments/assets/9b587325-82d6-496c-b71c-08e89f52737d)

---

## 7. 📊 Resultant Set of Policy (RSoP)
Provides a graphical summary of all enforced security settings on the system, helping validate that the password policy is functioning as expected.

📸 **Resultant Set of Policy (RSoP)**

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
