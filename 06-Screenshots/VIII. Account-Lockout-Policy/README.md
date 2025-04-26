# 🔒 Account Lockout Policy — Win11 Security Policy

This portion documents the domain-wide Account Lockout Policy configuration, which is integrated into the same Win11 Security Policy GPO linked to the domain.

---

**1. GPMC Showing The Account Lockout Policy GPO And Its Link To The Domain**

- Confirms that the Win11 Security Policy GPO is applied at the domain level and includes lockout policy settings to protect user accounts from brute-force attacks.

![GPMC Showing The Account Lockout Policy GPO And Its Link To The Domain](https://github.com/user-attachments/assets/d62b5148-6c62-4236-8ee9-07b583a6c247)

**2. Group Policy Editor Window Showing the Password Policy Path**

- Highlights the configuration path:
`Computer Configuration > Policies > Windows Settings > Security Settings > Account Policies > Account Lockout Policy`.

![Group Policy Editor Window Showing the Password Policy Path](https://github.com/user-attachments/assets/1ce841d1-5c09-4be7-9196-b48c0d8c84ae)

![Group Policy Editor showing the Account Lockout Policy path](https://github.com/user-attachments/assets/4188be8c-cfb9-407d-be3b-a3e3de9aabed)

**3. User Account Management Account Lockout**

Displays the specific values configured for:

  - Account lockout threshold

  - Account lockout duration

  - Reset account lockout counter after

![User Account Management Account Lockout](https://github.com/user-attachments/assets/9f5cd4f7-2ba3-4899-9ffd-d512b7128da0)

**1. Command Prompt Showing Account Status After Lockout**

- Demonstrates the result of failed login attempts exceeding the threshold, showing the account is locked out via `net user [username]`command.

![Command Prompt Showing Account Status After Lockout](https://github.com/user-attachments/assets/b18b8a48-9b44-4f11-948d-fab810b29be2)

---

Each image corresponds to a step described in `📂 04-Security-Policies/Account-Lockout-Policy.md`
