# 🖼️ Desktop Wallpaper Policy

To ensure a consistent and professional desktop environment across all domain users, I implemented a Group Policy Object (GPO) to enforce a standardized desktop wallpaper.

---

## 🔧 Steps Taken

1. **Prepared the Wallpaper**
   - Selected a company-branded wallpaper image.
   - Saved it to a shared, read-only network location:  
     `\\DC01\Wallpapers\company_wallpaper.jpg`.

2. **Created the GPO**
   - Opened **Group Policy Management Console** (GPMC).
   - Created a new GPO named `Desktop Wallpaper Policy`.

3. **Configured the Wallpaper Policy**
   - Navigated to:  
     `User Configuration > Policies > Administrative Templates > Desktop > Desktop`
   - Enabled the **Desktop Wallpaper** policy.
   - Set the path to the image (`\\DC01\Wallpapers\company_wallpaper.jpg`) and selected **Fill** as the style.

4. **Prevented Changes to the Wallpaper**
   - Navigated to:  
     `User Configuration > Policies > Administrative Templates > Control Panel > Personalization`
   - Enabled the **Prevent changing desktop background** policy.

5. **Applied and Tested the GPO**
   - Linked the GPO to the correct user OU.
   - Ran `gpupdate /force` on a client machine.
   - Logged in with a test user to verify wallpaper enforcement and restriction.

---

## 🖼️ Screenshots

- 📷 `GPMC - Desktop Wallpaper Policy Creation`  
  _Screenshot of GPMC with the new policy being created._

- 📷 `GPO - Desktop Wallpaper Setting`  
  _Policy path and configuration screen showing the UNC path and fill option._

- 📷 `GPO - Prevent Changing Wallpaper`  
  _Confirmation of the “Prevent changing desktop background” setting._

- 📷 `User Desktop - Wallpaper Applied`  
  _User desktop with the wallpaper successfully applied._

---

## ✅ Result

Users received a consistent, professional desktop wallpaper on login. The wallpaper could not be changed, maintaining organizational branding and preventing user-level customization.

