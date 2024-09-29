Broken authentication and session management vulnerabilities exist when a user is able to access resources or perform actions not intended for their user role. Identity and access controls can be bypassed through a variety of ways including but not limited to, calling an internal post authentication page, modifying the given URL parameters, by manipulating the form, or by counterfeiting sessions.

This application has authentication and session management controls which an attacker can bypass to access a user account. The attacker is only limited by the permissions of the user account they access, including Administrator users. This could include viewing or editing sensitive customer data, viewing or editing other user permissions, and taking over other user accounts or elevating privileges.

**Business Impact**

Broken authentication and session management could lead to data theft through the attacker’s ability to manipulate data through their access to the application, and their ability to interact with other users, including performing other malicious attacks, which would appear to originate from a legitimate user. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Forward the following request to the endpoint:

```HTTP
{{request}}
```

1. Observe that the authentication method or session management has been compromised in some way

**Proof of Concept (PoC)**

The screenshot below demonstrates the broken authentication and session management:

{{screenshot}}

