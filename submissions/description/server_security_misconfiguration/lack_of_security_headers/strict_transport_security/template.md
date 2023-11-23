# Lack of HTTP Strict Transport Security Header

## Overview of the Vulnerability:

A lack of the HTTP response header for Strict Transport Security can lead to sensitive data being transmitted unencrypted and being intercepted while in transit. There are multiple HTTP response headers used in communication between the server and client which can be implemented to improve security against well documented vulnerabilities. For example, the HTTP Strict Transport Security (HSTS) header instructs the website to enforce the use of HTTPS.

By not having a HSTS header in place, the application fails to enforce users to connect to it over an encrypted connection. If an advanced attacker is positioned to intercept or modify a user’s network traffic, they can perform a protocol downgrade attack, a Persons-in-the-Middle (PitM) attack, or hijack a user’s cookies. This aids an advanced attacker in gaining access to the data being sent between the server and client, including the login credentials or application cookies.

## Business Impact:

Not having a HSTS header can lead to reputational damage and indirect financial loss to the business due to an advanced attacker’s access to data over an unencrypted HTTP connection. The degree of impact is dependent on the sensitivity of data being transmitted over the wire.

## Steps to Reproduce:

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Navigate to the following endpoint using a browser: {{URL}}
1. Capture the request using the HTTP interception proxy
1. Observe that a HSTS header is not in the response of the HTTP request

## Proof of Concept (PoC):

The screenshot below demonstrates a lack of HSTS header:

{{screenshot}}
