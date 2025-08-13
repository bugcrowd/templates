A domain user was vulnerable to an attack referred to as ASREPRoasting due to preauthentication being disabled for the account. 

The ASREPRoast attack targets the first step of the Kerberos authentication process, where the client supplies their User Principal Name (UPN) in a request to receive a ticket from the Authentication Service. Importantly, the resultant ticket is signed with the associated user’s password hash.

Kerberos preauthentication performs checks to validate the identity of the requestor against the UPN supplied in the request, to ensure that only a requestor in possession of the associated user password will receive a ticket. 

When preauthentication is disabled, an unauthenticated attacker can request a ticket on behalf of the vulnerable user and attempt to crack the password hash in order to retrieve their plaintext password. Accounts which use short and non-complex passwords increase the likelihood of a successful ASREPRoast attack.

**Business Risk**

This vulnerability could result in an attacker gaining a foothold or escalating privileges in the domain. In turn, this would allow unauthorized access, data theft, and malicious activities. Such incidents can result in significant financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
