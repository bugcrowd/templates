# SSL Attack BREACH and POODLE 

## Overview

Browser Reconnaissance & Exfiltration via Adaptive Compression of Hypertext (BREACH) and Padding Oracle On Downgraded Legacy Encryption (POODLE) are vulnerabilities in SSL and TLS that allows a malicious attacker to injection plaintext into a victim's request, or force an SSL downgrade to decrypt encrypted data through a man-in-the-middle attack.

Use of insecure SSL {{value}} in {{application}} allow for a malicious attacker to {{action}}.

## Walkthrough & PoC

1. Use {{program}} on the {{target}}

1. Notice the following value in the output:

{{screenshot}}

## Vulnerability Evidence

The following image(s) shows the full exploit:

{{screenshot}}

## Demonstrated Impact

A malicious attacker can decrypt data in transit using these vulnerabilities. This allows them to access all sensitive data being transmitted through the web application including passwords, login details, and session cookies. A malicious attacker with access to this sensitive information could impersonate a user, steal sensitive information, and modify, delete or download data.

