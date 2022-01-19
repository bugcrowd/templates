# Lack of X-Content-Security-Policy Header

## Overview
HTTP response headers determine how the client should process the content. There are multiple headers which can be implemented to improve security against well documented vulnerabilities. The HTTP Strict Transport Security (HSTS) header instructs the website to enforce the use of HTTPS.
 
A lack of an HSTS header allows a malicious attacker to Man-in-The-Middle (MiTM) a HTTP connection.

## Walkthrough & PoC

1. Navigate to endpoint: {{value}}

1. Intercept request in a Web Proxy

1. Notice that no HSTS header is used


## Vulnerability Evidence

The image(s) below demonstrates a lack of HSTS headers:

{{screenshot}}

## Demonstrated Impact

A lack of HSTS headers allows for a MiTM attack to redirect users to a malicious site.

