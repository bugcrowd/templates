Active Directory (AD) user accounts were discovered with plaintext or easily decipherable passwords (or password fragments/hints) stored within their "Description" attribute.

Storing passwords or sensitive information in the Description fields of user accounts may be practiced for administrative convenience, however, these account descriptions are retrievable by any authenticated domain user without any special privileges. 

As a result, an attacker with access to any valid domain user could retrieve the sensitive data stored in account descriptions and leverage any resulting credentials to compromise the affected accounts. 

**Business Risk**

This vulnerability may lead to an attacker compromising the affected user accounts. The extent of malicious impact is dependent on the permissions of the compromised user.

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
