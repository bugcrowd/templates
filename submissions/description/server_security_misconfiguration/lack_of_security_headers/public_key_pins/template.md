A lack of the HTTP response header for `Public-Key-Pins` can lead to sensitive user data being retrieved by an advanced attacker through Person-in-the-Middle (PitM) attacks. There are multiple HTTP response headers used in communication between the server and client which can be implemented to improve security against well documented vulnerabilities. For example, the `Public-Key-Pins` security header is used in legacy versions of browsers to prevent clients from loading reflected XSS attacks.

An advanced attacker can leverage a missing `Public-Key-Pins` header to forge certificates and gain access to data through a PitM attack.

#### Business Impact

Not having a `Public-Key-Pins` header can lead to reputational damage and indirect financial loss to the business due to an advanced attacker’s ability to access data through a MitM attack. The degree of impact is dependent on the sensitivity of data being stored and transmitted by the application, and the sophistication of the attacker’s abilities.

#### Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Navigate to the following endpoint using a browser: {{URL}}
1. Capture the request using the HTTP interception proxy and review the response
1. Observe that no `Public-Key-Pins` header is implemented within the HTTP headers

#### Proof of Concept (PoC)

The screenshot below demonstrates the missing header:

{{screenshot}}
