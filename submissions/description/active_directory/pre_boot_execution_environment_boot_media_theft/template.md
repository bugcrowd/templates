An insecure Pre-Boot Execution Environment (PXE) configuration was identified which would allow an attacker to retrieve boot media and obtain secrets contained within. 

The PXE is a mechanism which allows clients to request and deploy operating systems over the network. Instead of booting from a CD drive, USB key or hard disk, the PC will use the network to retrieve boot media from the PXE server.

When PXE deployment is configured to support unknown computers, and the PXE media is protected with either a blank or weak password, then an attacker may abuse this configuration to retrieve and decrypt boot media. In turn, this enables access to any secrets and credential material held within the media file. This may include local administrator passwords that are reused in other devices, or credentials for potentially privileged domain-joined accounts.


**Business Risk**

An attacker could leverage the credentials obtained through this vulnerability to gain a foothold in the domain, escalate privileges or exploit lateral movement vectors. In turn, this would allow unauthorized access, data theft, and malicious activities. Such incidents can result in financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
