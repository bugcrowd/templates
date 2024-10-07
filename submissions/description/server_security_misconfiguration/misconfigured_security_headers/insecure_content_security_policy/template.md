The configured `Content Security Policy` (CSP) was insecure.

CSP is a mechanism designed to add an additional layer of protection against injection attacks such as Cross-Site Scripting (XSS) and clickjacking. CSP achieves this by specifying the limitations on which resources may be loaded and from where.

A CSP can inherit weakness if configured by attributes that reduce the security benefits of having a CSP. The in-scope application's CSP was found to be insecure due to the usage of the following explicitly unsafe source expressions:

{{replace following with relevant insecure directives}}
- unsafe-inline: allows the execution of untrusted inline page scripts and event handlers
- unsafe-eval: allows the execution of code injected into DOM APIs such as eval()

An attacker may leverage an insecure CSP to attempt attacks with the aim of executing malicious code in a user’s browser.

**Business Impact**
An insecure `Content-Security-Policy` header can lead to reputational damage and indirect financial loss to the business due to an advanced attacker’s ability to access data through a XSS attack. The degree of impact is dependent on the sensitivity of data being transmitted over the wire and the sophistication of the attacker’s abilities.


**Proof of Concept (PoC)**

The following code snippet contains the Content-Security-Policy header returned by the application:

`Content-Security-Policy:<contents>`
