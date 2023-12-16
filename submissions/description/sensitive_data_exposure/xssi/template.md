# Sensitive Data Exposure via Cross-Site Script Inclusion

## Overview of the Vulnerability:

Cross-Site Script Inclusion (XSSI) is a client-side attack that uses JavaScript within an authenticated session to leak sensitive data. This sensitive data could be authentication related or user related sensitive data. XSSI can be found on this domain which allows an attacker to control code that is executed within a user’s authenticated session.
  
## Business Impact:

XSSI could lead to data theft and exfiltration through the attacker’s ability to manipulate data. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce:

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Forward the following request to the endpoint:

```HTTP
{{request}}
```

1. Log into an account and navigate to URL which contains the payload
1. Observe the JavaScript payload being executed

## Proof of Concept (PoC):

Below is a screenshot demonstrating the injected JavaScript executing:

{{screenshot}}
