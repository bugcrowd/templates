
#### Business Impact

LDAP injection vulnerabilities can lead to reputational damage through the impact to customers’ trust, or to regulatory fines due to an attacker’s unauthorized access to data. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

#### Steps to Reproduce

1. Using a browser, log into the webpage: {{URL}}
1. In the request to URI modify the token XYZ by appending a quote ``` and you'll see an error return
1. Replace this with the payload below and you'll see a response indicating an injection occuring:

```
{{payload}}
```

#### Proof of Concept (PoC)

The screenshot(s) below demonstrate(s) the vulnerability:

{{screenshot}}
