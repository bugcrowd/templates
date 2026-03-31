Kerberos is the default authentication protocol in Active Directory environments. Misconfigurations such as unconstrained delegation, weak service account passwords with registered SPNs, and disabled preauthentication each provide a distinct attack path. An attacker can exploit these weaknesses to extract Ticket Granting Tickets from delegated servers, crack service ticket encryption offline to recover service account passwords, or request AS-REP hashes for accounts without preauthentication.

**Business Risk**

Kerberos abuse can result in credential theft, privilege escalation, and full domain compromise depending on the specific misconfiguration. This could result in financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
