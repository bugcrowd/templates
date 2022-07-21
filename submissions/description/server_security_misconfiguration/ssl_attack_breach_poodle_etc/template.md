# SSL Attack BREACH and POODLE

## Overview of the Vulnerability

Browser Reconnaissance & Exfiltration via Adaptive Compression of Hypertext (BREACH) and Padding Oracle On Downgraded Legacy Encryption (POODLE) are vulnerabilities in SSL and TLS that allows a malicious attacker to injection plaintext into a victim's request or force an SSL downgrade to decrypt encrypted data over thousands of requests. This application is vulnerable to a BREACH/POODLE attack as it supports outdated versions of SSL or TLS.

## Business Impact

SSL attacks can lead to reputational damage for the business due to a loss in confidence and trust by users who identify outdated versions of SSL or TLS. 

## Steps to Reproduce

1. Run a tool such as SSLScan, TestSLL, or SSLyze to scan the SSL/TLS configuration
1. Observe the results showing the weak SSL/TLS versions:

{{value}}

## Proof of Concept (PoC)

The screenshot below demonstrates the use of a cipher suite susceptible to a  BREACH or POODLE attack:

{{screenshot}}
