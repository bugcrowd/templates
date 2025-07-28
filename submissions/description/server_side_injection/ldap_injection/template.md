LDAP injection is an attack used to exploit web based applications that construct LDAP statements based on user input. When an application fails to properly sanitize user input, it’s possible to modify LDAP statements using a local proxy. This LDAP injection vulnerability could allow an attacker to execute arbitrary commands, such as granting permissions to unauthorized queries, and content modification inside the LDAP tree. The same advanced exploitation techniques available in SQL injection can be similarly applied in LDAP injection.

**Business Impact**

LDAP injection vulnerabilities can lead to reputational damage through the impact to customers’ trust, or to regulatory fines due to an attacker’s unauthorized access to data. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

**Steps to Reproduce**

1. Using a browser, log into the webpage: {{URL}}
1. In the request to URI modify the token XYZ by appending a quote ``` and you'll see an error return
1. Replace this with the payload below and you'll see a response indicating an injection occurring:

```
{{payload}}
```

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:

{{screenshot}}
