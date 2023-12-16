# Lack of Binary Hardening (Runtime Instrumentation-Based)

## Overview of the Vulnerability:

A lack of runtime instrumentation-based binary hardening of an application increases its attack surface and leaves it open to code analysis, reverse engineering, or modification of the application. When an application cannot detect changes in the code base at runtime compared to known integrity checks, the application can react in unpredictable ways. An attacker can take advantage of this lack of checks at runtime and alter the performance of the application, then also perform further attacks on the application, the business, or its users.

## Business Impact:

This vulnerability can lead to indirect financial loss to the company due to data theft, application manipulation and corruption, or denial of service to customers and users of the application. It can also lead to reputational damage as customers may view the application as insecure.

## Steps to Reproduce:

1. Navigate to the source code files of the application
1. Observe that there is no integrity checking in the source code at runtime

## Proof of Concept (PoC):

The screenshot below shows the lack of binary hardening:

{{screenshot}}
