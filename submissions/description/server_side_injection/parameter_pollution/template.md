# Parameter Pollution

## Overview of the Vulnerability

Parameter pollution is an attack which exploits the application logic that parses the same parameter when multiple are included in a request. This application has a HTTP parameter pollution flaw which allows an attacker to process a parameter multiple times. This is achieved via crafting a request with multiple instances of the same parameter in the request. As a result, the attacker may be able to trigger application errors or bypass input validation on forms.

## Business Impact

Parameter pollution can lead to reputational damage for the business due to a loss in confidence and trust by users.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. {{action}} and intercept the request in a the HTTP interception proxy
1. Insert the following payload after {{parameter}}: {{value}}
1. Replay, or forward, the request to see: {{action}}

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the parameter pollution:

{{screenshot}}
