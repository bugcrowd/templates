# Insecure SSL

## Overview of the Vulnerability:

Insecure SSL refers to implementation flaws within the configuration of Secure Socket Layer (SSL)/Transport Layer Security (TLS), the security of the transport layer through encryption.

The insecure configuration of  SSL within this application can lead to the connection between client and server being vulnerable. An attacker can use this weakness to execute a Denial of Service (DoS) attack, or Person-in-The-Middle (PiTM) the connection between the client and server to view or manipulate data in transit.

## Business Impact:

Insecure SSL can lead to reputational damage for the business due to a loss in confidence and trust by users who can see that the transport layer security is insecure. 

## Steps to Reproduce:

1. Run a tool such as SSLScan, TestSLL, or SSLyze to scan the SSL/TLS configuration
1. Observe the results showing that the application is using the following insecure SSL:

{{value}}

## Proof of Concept (PoC):

The screenshot below demonstrates the insecure SSL:

{{screenshot}}
