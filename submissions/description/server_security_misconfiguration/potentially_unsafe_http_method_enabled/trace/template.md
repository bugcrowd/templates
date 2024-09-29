HTTP request methods are used to indicate the desired action to be performed in communications between a client and a server. For example, the TRACE HTTP method is used to help applications debug by using a loopback message.

The TRACE HTTP method can be sent to this application and could be used by an attacker to gather information, or interact with an endpoint in a way that is unintended. It is possible for the TRACE method to be used in a cross-site tracing attack, a technique where a malicious attacker can bypass the `HttpOnly` tag, capture a session cookie, and gain control of a user's session.

**Business Impact**

HTTP methods enabled can lead to reputational damage for the business through the impact to customers’ trust in the security of the application.

**Steps to Reproduce**

1. Enable a HTTP intercept proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to login and navigate to: {{URL}}
1. Within the HTTP intercept proxy insert the following request:

{{screenshot}}

1. Observe the change of the HTTP method to the TRACE method
1. Forward the new request to the application

**Proof of Concept (PoC)**

The screenshot below demonstrates the HTTP method enabled:

{{screenshot}}
