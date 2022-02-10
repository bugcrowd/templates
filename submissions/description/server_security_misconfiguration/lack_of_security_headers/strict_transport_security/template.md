# Lack of Strict-Transport-Security Header

## Overview

HTTP response headers are used in communication between the server and client. There are multiple headers which can be implemented to improve security against well documented vulnerabilities. The HTTP Strict Transport Security (HSTS) header instructs the website to enforce the use of HTTPS.

A lack of an HSTS header in {{target}} allows a malicious attacker to Man-in-the-Middle (MitM) a HTTP connection.

## Walkthrough & PoC

1. Navigate to endpoint: {{value}}

1. Intercept request in a Web Proxy

1. Notice that no HSTS header is used

## Vulnerability Evidence

The image(s) below demonstrates a lack of HSTS headers:

{{screenshot}}

## Demonstrated Impact

A lack of HSTS headers allows for a MitM attack to redirect users to a malicious site. This allows a malicious attacker to gain access to sensitive information being transmitted by a user.

Below is a screenshot of a full exploit:

{{screenshot}}
