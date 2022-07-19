# Insecure Cipher Suite

## Overview of the Vulnerability

Cipher suites are the encryption algorithms used to negotiate the security of the TLS handshake between a client and a server, as well as the transfer of data. There are multiple cipher suites which vary depending on order of use and which TLS protocol is supported. Insecure cipher suites are those with known vulnerabilities which can lead to client and server connection being vulnerable.
An attacker can use the weak cipher suite implementation for this application to break the chain of trust between the client and the server and execute a Denial of Service (DoS) attack, or Person-in-The-Middle (PitM) the connection to view or manipulate data in transit.

## Business Impact

Insecure cipher suites can lead to reputational damage for the business due to a loss in confidence and trust by users who view the insecure cipher suite.

## Steps to Reproduce

1. Use a tool such as SSLScan, TestSLL, or SSLyze to find that the application is using the following insecure SSL:

{{value}}

## Proof of Concept (PoC)

The screenshot below demonstrates the insecure cipher suite:

{{screenshot}}
