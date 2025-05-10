# 🔐 Password Policy (Domain GPO)
This section highlights the configuration and enforcement of the domain-wide password policy applied through a dedicated GPO named Win11 Security Policy.

---

**1. GPMC Showing The Domain Password Policy GPO**

- Confirms that the Win11 Security Policy GPO is linked at the domain level, ensuring uniform password standards across all users.

![GPMC Showing The Domain Password Policy GPO](https://github.com/user-attachments/assets/29c96aa3-0f43-4468-8f87-873f40e98004)

**2. Group Policy Editor Window Showing the Password Policy Path**

- Shows the exact configuration path:
`Computer Configuration > Policies > Windows Settings > Security Settings > Account Policies > Password Policy.`

![Group Policy Editor Window Showing the Password Policy Path](https://github.com/user-attachments/assets/1ce841d1-5c09-4be7-9196-b48c0d8c84ae)

**3. Each Setting With Its Configured Value**
- Displays detailed settings including minimum password length, complexity requirements, maximum and minimum password age, and password history enforcement.

![Each Setting With Its Configured Value](https://github.com/user-attachments/assets/4938bd3a-8efd-421a-9a8c-82eaf0f54a4f)

**4. gpresult Showing WIN Security Policy Application**
- Verifies that the policy is successfully applied to the client machine, with the Win11 Security Policy listed as an active GPO.

![`gpresult` Showing WIN Security Policy Application 1](https://github.com/user-attachments/assets/c63c2776-fa06-4c92-bdc7-04b2bb9a799c)

![`gpresult` Showing WIN Security Policy Application 2](https://github.com/user-attachments/assets/9b587325-82d6-496c-b71c-08e89f52737d)

**5. Resultant Set of Policy (RSoP)**
- Provides a graphical summary of all enforced security settings on the system, helping validate that the password policy is functioning as expected.
  
![Resultant Set of Policy](https://github.com/user-attachments/assets/2427206f-ffe8-4c92-9ec9-854ad33702a6)

---

Each image corresponds to a step described in `📂 04-Security-Policies/Password-Policy.md`
