# Failure to Invalidate Session

## Overview of the Vulnerability:

Failure to invalidate a session is a vulnerability which allows an attacker to maintain access to a service. An attacker can use previously acquired sessions to exploit the privacy of a targeted user by continually accessing their account and gathering information about an application’s endpoints an unauthenticated user will not usually have access to.

An attacker may compromise a user’s session through a variety of ways including, calling an internal post authentication page, modifying the given URL parameters, phishing a user, by manipulating a form, or by counterfeiting sessions. Once they have gained account access, an attacker may be able to change the password of the account and lock out the legitimate user. The attacker’s actions are limited by the privileges of the user’s account that they gain access to. This could include viewing or editing sensitive customer data, viewing or editing other user permissions.

## Business Impact:

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

## Steps to Reproduce:

1. Sign into a user’s account (Browser A)
1. Sign into the same user’s account, using a different browser (Browser B)
1. Observe that both user sessions are valid

## Proof of Concept (PoC):

The screenshot below shows the the application failing to invalidate the session:

{{screenshot}}
