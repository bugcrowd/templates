Disclosure of critically sensitive data occurs when the data is not properly secured, allowing critically sensitive data, such as secrets, API keys, or other data critical to business operation to be exposed. This application discloses private API keys which an attacker could use to abuse the API access and retrieve, delete, or modify data using the API functionality.

#### Business Impact

Critically sensitive data exposure can lead to indirect financial loss through an attacker accessing, deleting, or modifying data from within the application. If the API is pay-per-use, this could lead to a direct financial cost to the business if an attacker were to repeatedly request resources from the API.

This could also result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application and the API.

#### Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Observe and copy the private API key that is exposed
1. Using the HTTP interception proxy, forward the following request:

```HTTP
{{request}}
```

1. Verify that the API key is valid and allows access to sensitive data

#### Proof of Concept (PoC)

The screenshots below displays the API key disclosed:

{{screenshot}}
