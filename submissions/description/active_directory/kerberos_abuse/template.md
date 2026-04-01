Kerberos is the default authentication protocol in Active Directory environments. Misconfigurations such as unconstrained delegation, weak service account passwords with registered SPNs, and disabled pre-authentication each provide a distinct attack path. An attacker can exploit these weaknesses to extract Ticket Granting Tickets from delegated servers, crack service ticket encryption offline to recover service account passwords, or request AS-REP hashes for accounts without pre-authentication.

**Business Risk**

Kerberos abuse can result in credential theft, privilege escalation, and full domain compromise depending on the specific misconfiguration. This could result in financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

1. Enumerate the Kerberos misconfiguration in {{domain_name}} using {{enumeration_tool}} against {{domain_controller}}
1. Identify the target account or system at {{target}} with {{kerberos_weakness}}
1. Exploit the identified weakness using {{exploitation_tool}} to obtain {{ticket_or_hash}}

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
