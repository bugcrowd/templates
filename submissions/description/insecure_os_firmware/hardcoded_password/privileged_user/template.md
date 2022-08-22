# Insecure OS Firmware (Hard-Coded Password for Privileged User)

## Overview of the Vulnerability

When Operating System (OS) firmware is insecure, it broadens the application’s attack surface and gives  an attacker more opportunity to maintain persistence and achieve a high level of privilege within the application. Firmware can be exploited via network, software, or hardware layers. Once compromised, an attacker can establish persistence, capture sensitive data, exfiltrate data, impact application performance, or pivot into attacking the company’s wider network.

A hard-coded password for a privileged user was identified in the source code of the application. An attacker could abuse the hard-coded password for a privileged user to gain access to aspects of the application they normally would not have access to. With this increased access, a malicious attacker could perform other attacks on the application, or gather sensitive data from within the application.

## Business Impact

This vulnerability can lead to direct financial loss to the company due to data theft, application manipulation and corruption, or denial of service to customers and users of the application. It can also lead to reputational damage as customers may view the application as insecure.

## Steps to Reproduce

1. Navigate to the source code files of the application
1. Observe that a password is hard-coded into the source code and does not require external validation

## Proof of Concept (PoC)

The screenshot below shows the hard-coded password within the application source files:

{{screenshot}}
