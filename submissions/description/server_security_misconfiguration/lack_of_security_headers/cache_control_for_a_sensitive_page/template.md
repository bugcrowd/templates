A lack of the HTTP response header for `Cache-Control` can lead to sensitive data being extracted from cached sessions. There are multiple HTTP response headers used in communication between the server and client which can be implemented to improve security against well documented vulnerabilities. For example, the `Cache-Control` security header is used to prevent cached data being accessible.

An advanced attacker can leverage a missing `Cache-Control` header to extract sensitive data from cached sessions in order to build a phishing profile against a target user and launch further attacks.

## Business Impact

When sensitive data is being stored and transmitted by the application which does not have the `Cache-Control` header, an advanced attacker can access the sensitive data, phish users and cause reputational damage to the business.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Navigate to the following endpoint using a browser: {{URL}}
1. Capture the request using the HTTP interception proxy and review the response
1. Observe that no `Cache-Control` header is implemented within the HTTP headers
1. Close the browser tab and any open sessions
1. View the cache and observe sensitive details are present

## Proof of Concept (PoC)

The screenshot below demonstrates the missing `Cache-Control` header:

{{screenshot}}

The screenshot below shows the sensitive details present in the cache:

{{screenshot}}
