# Initialization Vector (IV) Reuse

## Overview of the Vulnerability

Cryptographic algorithms use an initial block of data called an Initialization Vector (IV) alongside the plaintext data that is encrypted. When this IV is reused across multiple encryptions, the cryptographic algorithms are weakened as an attacker can differentiate the IV from the original encrypted data. This can lead to further targeted attacks.

## Business Impact

This vulnerability can lead to reputational damage of the company through the impact to customers’ trust, and the ability of an attacker to view data. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Setup {{software}} to intercept and log requests
1. Use a browser to navigate to: {{URL}}
1. {{action}} to view unencrypted requests

## Proof of Concept (PoC)

The screenshot below demonstrates the initialization vector reuse:

{{screenshot}}
