HTTP request methods are used to indicate the desired action to be performed in communications between a client and a server. It is possible to perform create, read, update, and delete, amongst other operations. While not a vulnerability within itself, an attacker can use different HTTP methods when they are enabled to gather information, or interact with an endpoint in a way that is unintended. This can lead to an attacker modifying the endpoint in unsafe ways and gathering further information about the system for further attacks.

## Business Impact

HTTP methods enabled can lead to reputational damage for the business through the impact to customers’ trust in the security of the application.

## Steps to Reproduce

1. Enable a HTTP intercept proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to login and navigate to: {{URL}}
1. Within the HTTP intercept proxy insert the following request:

{{screenshot}}

1. Observe the change of the HTTP method
1. Forward the new request to the application

## Proof of Concept (PoC)

The screenshot below demonstrates the HTTP method enabled:

{{screenshot}}
