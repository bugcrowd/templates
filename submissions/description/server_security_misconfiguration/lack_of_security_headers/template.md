# Lack of Security Headers

## Overview of the Vulnerability

A lack of HTTP response security headers can lead to sensitive user data being retrieved by an attacker through Cross-Site Scripting (XSS), Machine-in-the-Middle (MitM), click-jacking, and some local network attacks. There are multiple HTTP response headers used in communication between the server and client which can be implemented to improve security against well documented vulnerabilities.

An advanced attacker can leverage a missing security headers to bypass security controls of an application to execute code within a user's browser or capture data in transit.

## Business Impact

Not having security headers implemented following best practices can lead to reputational damage and indirect financial loss to the business due to an advanced attacker’s ability to access data through common attack vectors. The degree of impact is dependent on the sensitivity of data being stored and transmitted by the application, and the sophistication of the attacker’s abilities.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Navigate to the following endpoint using a browser: {{URL}}
1. Capture the request using the HTTP interception proxy
1. Observe that the security headers are not implemented according to best practice

## Proof of Concept (PoC)

The screenshot below demonstrates the missing header:

{{screenshot}}
