A race condition is a queued task executed by an application that is forced to execute multiple functions in parallel. As a result, the application logic can break. An attacker can abuse a race condition in this application to call a function multiple times to break the application’s logic, causing unintended consequences.

#### Business Impact

This race condition vulnerability can lead to reputational damage for the business due to a loss in confidence and trust by users.

#### Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Fill in the form and send the request
1. Intercept the following request in a web proxy:

``` HTTP
{{Request}}
```

1. Use {{program}} to exploit the race condition

#### Proof of Concept (PoC)

The screenshot(s) below demonstrates the race condition:

{{screenshot}}
