# Basic Server-Side Template Injection

## Overview of the Vulnerability

Server-Side Template Injection (SSTI) is a vulnerability within application templating engines where user input is improperly handled and is embedded into the template, possibly leading code being executed.

An attacker can use SSTI to execute code on the underlying system by manipulating values within the embedded template. When code is executed within the underlying system, it can allow an attacker to run permissioned commands under the exploited process, or exploit Cross-Site Scripting (XSS) to run code within the user's browser.

## Business Impact

SSTI can lead to reputational damage for the business due to a loss in confidence and trust by users. If an attacker successfully executes code within the underlying system, it can result in data theft and indirect financial losses.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. {{action}} and intercept the request in a the HTTP interception proxy
1. Replay, or forward, the request to see: {{action}}
1. Replace {{parameter}} value with {{value}} to {{action}}

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the SSTI:

{{screenshot}}
