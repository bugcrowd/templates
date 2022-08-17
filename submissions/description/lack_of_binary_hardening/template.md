# Lack of Binary Hardening

## Overview of the Vulnerability

A lack of binary hardening of an application increases its attack surface and leaves it open to code analysis, reverse engineering, or modification of the application. An attacker with access to the code of an application with a lack of binary hardening can reverse engineer it and perform unauthorized code modification. From here, the attacker can access sensitive data stored, transmitted or processed by the application and perform further attacks on the application, the business, or its users.

## Business Impact

This vulnerability can lead to indirect financial loss to the company due to data theft, application manipulation and corruption, or denial of service to customers and users of the application. It can also lead to reputational damage as customers may view the application as insecure.

## Steps to Reproduce

1. Navigate to the source code files of the application
1. Observe that there is no binary hardening for the application

## Proof of Concept (PoC)

The screenshot below shows the lack of binary hardening:

{{screenshot}}
