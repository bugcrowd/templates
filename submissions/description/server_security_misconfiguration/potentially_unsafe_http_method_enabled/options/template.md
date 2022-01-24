# Potentially Unsafe OPTIONS HTTP Method Enabled

## Overview

HTTP request methods are used to indicate the desired action to be performed in communications between a client and a server. It is possible to perform create, read, update, and delete, amongst other operations. The OPTIONS HTTP Method is used for applications to recognize the types of HTTP methods that can be used for an endpoint.

While not a vulnerability within itself, a malicious attacker can use OPTION methods to gather information or interact with an endpoint in a way that is unintended.

## Walkthrough & PoC

1. Browse to the following endpoint: {{value}}

1. Intercept the following request in a Web Proxy:

{{screenshot}}

1. Change HTTP method to OPTIONS

## Vulnerability Evidence

The following image(s) shows the full exploit:

{{screenshot}}

## Demonstrated Impact

An endpoint will return a list of all methods allowed when set a request using the OPTIONS method. This could lead to a malicious attacker understanding that they have the capabilities to create, read, update, and delete, or otherwise modify the endpoint.

For the endpoint, {{value}}, a malicious attacker can use OPTIONS methods to {{value}}.
