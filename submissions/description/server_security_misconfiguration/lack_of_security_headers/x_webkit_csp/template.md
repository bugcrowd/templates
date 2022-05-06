# Lack of X-Webkit-Content-Security-Policy Header

## Overview of the Vulnerability

A lack of the HTTP response header for `X-Webkit-Content-Security-Policy` can lead to sensitive user data being retrieved by an attacker through Cross-Site Scripting (XSS) attacks. There are multiple HTTP response headers used in communication between the server and client which can be implemented to improve security against well documented vulnerabilities. For example, the `X-Webkit-Content-Security-Policy` security header is used in legacy versions of browsers to prevent clients from loading reflected XSS attacks.

An advanced attacker can leverage a missing `X-Webkit-Content-Security-Policy` header to bypass security controls of an application to execute code within a user's browser.

## Business Impact

Not having a `X-Webkit-Content-Security-Policy` header can lead to reputational damage and indirect financial loss to the business due to an advanced attacker’s ability to access data through a XSS attack. The degree of impact is dependent on the sensitivity of data being stored and transmitted by the application, and the sophistication of the attacker’s abilities.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Navigate to the following endpoint using a browser: {{URL}}
1. Capture the request using the HTTP interception proxy
1. Observe that no `X-Webkit-Content-Security-Policy` header is implemented within the HTTP headers

## Proof of Concept (PoC)

The screenshot below demonstrates the missing header:

{{screenshot}}
