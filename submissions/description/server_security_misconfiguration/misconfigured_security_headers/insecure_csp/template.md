The application implements a Content Security Policy (CSP) header, but the policy is configured insecurely. A CSP is a mechanism designed to add an additional layer of protection against injection attacks such as Cross-Site Scripting (XSS) and clickjacking. The CSP achieves this by specifying the limitations on which resources may be loaded and from where. A CSP can inherit weakness if configured by attributes that reduce the security benefits of having a CSP. An attacker can leverage an insecure CSP to attempt attacks with the aim of executing malicious code in a user’s browser.

**Business Impact**
An insecure `Content-Security-Policy` header can lead to reputational damage and indirect financial loss to the business due to an advanced attacker’s ability to access data through a XSS attack. The degree of impact is dependent on the sensitivity of data being transmitted over the wire and the sophistication of the attacker’s abilities.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Inspect the HTTP response headers and locate the `Content-Security-Policy` header
1. Review the policy and note the usage of the following explicitly unsafe source expressions:

- unsafe-inline: allows the execution of untrusted inline page scripts and event handlers
- unsafe-eval: allows the execution of code injected into DOM APIs such as eval()

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
