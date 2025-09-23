# 👨‍💻 Local Administrator Restrictions

This folder contains all screenshots related to configuring and validating the **Local Administrator Restrictions Policy** applied through Group Policy.

---

## 📁 Screenshot List & Placeholders

## 1. Group Policy Management Console (GPMC)

- Screenshot of the "Local Administrator Restrictions Policy" GPO in GPMC.

📸 **GPMC Showing Local Administrator Restrictions GPO**

<img width="1920" height="909" alt="GPMC Showing Local Administrator Restrictions GPO" src="https://github.com/user-attachments/assets/14462e95-9cca-4225-b1a6-694a7a5b419b" />

---

## 2. Group Policy Editor – Restricted Groups Path

- Group Policy Editor showing navigation path:<br />
📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Restricted Groups`.

📸 **GPO Restricted Groups Path**

<img width="1920" height="909" alt="GPO Restricted Groups Path" src="https://github.com/user-attachments/assets/bfce7dc6-6ffa-4242-935a-461327c061ab" /><br />

- Restricted Groups setting showing `"Administrators"` includes `Domain Admins` and `Local Admins.`

📸 **Restricted Groups Administrators**

![Group Policy Editor Window Showing Local Administrator Restrictions Path](https://github.com/user-attachments/assets/c81bebe3-544b-4f45-b233-d9fcbf9b84bd)

---

## 3. Validation – Remote Access Tests

### a. Server RDP Setup

- Remote Desktop enabled on `WinServer2025` to allow RDP tests.  

📸 **RDP Enabled Server**

![Remote Desktop RDP Enabled on Server](https://github.com/user-attachments/assets/0c074a0b-de79-4fbb-9172-b4c626c8ee2f)

- Command Prompt showing IP configuration details used for RDP connections.

📸 **RDP Server `IPConfig`**

![Command Prompt Showing the IP Configuration Necessary for RDP Connection](https://github.com/user-attachments/assets/675f72ed-7724-48c3-a771-8cedc1fe539c)

### b. Domain Admin Access (Expected: ✅ Success)

- Successful RDP login to `AD-WIN11-01` using `Domain Admin` credentials.  

📸 **RDP `ADWin11-01` DomainAdmin-Success**

![Remote Desktop RDP Attempt 2](https://github.com/user-attachments/assets/aea5bf2a-6291-4e5f-8457-f3a80fa0441c)

![Remote Desktop RDP Attempt Successful](https://github.com/user-attachments/assets/214f5e88-1387-4e38-bde2-1b7775da1f67)

- Successful RDP login to `AD-WIN11-02` using `Domain Admin` credentials.

📸 **RDP `ADWin11-02` DomainAdmin-Success**

![Remote Desktop RDP Attempt for AD-Win11-02 5](https://github.com/user-attachments/assets/a93aec6c-0d50-4b5a-ae1b-ffe373ced144)

![Remote Desktop RDP Attempt for AD-Win11-02 Successful](https://github.com/user-attachments/assets/ea29dc15-c0c8-4a30-a83d-66168de564ee)

### c. Local Admin Access (Expected: ❌ Denied)

- Failed RDP login attempt to `AD-WIN11-01` using `Local Admin` credentials.  

📸 **RDP `ADWin11-01` LocalAdmin-Denied**

![Local Admin Account Login to Test RDP](https://github.com/user-attachments/assets/c29851d1-e1d2-46fe-941d-c09de3e381a2)

![Remote Desktop RDP Attempt 4](https://github.com/user-attachments/assets/856f1f1a-0175-46a2-a45e-002cc3afaecb)

![Remote Desktop RDP Attempt failed 1](https://github.com/user-attachments/assets/dbea4eb1-f0b2-47ec-97bc-9ec30cff5bc4)

- Failed RDP login attempt to `AD-WIN11-02` using `Local Admin` credentials.

📸 **RDP `ADWin11-02` LocalAdmin-Denied**

![Accessing AD-WIN11-02 Using LocalAdmin Credentials](https://github.com/user-attachments/assets/adcb2ce7-0eea-4f6b-9a9b-834ea3caad55)

![Remote Desktop RDP Attempt for AD-Win11-02 1](https://github.com/user-attachments/assets/c38722cd-a9a7-4b54-ac48-b233ef1ced8e)

![Remote Desktop RDP Attempt for AD-Win11-02 2](https://github.com/user-attachments/assets/5ea3b209-5e33-471f-ad5a-5d3569b6c8b5)

---

## 📁 4. Screenshot Storage

All screenshots related to this section should be stored in:
📂 [`04-Security-Policies/VI. Local-Administrator-Restrictions.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/04-Security-Policies/VI.%20Local-Administrator-Restrictions.md)
