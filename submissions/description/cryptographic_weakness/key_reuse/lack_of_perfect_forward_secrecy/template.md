# Lack of Perfect Forward Secrecy

## Overview of the Vulnerability

It was identified that the application's cryptographic mechanism lacks the use of Perfect Forward Secrecy (PFS). PFS involves the negotiation of an ephemeral key pair for each newly create session between two parties. Without PFS, an attacker would be able to compromise all past and future sessions based on a set of keys that they can decrypt. They can then leverage the keys to gain access to information or privileges within the application that are protected by the same key.

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
