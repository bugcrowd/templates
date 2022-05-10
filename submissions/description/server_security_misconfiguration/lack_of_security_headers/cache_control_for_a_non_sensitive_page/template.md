# Lack of Cache-Control Header for a Non-Sensitive Page

## Overview of the Vulnerability

A lack of the HTTP response header for `Cache-Control` can lead to sensitive data being extracted from cached sessions. There are multiple HTTP response headers used in communication between the server and client which can be implemented to improve security against well documented vulnerabilities. For example, the `Cache-Control` security header is used to prevent cached data being accessible.

An advanced attacker can leverage a missing `Cache-Control` header to extract non-sensitive data from cached sessions in order to build a phishing profile against a target user and launch further attacks.

## Business Impact

When data is being stored and transmitted by the application which does not have the `Cache-Control` header, an advanced attacker can access the data, phish users and cause reputational damage to the business. The impact is reduced by the non-sensitive nature of the data. However, if sensitive data is cached the impact to the business and its users is increased.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Navigate to the following endpoint using a browser: {{URL}}
1. Capture the request using the HTTP interception proxy and review the response
1. Observe that no `Cache-Control` header is implemented within the HTTP headers

## Proof of Concept (PoC)

The screenshot below demonstrates the missing header:

{{screenshot}}
