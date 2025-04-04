# 09 - Infrastructure Protection
This section details how I implemented security hardening and infrastructure protection policies in my Active Directory lab. These configurations help safeguard critical systems against lateral movement, external attacks, and unauthorized service usage.

## 9.1. Windows Firewall Policies
**GPO Name:** `Windows Firewall Policy`

I configured firewall rules using Group Policy to control network traffic and limit exposure:

  * **Domain Profile:**

    * Firewall state: **Enabled**

    * Inbound connections: **Blocked (except allowed rules)**

    * Outbound connections: **Allowed**

  * **Private & Public Profiles:**

    * Firewall state: **Enabled**

    * Inbound connections: **Blocked**

    * Outbound connections: **Restricted with stricter rules for public profile**

✅ *Tested connectivity from clients, verified that only allowed services (e.g., RDP, DNS) were accessible.*

## 9.2. Network Security Settings
**GPO Name:** `Network Security Policy`

To strengthen domain authentication and secure data in transit, I enforced the following settings:

  * **LAN Manager Authentication Level:** `Send NTLMv2 response only. Refuse LM & NTLM`

  * **Minimum Session Security for NTLM SSP:**

    * 128-bit encryption required.

    * Message signing enabled.

  * **Digitally Sign Communications:**

    * Enabled for both client and server communications.

✅ *Confirmed secure authentication using Event Viewer and Netlogon logs.*

## 9.3. Disable Unnecessary Services
**GPO Name:** `Service Configuration Policy`

Reducing the attack surface was a priority. I disabled legacy or unneeded services using Group Policy:

  * **Services Disabled:**

    * **Print Spooler** (on servers without print roles)

    * **Remote Registry**

    * **Telnet**

    * **SNMP**

  * **Policy Settings:**

    * Startup type set to **Disabled**

    * Enforced on both the server and client machines via GPO

✅ *Verified through `services.msc` that target services were disabled on reboot.*

## Outcome
These infrastructure protection policies reflect real-world security best practices, including:

  * Limiting unnecessary network exposure

  * Enforcing strong authentication mechanisms

  * Disabling vulnerable or legacy services

  * Centralized firewall and system control via GPOs

They also prepared the lab for more advanced simulations like incident response, attack detection, or endpoint monitoring.
