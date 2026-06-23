Unconstrained Kerberos delegation is a misconfiguration where a computer or service account in Active Directory is trusted to delegate any user's credentials to any service. When a user authenticates to a server configured with unconstrained delegation, their Ticket Granting Ticket (TGT) is cached in memory on that server. An attacker who compromises a server with unconstrained delegation can extract these cached TGTs and use them to impersonate any user who has authenticated to the compromised server. If a domain administrator authenticates to the compromised server, the attacker can extract the administrator's TGT and use it to authenticate to any service in the domain, including domain controllers. This allows an attacker to gain full domain compromise through credential impersonation.

**Business Risk**

This vulnerability could be abused by an attacker to gain unauthorised access to any user account, effectively leading to full domain compromise. This could result in financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

1. Enumerate Active Directory for computer accounts with unconstrained delegation enabled using {{enumeration_tool}} against {{domain_controller}}
1. Identify the delegated server at {{delegated_server_hostname}} with the TRUSTED_FOR_DELEGATION flag set
1. Obtain local administrator access on {{delegated_server_hostname}} using {{initial_access_method}}
1. Use a tool such as `Rubeus` or `Mimikatz` on {{delegated_server_hostname}} to monitor for and extract cached TGTs from memory
1. Coerce or wait for a privileged user to authenticate to {{delegated_server_hostname}}, or trigger authentication using {{coercion_method}}
1. Extract the cached TGT for {{privileged_account}} and use it to authenticate to {{domain_controller}} to confirm domain-level access

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
