# 🧭 Active Directory Lab – Planning Phase

## 📘 Overview

The planning phase is crucial for establishing a structured and efficient Active Directory (AD) lab environment. This phase involves defining the lab's objectives, designing the network topology, selecting appropriate hardware and software, and outlining the implementation roadmap. Proper planning ensures that the lab setup aligns with learning goals and simulates real-world scenarios effectively.

---

## 🎯 Objectives

- **Skill Development:** Gain hands-on experience with Active Directory services, including domain controllers, DNS, DHCP, Group Policy Objects (GPOs), and user management.
- **Testing Environment:** Create a safe space to test configurations, updates, and security policies without affecting production systems.
- **Scenario Simulation:** Replicate common enterprise environments to practice deployment, troubleshooting, and administrative tasks.

---

## 🗺️ Network Topology Design

- **Domain Structure:** Plan a single forest with one domain to reflect organizational hierarchy.
- **Organizational Units (OUs):** Design OUs based on departments or functions (e.g., IT, HR, Finance) to manage policies and permissions effectively.
- **Site Configuration:** When simulating multiple physical locations, define sites and associate subnets accordingly.
- **Trust Relationships:** Outline trust relationships between domains when multiple domains are planned.

---

## 🧰 Hardware and Software Requirements

### Hardware

- **Host Machine:**
  - **CPU:** Intel(R) Core(TM) i5-10210U CPU @ 1.60GHz (2.11 GHz)
  - **RAM:** 16 GB
  - **Storage:** SSD with 465 GB free space

### Software

- **Virtualization Platform:** VirtualBox
- **Operating Systems:**
  - **Windows Server:** 2025 for domain controllers
  - **Windows Client:** Windows 11 Pro for client machines
- **ISO Files:** Obtain evaluation versions from the [Microsoft Evaluation Center](https://www.microsoft.com/en-us/evalcenter/)

---

## 📝 Implementation Roadmap

1. **Environment Setup:**
  - Install and configure the virtualization platform.
  - Create virtual machines for servers and clients.

2. **Server Configuration:**
  - Install Windows Server on designated VMs.
  - Assign static IP addresses and configure hostnames.

3. **Active Directory Deployment:**
  - Promote servers to domain controllers.
  - Configure DNS and DHCP services.

4. **Client Configuration:**
  - Install Windows Client OS on designated VMs.
  - Join clients to the domain.

5. **Group Policy Implementation:**
  - Create and link GPOs to OUs.
  - Test policy application on client machines.

6. **User and Group Management:**
  - Create user accounts and security groups.
  - Assign permissions and test access controls.

---

## 📂 Files Included

- Detailed documentation outlining the lab's objectives, network design, hardware/software requirements, and implementation steps can be found in:
  - [`Planning & Lab Overview.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/01-Planning/Planning%20%26%20Lab%20Overview.md)
  - [`I. Windows-Server-Setup.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/02-Environment-Setup/I.%20Windows-Server-Setup.md)
  - [`II. Windows-Client-Setup.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/02-Environment-Setup/II.%20Windows-Client-Setup.md)
  - [`I. Active-Directory-Setup.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/03-Configuration/I.%20Active-Directory-Setup.md)
  - [`II. DNS-Setip.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/03-Configuration/II.%20DNS-Setup.md)
  - [`III. DHCP-Configuration.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/03-Configuration/III.%20DHCP-Configuration.md)
  - [`IV Active Directory Certificate Services.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/03-Configuration/IV.%20Active-Directory-Certificate-Services.md)
  - [`V Windows-Deployment-Services.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/03-Configuration/V.%20Windows-Deployment-Services.md)
  - [`VI IIS-Web-Server-Configuration.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/03-Configuration/VI.%20IIS-Web-Server-Configuration.md)
  - [`VII. GPO-Configurations.md`](https://github.com/Hugh-Kumbi/Hugh-Kumbi-Active-Directory-Lab/blob/main/03-Configuration/VII.%20GPO-Configurations.md)
 
---

## 📚 References

[Active Directory Design and Planning Guide](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/plan/ad-ds-design-and-planning)

[Create Active Directory Test Environment (Complete Guide)](https://activedirectorypro.com/create-active-directory-test-environment/)

[Building an Active Directory Home Lab](https://medium.com/@gwenilorac/empowering-your-learning-journey-building-an-active-directory-home-lab-807c436a7f04)
