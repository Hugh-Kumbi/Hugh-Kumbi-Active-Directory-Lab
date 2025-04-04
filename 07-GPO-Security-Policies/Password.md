# 07-GPO-Security-Policies
In this section, I designed and deployed a series of **Group Policy Objects (GPOs)** to enforce security baselines, restrict unauthorized access, manage user environments, and enhance overall domain security. These policies were linked to specific Organizational Units (OUs) to simulate a real-world enterprise environment with department-based configurations.

## Policy Design Approach
  * Aligned with **CIS Benchmarks** and **Microsoft Security Baselines.**

  * Applied **user** and **computer** configurations based on departmental needs.

  * Used **Group Policy Management Console (GPMC)** for creation, linking, and enforcement.

  * Enforced **loopback processing** where needed for tighter user experience control.

## Key Security GPOs
| GPO Name | Purpose | Linked To |
| :- | :- | :- |
| `Domain Password Policy` | Enforce strong password settings | Default Domain Policy |
| `Account Lockout Policy` | Lock out accounts after multiple failed attempts | Default Domain Policy |
| `USB Restrictions` | Block access to removable storage | Domain Computers OU |
| `Local Admin Restrictions` | Prevent Domain Users from being local admins | All Workstations OU |
| `Firewall Policy` | Enable and configure Windows Firewall profiles | Domain Computers OU |
| `Network Security Policy` | Enforce secure communication and session protocols | Domain Computers OU |

## User Environment GPOs
| GPO Name | Purpose | Linked To |
| :- | :- | :- |
| `Drive Mappings Policy` | Map shared drives based on department | Department OUs |
| `Folder Redirection Policy` | Redirect Documents folder to a file server path | Department OUs |
| `Logon Scripts Policy` | Apply PowerShell scripts during user logon | Department OUs |

**Note:** I used **item-level targeting** within GPPs to fine-tune drive mappings and logon behaviors.

## GPO Enforcement & Testing
  * Ran `gpupdate /force` on domain clients to apply policies.

  * Used `gpresult /h report.html` to verify policy application.

  * Ensured **no GPO inheritance blocking** was disrupting policy flow.

  * Applied WMI filters and loopback processing where needed to tailor computer vs. user settings.

## Outcome
Through GPO implementation, I was able to:

  * Enforce organization-wide **security standards**

  * Streamline **user access** and **desktop environment**

  * Prevent **unauthorized device access** and risky behavior

  * Simulate the **real-world responsibilities** of a Windows System Administrator
