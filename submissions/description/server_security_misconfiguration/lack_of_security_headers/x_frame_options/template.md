A lack of the HTTP response header for `X-Frame-Options` can lead to sensitive user data being retrieved by an attacker. There are multiple HTTP response headers used in communication between the server and client which can be implemented to improve security against well documented vulnerabilities. For example, the `X-Frame-Options` security header is used to instruct a browser whether it should or should not render an `<iframe>`, `<frame>`, `<embed>`, or `<object>` tag.

An advanced attacker can leverage a missing `X-Frame-Options` header to render an `<iframe>`, `<frame>`, `<embed>`, or `<object>` tag to bypass Same Origin Policy (SOP) and read data, or to exploit a click-jacking attack.

## Business Impact

Not having an `X-Frame-Options` header can lead to reputational damage and indirect financial loss to the business due to an advanced attacker’s ability to access data through a click-jacking attack, or via bypassing the SOP. The degree of impact is dependent on the sensitivity of data being transmitted over the wire and the sophistication of the attacker’s abilities.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Navigate to the following endpoint using a browser: {{URL}}
1. Capture the request using the HTTP interception proxy and review the response
1. Observe that no `X-Frame-Options` header is implemented within the HTTP headers

## Proof of Concept (PoC)

The screenshot below demonstrates the missing header:

{{screenshot}}
