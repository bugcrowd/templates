# Lack of Perfect Forward Secrecy (PFS)

## Overview of the Vulnerability

Perfect Forward Secrecy (PFS) is used to generate unique session keys for each communication session which reduces the likelihood of past sessions being decrypted, even if the long-term keys are compromised. Without PFS, an attacker who can identify encryption keys is able to decrypt all past and future sessions that are based on those encryption keys. This application's cryptographic mechanism lacks the use of PFS which can result in an attacker gaining access to information or privileges within the application that are protected by the same encryption keys.

## Business Impact

This vulnerability can lead to reputational damage of the company through the impact to customers’ trust, and the ability of an attacker to view data. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Setup {{software}} to intercept and log requests
1. Use a browser to navigate to: {{URL}}
1. {{action}} to view unencrypted requests

## Proof of Concept (PoC)

The screenshot below demonstrates the lack of PFS:

{{screenshot}}
