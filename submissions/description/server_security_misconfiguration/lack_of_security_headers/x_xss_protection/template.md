# Lack of X-XSS-Protection Header

## Overview of the Vulnerability

A lack of the HTTP response header for `X-XSS-Protection` can lead to sensitive user data being retrieved by an attacker through Cross-Site Scripting (XSS) attacks. There are multiple HTTP response headers used in communication between the server and client which can be implemented to improve security against well documented vulnerabilities. For example, the `X-XSS-Protection` security header is used in legacy versions of Internet Explorer, Safari, and Chrome to prevent clients from loading reflected XSS attacks.

An advanced attacker can leverage a missing `X-XSS-Protection` header to bypass security controls of an application to execute code within a user's browser.

## Business Impact

Not having a `X-XSS-Protection` header can lead to reputational damage and indirect financial loss to the business due to an advanced attacker’s ability to access data through a XSS attack. The degree of impact is dependent on the sensitivity of data being stored and transmitted by the application, and the sophistication of the attacker’s abilities.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Navigate to the following endpoint using a browser: {{URL}}
1. Capture the request using the HTTP interception proxy
1. Observe that no `X-XSS-Protection` header is implemented within the HTTP headers

## Proof of Concept (PoC)

The screenshot below demonstrates the missing header:

{{screenshot}}
