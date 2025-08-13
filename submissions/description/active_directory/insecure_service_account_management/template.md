Insecure service account management occurs when an overly privileged domain user is configured to run a service.

<Add details on the vulnerable user(s) identified, the service the user is associated with, and their privileges (e.g membership of domain admins) within the domain>

When a domain account is configured to run a service, a Service Principal Name (SPN) is used in the domain to associate the service with a login account. Any valid (including low privileged) domain user can request an SPN for a registered service and receive a Kerberos service ticket that is signed with the NTLM password hash of the account running that service. This data can then be extracted and subjected to offline brute-force password guessing with the aim of recovering the account's plaintext password. This attack pathway is referred to as 'Kerberoasting' and is used by an adversary to escalate their privileges within a domain. Accounts which use short and non-complex passwords increase the likelihood of a successful Kerberoasting attack.

**Business Risk**

This vulnerability could allow a low-privileged malicious user to escalate their privileges over the domain. In turn, this would allow unauthorized access, data theft, and malicious activities. Such incidents can result in significant financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
