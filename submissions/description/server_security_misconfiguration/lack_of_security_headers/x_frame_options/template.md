# Lack of X-Frame-Options Header

## Overview

HTTP response headers are used in communication between the server and client. There are multiple headers which can be implemented to improve security against well documented vulnerabilities. The `X-Frame-Options` security header is used to instruct a browser whether it should or should not render an iframe, frame, embed or object.

The {{target}} was lacking the `X-Frame-Options` header, which could allow a malicious attacker to execute click-jacking attacks.

## Walkthrough & PoC

1. Navigate to the endpoint with missing `X-Frame-Options`: {{value}}

1. Intercept the request and send it to a Web Proxy

1. Replay the request and notice that no `X-Frame-Options` is implemented

## Vulnerability Evidence

The image(s) below demonstrates the missing header:

{{screenshot}}

## Demonstrated Impact

An attacker can leverage a missing `X-Frame-Options` header to render an iframe, frame, embed, or object tag to bypass Same Origin Policy or exploit a click-jacking attack.

Below is a screenshot of a full exploit:

{{screenshot}}
