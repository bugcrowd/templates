Active Directory (AD) user accounts were discovered with plaintext or easily decipherable passwords (or password fragments/hints) stored within their "Description" attribute. These attributes are readable by all authenticated domain users through standard LDAP queries. An attacker with any authenticated domain account can query Active Directory for user objects and read the description fields of all accounts in the domain. This allows an attacker with access to any valid domain user could retrieve the sensitive data stored in account descriptions and leverage any resulting credentials to compromise the affected accounts. 


**Business Risk**

This vulnerability may lead to an attacker compromising the affected user accounts. The extent of malicious impact is dependent on the permissions of the compromised user. This could result in financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised

**Steps to Reproduce**

1. Authenticate to the domain as {{low_privileged_user}} from {{attacker_host}}
1. Query Active Directory for user objects with populated description fields using {{ldap_query_tool}} against {{domain_controller}}
1. Filter the results for description fields containing password-like strings using {{filter_method}}
1. Identify the account {{affected_account}} with a password stored in the description field at {{description_content}}
1. Authenticate to {{target_system}} as {{affected_account}} using the recovered password
1. Confirm successful authentication and note the access level granted

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
