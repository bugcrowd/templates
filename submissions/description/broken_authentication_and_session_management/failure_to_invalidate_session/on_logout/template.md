# Failure to Invalidate Session on Logout

## Overview of the Vulnerability

Failure to invalidate a session when a user logs out is a vulnerability that increases the attack surface for session hijacking attacks, such as Cross-Site Scripting (XSS), session sniffing, and other client-side attacks. Most users have the expectation that when they logout, no one else can access their account. When sessions are not invalidated on logout, the user’s trust is broken. 

This application fails to invalidate a user’s session on logout, leaving the account vulnerable to session hijacking. An attacker may compromise a user’s session then be able to change the password of the account and lock out the legitimate user. Once the attacker has gained access to an account their actions are only limited by the privileges of the user’s account that they have gained access to. This could include viewing or editing sensitive customer data, viewing or editing other user permissions.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

Failure to invalidate a session on logout may also lead to data theft through the attacker’s ability to manipulate data through their access to the application, and their ability to interact with other users, including performing other malicious attacks, which would appear to originate from a legitimate user. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Sign into a user account
1. In the HTTP interception proxy, capture any authenticated GET or POST request
1. Log out of the user account in the browser
1. In the HTTP interception proxy, resend the following request to the endpoint {{URL}}:

```HTTP
{{request}}
```

1. Observe that the session token was not invalidated on logout

## Proof of Concept (PoC)

The screenshots below show the logout occurring and the application failing to invalidate the session:

{{screenshot}}
