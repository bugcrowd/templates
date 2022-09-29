# Lack of Password Confirmation on Management of Multi-Factor Authentication

## Overview of the Vulnerability

User accounts are more susceptible to account takeover when there is no password confirmation on certain actions. For example, change of email address, change of password, management of Multi-Factor Authentication (MFA) details, and account deletion.

The application lacks password confirmation on the management of MFA which could be abused by an attacker who has access to the user’s account (eg. a public computer the user has not logged out of). From here the attacker could set up MFA for the account using an email or phone number they control.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Set up MFA
1. Intercept the request in a Web Proxy
1. Adjust and forward the following request to the endpoint:

```HTTP
{{request}}
```

1. Observe that no password confirmation is required

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the lack of password confirmation when setting up MFA:

{{screenshot}}
