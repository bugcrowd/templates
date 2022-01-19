# Lack of X-XSS-Protection Header

## Overview
HTTP response headers determine how the client should process the content. There are multiple headers which can be implemented to improve security against well documented vulnerabilities. The `X-XSS-Protection` response header prevents clients from loading reflected Cross-Site scripting (XSS) attacks.

A lack of a `X-XSS-Protection` header in {{target}} allows a malicious attacker to successfully exploit a XSS attack.

## Walkthrough & PoC

1. Navigate to the endpoint with the missing header: {{value}}

1. Intercept a request and send it to a Web Proxy

1. Replay the request and notice the missing header in response

1. If applicable, insert the following payload to {{target}} on {{parameter}} to exploit XSS:

{{value}}


## Vulnerability Evidence

The image(s) below demonstrates the missing header:

{{screenshot}}

## Demonstrated Impact

An attacker can leverage a missing `X-XSS-Protection` to bypass security controls of an application to execute code within a user's browser.

Below is a screenshot of a full exploit: 

{{screenshot}}
