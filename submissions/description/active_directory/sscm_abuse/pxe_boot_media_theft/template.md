Pre-Boot Execution Environment (PXE) Boot media theft is a vulnerability in Microsoft System Center Configuration Manager (SCCM) where the PXE boot process exposes operating system deployment media to unauthorized network access. An attacker with access to the same network segment as the PXE-enabled distribution point can intercept PXE boot responses and retrieve the boot image. The boot image may contain domain join credentials, task sequence variables, or other sensitive configuration data embedded during the OS deployment process. This allows an attacker to extract credentials and configuration details that can be used to move laterally within the Active Directory environment.

**Business Risk**

An attacker could leverage the credentials obtained through this vulnerability to gain a foothold in the domain, escalate privileges or exploit lateral movement vectors. In turn, this would allow unauthorized access, data theft, and malicious activities. Such incidents can result in financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

1. Connect to the same network segment as the SCCM PXE-enabled distribution point at {{distribution_point_hostname}}
1. Configure a PXE client or use a tool such as `pxethief` to send a DHCP PXE boot request to {{distribution_point_ip}}
1. Capture the PXE boot image file returned by {{distribution_point_hostname}}
1. Mount or extract the captured boot image
1. Search the extracted contents for credentials, task sequence variables, or sensitive configuration data at {{file_path}}

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
