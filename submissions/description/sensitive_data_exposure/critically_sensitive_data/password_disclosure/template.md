# Critically Sensitive Data Exposure: Password Disclosure

## Overview of the Vulnerability

Disclosure of critically sensitive data occurs when the data is not properly secured, allowing critically sensitive data, such as secrets, API keys, or other data critical to business operation to be exposed. This application discloses the password of a user’s account which an attacker could use to take over the account and access, delete, or modify data from within the application.

## Business Impact

Disclosure of secrets can lead to indirect financial loss through an attacker accessing, deleting, or modifying data from within the application. This could also result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Observe and copy the password value that is exposed
1. Using the HTTP interception proxy, forward the following request:

```HTTP
{{request}}
```

1. Verify that the password is valid and allows authenticated actions to be performed in the user’s account

## Proof of Concept (PoC)

The screenshots below displays the password disclosed:

{{screenshot}}
