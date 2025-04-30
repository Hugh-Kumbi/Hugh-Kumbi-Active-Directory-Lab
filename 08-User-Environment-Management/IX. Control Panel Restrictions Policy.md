# 🔒 Control Panel & Settings Restrictions

To reduce the risk of user misconfigurations and enhance endpoint security, I applied Group Policy settings that restricted access to the Windows Control Panel and Settings app.

---

## 🔧 Steps Taken

1. **Created the GPO**
   - Opened **Group Policy Management Console** (GPMC).
   - Created a new GPO named `Control Panel Restrictions`.

2. **Blocked Full Access**
   - Navigated to:  
     `User Configuration > Policies > Administrative Templates > Control Panel`
   - Enabled the **Prohibit access to Control Panel and PC settings** policy.

3. **(Optional) Allowed Specific Control Panel Items**
   - To allow only selected applets:
     - Enabled **Show only specified Control Panel items**.
     - Entered canonical names like:
       - `Programs and Features`
       - `Printers`
     - Used Microsoft’s canonical item list for accuracy.

4. **Applied and Tested the GPO**
   - Linked the GPO to the intended user OU.
   - Executed `gpupdate /force` on a client machine.
   - Confirmed restricted access on login.

---

## 🖼️ Suggested Screenshots to Include

- 📷 `GPMC - Control Panel Restrictions GPO`  
  _Screenshot of the GPO creation in GPMC._

- 📷 `GPO - Prohibit Access to Control Panel`  
  _Policy path and enabled setting for blocking Control Panel._

- 📷 `GPO - Show Only Specified Control Panel Items` (if used)  
  _Configured canonical names in the allowed items list._

- 📷 `Access Denied - Control Panel`  
  _Screenshot of the message or blocked screen when a user attempts to open Control Panel._

---

## ✅ Result

Access to both the Control Panel and Settings app was successfully restricted for standard users. This mitigated the risk of unauthorized system changes and improved overall system stability and compliance.

