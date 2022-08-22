# IFrame Injection

## Overview of the Vulnerability

Content spoofing via iFrame injection is a common attack where plaintext or HTML content is injected into a web page that can be rendered in a client. Due to this injection vulnerability in the application, users are often socially engineered to perform an action due to the inherent trust they have in the business and its brand.

A successful iFrame injection can allow a malicious attacker to break Same Origin Policy (SOP) and allow for code execution within a user's browser.

## Business Impact

This vulnerability could lead to data theft and indirect financial loss through the attacker’s ability to manipulate data through their ability to execute code in a user’s browser. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Perform {{action}} and capture the request in the HTTP interception proxy
1. Insert {{payload}} in {{parameter}} and forward or replay the following request to the endpoint:

```HTTP
{{request}}
```

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the iFrame injection attack:

{{screenshot}}
