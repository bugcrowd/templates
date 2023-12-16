# Insufficient Entropy

## Overview of the Vulnerability:

Cryptography is used to ensure secure storage and transmission of data. When insufficient entropy is used to generate cryptographic keys, it is possible to predict or guess the keys. Insufficient entropy of cryptographic algorithm generation was identified which can allow an attacker to break the confidentiality of requests sent to and from the endpoint.

## Business Impact:

This vulnerability can lead to reputational damage of the company through the impact to customers’ trust, and the ability of an attacker to view data. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

## Steps to Reproduce:

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Setup {{software}} to intercept and log requests
1. Use a browser to navigate to: {{URL}}
1. {{action}} to view unencrypted requests

## Proof of Concept (PoC):

The screenshot below demonstrates the insufficient entropy:

{{screenshot}}
