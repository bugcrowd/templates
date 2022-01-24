# Potentially Unsafe TRACE HTTP Method Enabled

## Overview

HTTP request methods are used to indicate the desired action to be performed in communications between a client and a server. It is possible to perform create, read, update, and delete, amongst other operations. The TRACE HTTP Method is used to help applications debug by using a loopback message.

A malicious attacker can use TRACE methods to gather information or interact with an endpoint in a way that is unintended.

## Walkthrough & PoC

1. Browse to the following endpoint: {{value}}

1. Intercept the following request in a Web Proxy:

{{screenshot}}

1. Change HTTP method to TRACE

## Vulnerability Evidence

The following image(s) shows the full exploit:

{{screenshot}}

## Demonstrated Impact

The TRACE method can be used in a cross-site tracing attack, a technique where a malicious attacker can bypass the `HttpOnly` tag, capture a session cookie and gain control of a user's session.

For the endpoint, {{value}}, a malicious attacker can use TRACE methods to {{value}}
