Disclosure of secrets occurs when the data is not properly secured, allowing sensitive data, such as secrets, API keys, or other data critical to business operation to be exposed. This application discloses data within data traffic spam which can enable an attacker to use secrets for privilege escalation within the application, or to send API requests on behalf of the user.

**Business Impact**

Disclosure of secrets can lead to indirect financial loss through an attacker accessing, deleting, or modifying data from within the application. This could also result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1 Generate data traffic by forwarding the following request multiple times to the endpoint:

```http
{{request}}
```

1. Observe the disclosure of sensitive data in the HTTP interception proxy

**Proof of Concept (PoC)**

The screenshot below displays the secrets disclosed:

{{screenshot}}
