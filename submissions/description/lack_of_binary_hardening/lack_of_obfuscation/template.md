# Lack of Obfuscation

## Overview of the Vulnerability

A lack of obfuscation of the source code of an application increases its attack surface and leaves it open to code analysis, reverse engineering, or modification of the application. An attacker could abuse non-obfuscated source code of the application, read source code without any hindrances and perform  further attacks on the application, the business, or its users.

## Business Impact

This vulnerability can lead to indirect financial loss to the company due to data theft, application manipulation and corruption, or denial of service to customers and users of the application. It can also lead to reputational damage as customers may view the application as insecure.

## Steps to Reproduce

1. Navigate to the source code files of the application
1. Observe that there is no obfuscation in the source code

## Proof of Concept (PoC)

The screenshot below shows the lack of obfuscation:

{{screenshot}}
