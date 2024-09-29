HTTP response manipulation is a vulnerability that exploits the way HTTP headers parse certain characters. Appending characters to HTTP headers or otherwise altering the content of a HTTP header, can allow the insertion of payloads into a header which can result in the manipulation of cookies, server information, and status codes.

This application is vulnerable to HTTP response manipulation, which an attacker can abuse to write data into the HTTP response body. From here, an attacker could insert their own session cookies to user session, append HTML to run code within a user's browser, or possibly cause a redirect to a website under their control.

**Business Impact**

HTTP response manipulation can lead to reputational damage for the business due to a loss in confidence and trust by users.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. {{action}} and intercept the request in a the HTTP interception proxy
1. Insert the following payload to {{parameter}}: {{value}}

**Proof of Concept (PoC)**

The screenshot(s) below demonstrates the HTTP response manipulation:

{{screenshot}}
