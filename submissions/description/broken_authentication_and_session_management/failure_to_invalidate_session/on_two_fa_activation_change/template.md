# Failure to Invalidate Session on Two-Factor Authentication Activation or Change

## Overview of the Vulnerability

Failure to invalidate a session after a change in Two-Factor Authentication (2FA) can allow an attacker, who has access to the session cookies, full account access where they can perform actions that the user can. Most users have the expectation that when they reset, change, or activate 2FA, no one else can access their account. When sessions are not invalidated upon 2FA activation or change, the user’s trust is broken. Applications that fail to invalidate sessions when 2FA activated or changed are more susceptible to account takeover by an attacker who has gained a foothold in a legitimate user’s account.

An attacker may compromise a user’s session through a variety of ways including, calling an internal post authentication page, modifying the given URL parameters, phishing a user, by manipulating a form, or by counterfeiting sessions. Once they have gained account access, an attacker may be able to change the password or set their own 2FA on the account and lock out the legitimate user. The attacker’s actions are limited by the privileges of the user’s account that they gain access to. This could include viewing or editing sensitive customer data, viewing or editing other user permissions.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

## Steps to Reproduce

1. Sign into a user’s account (Browser A)
1. Sign into the same user’s account, using a different browser (Browser B)
1. Using Browser A, set up 2FA for the account
1. Using Browser B, perform an authenticated action, such as changing the profile name
1. Observe that the authenticated action is successful and that the user session is still valid

## Proof of Concept (PoC)

The screenshots below show 2FA being set and the application failing to invalidate the session:

{{screenshot}}
