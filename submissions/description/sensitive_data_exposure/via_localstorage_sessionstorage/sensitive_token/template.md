# Sensitive Token Exposed in Local or Session Storage

## Overview of the Vulnerability

Local storage, also known as offline, web, or session storage, is the underlying storage mechanism which varies from one user agent to the next. This application discloses a sensitive token in the local storage which is accessible by JavaScript. As a result, the sensitive token can be captured by an attacker using Cross-Site Scripting (XSS), allowing them to locally reset a legitimate user’s account password to one they control, successfully taking over the user’s account.

## Business Impact

This vulnerability can lead to data theft through the attacker’s ability to manipulate data through their access to the application, and their ability to interact with other users, including performing other malicious attacks, which would appear to originate from a legitimate user. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Using the HTTP interception proxy, forward the following request:

```HTTP
{{request}}
```

1. Observe the exposed sensitive token

## Proof of Concept (PoC)

The following screenshot shows the sensitive token exposed via the local storage:

{{screenshot}}
