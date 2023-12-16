# Failure to Invalidate Sessions via Email Change

## Overview of the Vulnerability:

Sessions commonly fail to invalidate active sessions. An attacker can use previously acquired sessions to exploit the privacy of a targeted user by continually accessing their account and gathering information about an application’s endpoints an unauthenticated user would not usually have access to. Even when a valid user changes their email address within the application, other user sessions are not invalidated.

An attacker may compromise a user’s session through a variety of ways including, calling an internal post authentication page, modifying the given URL parameters, phishing a user, by manipulating a form, or by counterfeiting sessions. Once they have gained account access, an attacker may be able to change the password of the account and lock out the legitimate user. The attacker’s actions are limited by the privileges of the user’s account that they gain access to. This could include viewing or editing sensitive customer data, viewing or editing other user permissions.

## Business Impact:

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

## Steps to Reproduce:

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Sign into a user’s account
1. Capture any authenticated request
1. Change the email address associated with the account
1. Logout of the application
1. Replay the request using the HTTP interception proxy
1. Observe that the application responds to the request

## Proof of Concept (PoC):

The screenshot below shows the the application failing to invalidate the session:

{{screenshot}}
