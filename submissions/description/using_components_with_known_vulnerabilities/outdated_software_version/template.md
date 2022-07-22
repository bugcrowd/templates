# Outdated Software Version

## Overview of the Vulnerability

Outdated software is common in applications that use many types of different software stacks. Some outdated software versions have well known and documented vulnerabilities, including those with Common Vulnerabilities and Exposures (CVE) IDs.

A malicious attacker can take advantage of old software versions by using open source vulnerabilities and CVEs to exploit an application.

Browser Reconnaissance & Exfiltration via Adaptive Compression of Hypertext (BREACH) and Padding Oracle On Downgraded Legacy Encryption (POODLE) are vulnerabilities in SSL and TLS that allows a malicious attacker to injection plaintext into a victim's request or force an SSL downgrade to decrypt encrypted data over thousands of requests. This application is vulnerable to a BREACH/POODLE attack as it supports outdated versions of SSL or TLS.

## Business Impact

SSL attacks can lead to reputational damage for the business due to a loss in confidence and trust by users who identify outdated versions of SSL or TLS.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Intercept a response with the HTTP interception proxy
1. Observe the outdated software version: {{value}}

```HTTP
{{response}}
```

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the outdated software with known vulnerabilities:

{{screenshot}}
