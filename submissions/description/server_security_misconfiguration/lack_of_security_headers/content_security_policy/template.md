# Lack of X-Content-Security-Policy Header 

## Overview

HTTP response headers determine how the client should process the content. There are multiple headers which can be implemented to improve security against well documented vulnerabilities. The `Content-Security-Policy` (CSP) security header allows admins to permissively control the types of resources allowed to load for a page. It also reduces the attack surface for Cross-Site Scripting (XSS) and click-jacking attacks.
 
A lack of a CSP header in {{target}} allows a malicious attacker to {{action}}.

## Walkthrough & PoC

1. Navigate to the endpoint with missing CSP: {{value}}

1. Intercept a request and send it to a Web Proxy

1. The following CSP headers/directives are either missing or implemented poorly:

{{value}}

1. Insert the following payload to {{target}} on {{parameter}} to bypass CSP:

{{value}}


## Vulnerability Evidence

The image(s) below demonstrates the missing CSP:

{{screenshot}}

## Demonstrated Impact

An attacker can leverage a missing CSP to bypass the security controls of an application to execute a code within a victim's browser.

Below is a screenshot of a full exploit: 

{{screenshot}}
