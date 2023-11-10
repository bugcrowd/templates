# Timing Attack

## Overview of the Vulnerability

Cryptography is used to ensure secure storage and transmission of data. However, there are a number of best practices that must be followed to ensure the cryptography in use remains secure and does not result in the exposure of sensitive data. The application is vulnerable to a timing attack as the time it takes to complete a cryptographic operation directly relates to user-supplied data. This allows an attacker to use a timing attack to derive the encryption key.

## Business Impact

This vulnerability can lead to reputational damage of the company through the impact to customers’ trust, and the ability of an attacker to view data. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Setup {{software}} to intercept and log requests
1. Use a browser to navigate to: {{URL}}
1. {{action}} to view unencrypted requests

## Proof of Concept (PoC)

The screenshot below demonstrates the timing attack:

{{screenshot}}
