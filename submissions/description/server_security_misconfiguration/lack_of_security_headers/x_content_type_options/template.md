# Lack of X-Content-Type-Options Header 

## Overview
HTTP response headers determine how the client should process the content. There are multiple headers which can be implemented to improve security against well documented vulnerabilities. The `X-Content-Type-Options` security header is used to ignore the MIME types of content returned from a server.

A lack of a `X-Content-Type-Options` in {{target}} allows a malicious attacker to leverage MIME type sniffing which can break client-side parsers and can lead to Cross-Site Scripting (XSS) attacks. 

## Walkthrough & PoC

1. Navigate to the endpoint with missing `X-Content-Type-Options`: {{value}}

1. Intercept the request and send it to a Web Proxy

1. In the following response, it returns a `Content-Type` of {{value}} but the browser interprets the content as {{value}}:


## Vulnerability Evidence
The image(s) below demonstrates the missing header:

{{screenshot}}

## Demonstrated Impact

An attacker can leverage a missing `X-Content-Type-Options` to force the browser to MIME sniff.

Below is a screenshot of a full exploit of MIME sniffing:

{{screenshot}}
