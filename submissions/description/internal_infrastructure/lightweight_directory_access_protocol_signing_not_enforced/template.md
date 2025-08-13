The Windows Lightweight Directory Access Protocol (LDAP) server did not require signing. 

LDAP signing is a security feature of the Simple Authentication and Security Layer (SASL) that ensures the integrity of LDAP communication by requiring messages to be digitally signed. This provides authenticity and integrity verification, by validating the identity of the requestor and ensuring that LDAP messages have not been altered in transit. 

Unsigned network traffic is susceptible to man-in-the-middle (MITM) and replay attacks. In such attacks, a client’s messages are intercepted by the attacker and relayed to the LDAP server, effectively allowing the attacker to perform actions on the LDAP server on behalf of the impersonated client. 

**Business Risk**

When signing is not enforced, the integrity and authenticity of messages in transit across the network can be compromised. This can be abused by attackers to compromise user accounts and services within the domain, leading to unauthorized access, data theft, and potentially service disruption. These malicious actions could result in reputational damage for the business through the impact to customers’ trust.

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
