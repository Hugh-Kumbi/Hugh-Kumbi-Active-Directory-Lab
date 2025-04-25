# 🔐 Password Policy (Domain GPO)
This section highlights the configuration and enforcement of the domain-wide password policy applied through a dedicated GPO named Win11 Security Policy.

---

**1. GPMC Showing The Domain Password Policy GPO**
- Confirms that the Win11 Security Policy GPO is linked at the domain level, ensuring uniform password standards across all users.

**1. Group Policy Editor Window Showing the Password Policy Path**
- Shows the exact configuration path:
`Computer Configuration > Policies > Windows Settings > Security Settings > Account Policies > Password Policy.`

**1. Each Setting With Its Configured Value**
- Displays detailed settings including minimum password length, complexity requirements, maximum and minimum password age, and password history enforcement.

**1. gpresult Showing WIN Security Policy Application**
- Verifies that the policy is successfully applied to the client machine, with the Win11 Security Policy listed as an active GPO.

**1. Resultant Set of Policy (RSoP)**
- Provides a graphical summary of all enforced security settings on the system, helping validate that the password policy is functioning as expected.

---

Each image corresponds to a step described in 📂 04-Security-Policies/Password-Policy.md
