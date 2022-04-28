# Second Factor Authentication (2FA) Bypass

## Overview of the Vulnerability

Incorrectly implemented Second Factor Authentication (2FA) mechanisms can be bypassed through manipulation of the form, modifying the given URL parameters, or by counterfeiting the session. The 2FA mechanism for this application can be bypassed by an attacker who can gain access to the application through a user’s account and impersonate users.

The attacker is only limited by the permissions of the user account they access, including Administrator users. This could include viewing or editing sensitive customer data, viewing or editing other user permissions, and taking over other user accounts or elevating privileges.

## Business Impact

Bypassing 2FA mechanisms could lead to data theft through the attacker’s ability to manipulate data through their access to the application, and their ability to interact with other users, including performing other malicious attacks, which would appear to originate from a legitimate user. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Attempt to sign in to the application
1. Intercept the 2FA request using the HTTP interception proxy
1. Modify the body of the request (as below) and forward it to the endpoint:

```HTTP
{{request}}
```

1. Observe that the 2FA mechanism has been bypassed and a successful login has occurred

## Proof of Concept (PoC)

The screenshot below demonstrates that 2FA has been bypassed:

{{screenshot}}
