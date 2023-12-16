# Internal IP Address Disclosure

## Overview of the Vulnerability:

Sensitive data can be exposed when it is not behind an authorization barrier. When this information is exposed it can place the application at further risk of compromise. This application discloses an internal IP address which an attacker could interact with to send requests and execute functions on the underlying system.

## Business Impact:

When an application fails to mask internal IP addresses it leaves the internal network more susceptible to future network based attacks.

## Steps to Reproduce:

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. In the HTTP interception proxy, observe the disclosed internal IP address

## Proof of Concept (PoC):

The following screenshot shows the disclosed internal IP address:

{{screenshot}}
