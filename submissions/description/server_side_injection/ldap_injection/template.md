# LDAP Injection

## Overview
LDAP Injection is an attack used to exploit web based applications that construct LDAP statements based on user input. When an application fails to properly sanitize user input, it’s possible to modify LDAP statements using a local proxy. This could result in the execution of arbitrary commands such as granting permissions to unauthorized queries, and content modification inside the LDAP tree. The same advanced exploitation techniques available in SQL Injection can be similarly applied in LDAP Injection.

## Business Impact
Attackers might use an LDAP injection to insert malicious code that allows them to see all the usernames and passwords assigned to a system or to add their names as system administrators. A successful LDAP injection can be a major security breach,reputation loss and financial losses for the company.

## Steps to Reproduce

1. Using a browser, login to in-scope asset at: {{URL}}
1. Browse to account page
1. Modify ID token to add single quote
1. View the following query which states 'LDAP Injection'
1. Replace ID value with the following payload:

```
{{payload}}
```

## Proof of Concept (PoC)

The screenshot below demonstrates the LDAP Injection being executed:

{{screenshot}}


## References
https://cheatsheetseries.owasp.org/cheatsheets/LDAP_Injection_Prevention_Cheat_Sheet.html
