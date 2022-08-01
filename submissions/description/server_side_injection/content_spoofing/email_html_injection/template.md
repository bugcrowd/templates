# Content Spoofing via Email HTML Injection

## Overview of the Vulnerability

Content spoofing is a common attack where plaintext or HTML content is injected into a web page that can be rendered in a client. Due to this injection vulnerability in the application, users are often socially engineered to perform an action due to the inherent trust they have in the business and its brand.

A successful HTML content spoof on emails can allow an attacker to social engineer users to navigate to another website and have them enter information, such as their user credentials.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Perform {{action}} and capture the request in the HTTP interception proxy

1. Insert {{payload}} in {{parameter}} and forward or replay the following request to the endpoint:

```HTTP
{{request}}
```

1. Check email to see rendered HTML

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the content spoofing:

{{screenshot}}
