The Virtual Network Computing (VNC) server had the "None" authentication method enabled. This configuration permits any client to connect to the VNC server and gain full graphical access to the remote desktop without requiring a valid password. 

An attacker situated in the local network may abuse this access to execute arbitrary commands on the host, install malicious software, read or exfiltrate sensitive data without leaving an authentication footprint, and leverage the system as a foothold from which target other internal network resources and/or pivot within the estate.

**Business Risk**

This vulnerability could lead to unauthorised system access, theft and manipulation of sensitive data. Such incidents can impact the organisation's operational security, result in financial losses, and damage the organisation's reputation, especially if customer data or critical business operations are compromised.

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
