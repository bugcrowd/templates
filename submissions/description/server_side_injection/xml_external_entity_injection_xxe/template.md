# XML External Entity Injection

## Overview of the Vulnerability

External Entity Injection via XML (XXE) is a vulnerability within XML logic that allows a user to insert XML that references an external file or system. The XXE vulnerability identified in this application can be used by an attacker to scan underlying systems for open ports, request confidential files, and access functionality of the connected systems that wouldn't otherwise be available. From here, the attacker may be able to exfiltrate data, interact with underlying systems, and deny service to systems via XML injections.

## Business Impact

XXE can lead to reputational damage for the business due to a loss in confidence and trust by users. It can also result in data theft and indirect financial losses to the business through the costs of notification and rectifying and breached PII data.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. {{action}} and intercept the request in a the HTTP interception proxy
1. Replace/append {{parameter}} value with {{value}} to {{action}}

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the XXE:

{{screenshot}}
