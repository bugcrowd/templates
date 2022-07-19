# Insecure SSL

## Overview of the Vulnerability

Insecure SSL refers to implementation flaws within the configuration of Secure Socket Layer (SSL)/Transport Layer Security (TLS), the security of the transport layer through encryption.

The insecure configuration of  SSL within this application can lead to the connection between client and server being vulnerable. An attacker can use this weakness to execute a Denial of Service (DoS) attack, or Person-in-The-Middle (PiTM) the connection between the client and server to view or manipulate data in transit.

## Business Impact

Banner disclosures can lead to reputational damage for the business due to a loss in confidence from users who can see that the web server is running on older software. If an attacker is successful in identifying and exploiting a known vulnerability for the identified version of software on this host, this can lead to indirect financial losses and data loss.

## Steps to Reproduce

1. Use a tool such as SSLScan, TestSLL, or SSLyze to find that the application is using the following insecure SSL:

{{value}}

## Proof of Concept (PoC)

The screenshot below demonstrates the insecure SSL:

{{screenshot}}
