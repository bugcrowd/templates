# Cookie Scoped to Parent Domain

## Overview of the Vulnerability:

When a cookie is scoped to a parent domain instead of a specific host it allows any subdomain of that host to access the cookie, increasing the probability of data leakage. If the cookie contains a session token, it could be accessed by other subdomains. An attacker can leverage this misconfiguration to access data.

## Business Impact:

Cookies that are scoped to a parent domain can lead to reputational damage for the business due to a loss in confidence and trust by users.

## Steps to Reproduce:

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Use Web Proxy to intercept the response
1. Observe that the cookie is scoped to the parent domain

## Proof of Concept (PoC):

The screenshot(s) below demonstrates the misconfiguration:

{{screenshot}}
