When access controls are broken, users are able to perform functions outside of their intended user functionality within the application. Access controls help enforce users' access and how they interact with applications and APIs through authorization. There can be vertical, horizontal, and conditional access controls which give a user their intended permissions within an application. Broken access control in this application can be leveraged by an attacker to elevate privileges, or manipulate, destroy, or disclose data, depending on the type of access control vulnerability being exploited.

**Business Impact**

Broken access controls can lead to financial loss through an attacker accessing, deleting, or modifying data from within the application. This could also result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Login to an account that should not be able to perform {{action}}
1. Forward the following request to the endpoint:

```HTTP
{{request}}
```

1. Observe that the account now has additional user functionality and access to data it was previously not authorized to access

**Proof of Concept (PoC)**

The screenshot below demonstrates the broken access control:

{{screenshot}}
