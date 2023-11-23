# Non-Sensitive Token Exposed in Local or Session Storage

## Overview of the Vulnerability:

Local storage, also known as offline, web, or session storage, is the underlying storage mechanism which varies from one user agent to the next. This application discloses a non-sensitive token in the local storage which is accessible by JavaScript. As a result, the token can be captured by an attacker using Cross-Site Scripting (XSS) or Cross-Site Request Forgery (CSRF), allowing them to gather relevant user data and leverage this information to build phishing campaigns.

## Business Impact:

This vulnerability can lead to data theft through the attacker’s ability to access and manipulate sensitive data through their access to the application's local session. These malicious actions can result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce:

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Using the HTTP interception proxy, forward the following request:

```HTTP
{{request}}
```

1. Observe the exposed sensitive token

## Proof of Concept (PoC):

The following screenshot shows the non-sensitive token exposed via the local storage:

{{screenshot}}
