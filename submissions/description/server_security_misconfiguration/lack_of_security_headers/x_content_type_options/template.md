A lack of the HTTP response header for `X-Content-Type-Options` can lead to sensitive user data being retrieved by an attacker and increases the attack surface for Cross-Site Scripting (XSS) attacks. There are multiple HTTP response headers used in communication between the server and client which can be implemented to improve security against well documented vulnerabilities. For example, the `X-Content-Type-Options` security header is used to ignore the MIME types of content returned from a server.

An advanced attacker can leverage a missing `X-Content-Type-Options` header to leverage MIME type sniffing which can break client-side parsers and can lead to Cross-Site Scripting (XSS) attacks.

**Business Impact**

Not having a `X-Content-Type-Options` header can lead to reputational damage and indirect financial loss to the business due to an advanced attacker’s ability to access data through a XSS attack. The degree of impact is dependent on the sensitivity of data being transmitted over the wire and the sophistication of the attacker’s abilities.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Navigate to the following endpoint using a browser: {{URL}}
1. Capture the request using the HTTP interception proxy and review the response
1. Observe that no `X-Content-Type-Options` header is implemented within the HTTP headers

**Proof of Concept (PoC)**

The screenshot below demonstrates the missing header:

{{screenshot}}
