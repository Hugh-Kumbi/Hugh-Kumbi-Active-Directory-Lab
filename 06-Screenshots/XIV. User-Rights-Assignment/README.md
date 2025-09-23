# 👤 User Rights Assignment (Domain GPO)

This folder stores all screenshots related to the **User Rights Assignment** configuration applied through Group Policy in the **Win11 Security Policy GPO**.

---

## 1. GPO in Group Policy Management Console (GPMC)

Screenshot of the Win11 Security Policy GPO in GPMC showing User Rights Assignment.
  
📸 **GPMC Showing User Rights Assignment GPO Under Win11 Security Policy**

<img width="1920" height="909" alt="GPMC Showing User Rights Assignment GPO Under Win11 Security Policy" src="https://github.com/user-attachments/assets/5e95372d-14a8-4851-9b3f-f91ed5d57529" />

---

## 2. Group Policy Editor – User Rights Assignment Path
  
Group Policy Editor window showing navigation path:<br />  
    📂 `Computer Configuration > Policies > Windows Settings > Security Settings > Local Policies > User Rights Assignment`.

📸 **Group Policy Editor Window Showing User Rights Path**  

<img width="1920" height="909" alt="Group Policy Editor Window Showing User Rights Path" src="https://github.com/user-attachments/assets/4db08a80-5df4-4aab-9dfd-572113fef055" /><br />

Configured values for user rights (e.g., Log on locally, Log on as a service, etc.).

📸 **Group Policy Editor Window Showing User Rights Settings**  

![Group Policy Editor Window Showing User Rights Path](https://github.com/user-attachments/assets/76170d21-d2b2-4a02-aa54-7315606c72cc)

![Group Policy Editor Window Showing User Rights Path 1](https://github.com/user-attachments/assets/685c9085-f8e7-43d2-aeef-d5e14cff2361)
---

## 3. Validation on Domain Clients `(gpresult)`

Each screenshot should capture the output of `gpresult /r` confirming User Rights Assignment application.

📸 **Command Line Results from `gpresult on AD-WIN11-01`**

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-01" src="https://github.com/user-attachments/assets/18ddef13-7d98-464b-a832-1368df0658b5" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-01 1" src="https://github.com/user-attachments/assets/11880d48-7cb0-4022-bc07-5237ce9643d2" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-01 2" src="https://github.com/user-attachments/assets/af2add1e-cbf8-4920-aaaf-fb0b4351af76" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-01 3" src="https://github.com/user-attachments/assets/d2e04722-49aa-4918-b633-ecd2af19358b" /><br />

📸 **Command Line Results from `gpresult on AD-WIN11-02`**

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-02" src="https://github.com/user-attachments/assets/6ec30dd0-7908-475a-a7fc-b8ee47fddd79" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-02 1" src="https://github.com/user-attachments/assets/69a415e4-9a35-463d-a468-fc67b491b886" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-02 2" src="https://github.com/user-attachments/assets/474653f7-5c7b-4302-b729-4c44da093cdb" /><br />

<img width="1920" height="909" alt="Command Line Results from gpresult on AD-WIN11-02 3" src="https://github.com/user-attachments/assets/e05a1653-6ae6-4934-8fb1-2b34e7f88149" />  

---

## 📁 4. Screenshot Storage

All screenshots related to GPOs should be saved in:<br />
📂 [`04-Security-Policies/IV. User-Rights-Assignment.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/04-Security-Policies/IV.%20User-Rights-Assignment.md)
