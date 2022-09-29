# Insecure OS Firmware (Command Injection)

## Overview of the Vulnerability

When Operating System (OS) firmware is insecure, it broadens the application’s attack surface and gives  an attacker more opportunity to maintain persistence and achieve a high level of privilege within the application. Firmware can be exploited via network, software, or hardware layers. Once compromised, an attacker can establish persistence, capture sensitive data, exfiltrate data, impact application performance, or pivot into attacking the company’s wider network. An attacker could abuse this command injection  vulnerability in the application to execute arbitrary commands on the user's operating system.


## Business Impact

This vulnerability can lead to direct financial loss to the company due to data theft, application manipulation and corruption, or denial of service to customers and users of the application. It can also lead to reputational damage as customers may view the application as insecure.

## Steps to Reproduce

1. Start {{application}} on the operating system and navigate to {{url}}
1. Observe that the OS firmware is insecure by {{action}}
1. Input the following payload into {{parameter}} to perform command injection:

{{Payload}}

## Proof of Concept (PoC)

The screenshots below show the steps required to exploit the command injection:

{{screenshot}}
