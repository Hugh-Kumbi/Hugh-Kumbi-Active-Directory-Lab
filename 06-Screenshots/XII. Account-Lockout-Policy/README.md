# 🔒 Account Lockout Policy (Domain GPO)

This portion documents the domain-wide Account Lockout Policy configuration, which is implemented under the Account Lockout Policy linked to the domain.

---

## 1. GPMC Showing the Account Lockout Policy GPO and its Link to the Domain

- Confirms that the Account Lockout Policy GPO is applied at the domain level and includes lockout policy settings to protect user accounts from brute-force attacks.

📸 **GPMC Showing the Account Lockout Policy GPO and its Link to the Domain**

<img width="1920" height="909" alt="GPMC Showing the Account Lockout Policy GPO and Its Link to the Domain 1" src="https://github.com/user-attachments/assets/2d8a9af5-3638-4641-8f54-eb57234255f4" />

---

## 2. Group Policy Editor Window Showing the Password Policy Path

- Highlights the configuration path:<br />
  📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Account Policies > Account Lockout Policy`

📸 **Group Policy Editor Window Showing the Password Policy Path**

<img width="1920" height="909" alt="Group Policy Editor Window Showing the Password Policy Path" src="https://github.com/user-attachments/assets/93b7cfaa-1584-4f8a-b0fe-a97973487a23" /><br />

📸 **Group Policy Editor Window Showing the Password Policy Settings**

<img width="1920" height="909" alt="Group Policy Editor Window Showing the Password Policy Settings" src="https://github.com/user-attachments/assets/943265dc-d28a-4937-890f-36c50d8d6ccc" />

---

## 3. User Account Management Account Lockout

Displays the specific values configured for:

  - Account lockout threshold

  - Account lockout duration

  - Reset account lockout counter after

**📸 User Account Management Account Lockout Confirmation**

![User Account Management Account Lockout](https://github.com/user-attachments/assets/aff939a4-6185-42ff-94e4-3ea5a53b3375)

---

## 4. Group Policy Inheritance Confirmation

Ensured the Account Lockout Policy inherits correctly through the domain’s OU structure and is not blocked or overridden.

**📸 Group Policy Inheritance Confirmation**

<img width="1920" height="909" alt="Group Policy Inheritance Confirmation" src="https://github.com/user-attachments/assets/3767759a-0ea4-4694-a9f8-f2d43ca3d2bf" />

---

## 5. Security Filtering Review

Applied security filtering to Authenticated users for the lockout policy.

**📸 Security Filtering Review**

<img width="1920" height="909" alt="GPMC Showing the Account Lockout Policy GPO and Its Link to the Domain" src="https://github.com/user-attachments/assets/1cff6375-3455-46cf-a35f-be46354edaad" />

---

## 6. Results from `gpupdate` Command

Ran the `gpupdate /force` command to refresh policies on a domain-joined Windows 11 clients.

**📸 Command Line Results from `gpupdate` on `AD-WIN11-01`**

<img width="1920" height="909" alt="Output From `gpupdate` Command for `AD-WIN11-01`" src="https://github.com/user-attachments/assets/150efea1-bd50-48ee-8cb2-f50f14cf3228" /><br />

**📸 Command Line Results from `gpupdate` on `AD-WIN11-02`**

<img width="1920" height="909" alt="GPUPDATE After Account Lockout Policy Implementation AD-WIN11-01" src="https://github.com/user-attachments/assets/0306e7bd-c378-43c2-a5e1-008bf7cbb2a9" />

---

## 7. Results from `gpresult` Command

Used `gpresult /r` to confirm the policy was applied and view its scope.

**📸 Command Line Results from `gpresult` on `AD-WIN11-01`**

<img width="1920" height="909" alt="Command Line Showing `gpresult` Output for `AD-WIN11-01`" src="https://github.com/user-attachments/assets/ecec1152-fad3-4afb-8487-ac1fbb74d37c" /><br />

<img width="1920" height="909" alt="Command Line Showing `gpresult` Output for `AD-WIN11-01` 1" src="https://github.com/user-attachments/assets/b346c696-5532-4a15-bc93-2340a151771c" /><br />

**📸 Command Line Results from `gpresult` on `AD-WIN11-02`**

<img width="1920" height="909" alt="Command Line Showing `gpresult` Output for `AD-WIN11-02`" src="https://github.com/user-attachments/assets/45cb96cd-7407-4181-b0f9-b6eaf40df694" /><br />

<img width="1920" height="909" alt="Command Line Showing `gpresult` Output for `AD-WIN11-02` 1" src="https://github.com/user-attachments/assets/34b01674-84e0-461e-93b3-db3c7b43a6fa" />

---

## 8. Event Viewer Logs Confirming Policy Application

Reviewed the Security logs in Event Viewer to confirm policy application and monitor for account lockout events.

**📸 Event Viewer Logs Confirming Policy Application**

<img width="1920" height="909" alt="Event Viewer Logs Confirming Policy Application" src="https://github.com/user-attachments/assets/5df4ea6c-1c6a-423d-b33c-c24b5dec64d0" />

---

## 9. Command Prompt Showing Account Status After Lockout

- Demonstrates the result of failed login attempts exceeding the threshold, showing the account is locked out via `net user [username]`command.

![Command Prompt Showing Account Status After Lockout](https://github.com/user-attachments/assets/b18b8a48-9b44-4f11-948d-fab810b29be2)

---

Each image corresponds to a step described in:<br />
📂 [`04-Security-Policies/II. Account-Lockout-Policy.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/04-Security-Policies/II.%20Account-Lockout-Policy.md)
