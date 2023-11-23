# Certificate Error

## Overview of the Vulnerability:

When a web page is loaded, the browser makes a series of checks against the website’s Secure Socket Layer (SSL) certificate. When these checks fail, the browser blocks the webpage from loading and issues a certificate error. An attacker can leverage this information to identify what caused the certificate error and execute a Person-in-The-Middle (PitM) attack to view and modify information that passes between the vulnerable endpoints.

## Business Impact:

Certificate errors can lead to reputational damage for the business due to a loss in confidence and trust by users who attempt to connect to the webpage and receive a certificate error.

## Steps to Reproduce:

1. Navigate to the following URL to find a certificate error is thrown by the browser: {{URL}}

## Proof of Concept (PoC):

The screenshot below demonstrates the misconfiguration:

{{screenshot}}
