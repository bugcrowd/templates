# Secure Sockets Layer (SSL) Certificate Pinning

## Overview of the Vulnerability

Mobile security misconfigurations can occur at any level of the application stack and can involve unpatched software, unprotected files or pages, or unauthorized access to the application. Secure Sockets Layer (SSL) pinning adds an extra layer of security for an application as it forces the application to validate the server’s CA certificate against a known copy.

When SSL certificate pinning is misconfigured, an attacker could perform a Person-in-the-Middle (PitM) attack on the user. With access to sensitive data through a PitM attack they could perform further attacks on the application, the business, or its users.

## Business Impact

This vulnerability can lead to reputational damage as customers may view the application as insecure.

## Steps to Reproduce

1. Install the application on your mobile device
1. Route your mobile device's HTTP traffic through a proxy server and install/trust the proxy server's CA certificate
1. Execute the following payload:

{{payload}}

1. Open the application and observe that the HTTP traffic is routed through the proxy server, meaning the certificate pinning is misconfigured

## Proof of Concept (PoC)

The screenshot below shows the mobile security misconfiguration:

{{screenshot}}
