A lack of the HTTP response header for `Content-Security-Policy-Report-Only` can lead to sensitive user data being retrieved by an attacker through Cross-Site Scripting (XSS) and click-jacking attacks without being detected. There are multiple HTTP response headers used in communication between the server and client which can be implemented to improve security against well documented vulnerabilities. For example, the `Content-Security-Policy-Report-Only` security header allows for a report to be generated each time the browser detects a violation from the Content Security Policy (CSP).

An advanced attacker can leverage a missing `Content-Security-Policy-Report-Only` header to launch XSS attacks and execute malicious code in a user’s browser without detection.

**Business Impact**

Not having a `Content-Security-Policy-Report-Only` header can lead to reputational damage and indirect financial loss to the business due to an advanced attacker’s ability to access data undetected. The degree of impact is dependent on the sensitivity of data being transmitted over the wire and the sophistication of the attacker’s abilities.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Navigate to the following endpoint using a browser: {{URL}}
1. Capture the request using the HTTP interception proxy and review the response
1. Observe that no `Content-Security-Policy-Report-Only` header is implemented within the HTTP headers

**Proof of Concept (PoC)**

The screenshot below demonstrates the missing header:

{{screenshot}}
