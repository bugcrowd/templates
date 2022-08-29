# WAF Bypass With Direct Server Access

## Overview of the Vulnerability

A Web Application Firewall (WAF) protects applications from attacks such as Cross-Site Scripting (XSS), SQL injection, and malicious strings using pattern matching and traffic analysis. Some applications will completely rely on WAFs as their primary defense. By bypassing the WAF, an attacker can gain direct access to an application’s server via a specifically crafted payload.

## Business Impact

WAF bypass can result in reputational damage and indirect financial loss for the business through the impact to customers’ trust in the application’s security of user accounts. If an attacker successfully gains direct access to the server it can lead to user account compromise and data exfiltration.

## Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Access the application by sending the following payload to the endpoint {{value}}:

{{payload}}

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the WAF bypass:

{{screenshot}}
