# Exposed Sensitive Android Intent

## Overview of the Vulnerability

An `Intent` is a messaging object used within an Android application to request action from a different component of the application. When a request occurs and information is retrieved, a lack of validation can result in access controls being bypassed and sensitive information being leaked.
The application has an exposed sensitive Android `Intent` which an attacker can query to gather sensitive information from the application which they could use to perform further attacks on the application, the business, or its users.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Login to an account that should not be able to perform {{action}}
1. Forward the following request to the endpoint:

```HTTP
{{request}}
```

1. Observe that the account now has additional user functionality and access to data it was previously not authorized to access

## Proof of Concept (PoC)

The screenshot below demonstrates the broken access control:

{{screenshot}}
