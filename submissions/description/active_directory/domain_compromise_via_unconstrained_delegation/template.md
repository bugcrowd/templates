A system configured with unconstrained delegation was compromised during the assessment, leading to domain privilege escalation. 

Unconstrained delegation is a Kerberos feature introduced with Server 2000 which allows a service to impersonate any user who authenticates to it and subsequently access any other service in the domain on behalf of that user. This is a highly permissive configuration and the least restrictive form of delegation available in an active directory environment. 

When a user authenticates to a service configured with unconstrained delegation, the Key Distribution Center (KDC) issues a Ticket-Granting Ticket (TGT) for the user, and a copy of this TGT is forwarded to and stored in the memory of the delegating service. If this delegating service account is compromised, an attacker can extract these cached TGTs. With a user's TGT, the attacker can then request service tickets for any service within the domain, effectively impersonating that user to any resource. 

Rather than waiting for a highly privileged user to authenticate to the service, unconstrained delegation is usually combined with authentication coercion techniques where the target account is forcibly triggered to authenticate to the controlled service. A typical abuse pathway is to coerce authentication from a Domain Controller (DC) machine account, which is then leveraged to perform a DCSync attack. The DCSync simulates the replication process of one DC to another in order to retrieve the stored credentials/hashes of domain-wide user accounts. With access to these hashes, the attacker can then forge additional TGT’s on behalf of any arbitrary user in the domain (including privileged domain administrator accounts), resulting in full domain compromise.

**Business Risk**

This vulnerability could be abused by an attacker to gain unauthorised access to any user account, effectively leading to full domain compromise. This could result in financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
