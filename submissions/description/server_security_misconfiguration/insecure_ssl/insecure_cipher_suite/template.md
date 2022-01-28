# Insecure Cipher Suite

## Overview

Cipher suites are the encryption algorithms used to negotiate the security of the TLS handshake between a client and a server, as well as the transfer of data. There are multiple cipher suites which vary depending on order of use and which TLS protocol is supported. Insecure cipher suites are those with known vulnerabilities which can lead to client and server connection being vulnerable.

An insecure cipher suite {{value}} in {{application}} allow for a malicious attacker to {{action}}.

## Walkthrough & PoC

1. Use {{software}} to find the application is using the following cipher suites:

{{value}}


## Vulnerability Evidence

The image(s) below demonstrates the vulnerable cipher suites: 

{{screenshot}}

## Demonstrated Impact

A malicious attacker can use the weak cipher suite implementations to break the chain of trust between the client and the server. By breaking the cryptography, an attacker can execute a Denial of Service (DoS) or Man-in-The-Middle (MiTM) the connection between the two to view or manipulate data in transit.


