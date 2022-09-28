# Cryptographic Flaw

## Overview of the Vulnerability

Cryptography is used to ensure secure storage and transmission of data. However, there are a number of best practices that must be followed to ensure the cryptography in use remains secure. Cryptography flaws or weaknesses can result in exposure of sensitive data.

A cryptographic flaw on the endpoint allows an attacker to break confidentiality and integrity of requests sent to and from the endpoint. As a result, the attacker can view all information sent between the client and the server.

## Business Impact

This vulnerability can lead to reputational damage and direct financial loss to the company through the impact to customers’ trust, and the ability of an attacker to view data. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Setup {{software}} to intercept and log requests
1. Use a browser to navigate to: {{URL}}
1. {{action}} to view unencrypted requests

## Proof of Concept (PoC)

The screenshot below demonstrates the cryptographic flaw:

{{screenshot}}
