# Differential Fault Analysis (DFA)

## Overview of the Vulnerability

Differential Fault Analysis (DFA) is an attack on that exploits differences in the application's behavior in response to specially-crafted faults or errors. The application is vulnerable to DFA as it is possible to observe different behavior in the application's cryptographic system when faults are induced. This can allow an attacker to compromise the security of cryptographic keys.

## Business Impact

This vulnerability can lead to reputational damage of the company through the impact to customers’ trust, and the ability of an attacker to view data. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Setup {{software}} to intercept and log requests
1. Use a browser to navigate to: {{URL}}
1. {{action}} to view unencrypted requests

## Proof of Concept (PoC)

The following screenshot(s) demonstrate(s) this vulnerability:

{{screenshot}}
