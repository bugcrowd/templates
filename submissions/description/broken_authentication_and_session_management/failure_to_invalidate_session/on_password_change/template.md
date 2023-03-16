# Failure to Invalidate Session on Password Change

Failure to invalidate a session after a password change is a vulnerability which allows an attacker to maintain access on a service. Most users have the expectation that when they reset their password, no one else can access their account. When sessions are not invalidated upon a password reset, the user's trust is broken. Applications that fail to invalidate sessions when the password is changed are more susceptible to account takeover by an attacker who has gained a foothold in a legitimate user's account.

An attacker may compromise a user's session through a variety of ways including, calling an internal post authentication page, modifying the given URL parameters, phishing a user, by manipulating a form, or by counterfeiting sessions. Once they have gained account access, an attacker may be able to change the password of the account and lock out the legitimate user. The attacker's actions are limited by the privileges of the user's account that they gain access to. This could include viewing or editing sensitive customer data, viewing or editing other user permissions.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure. Additionally, this can cause escalations where a user knows that their account is compromised, but have no means of evicting an attacker by changing their password.

## Steps to Reproduce

1. Using one browser (Browser A), sign into a user's account using the login page: {{URL}}
1. Using a different browser (Browser B), sign into the same user's account 
1. Using Browser A, change the password of the account
1. Using Browser B, observe that the user session is still valid

## Proof of Concept (PoC)

The screenshots below show the password change and the application failing to invalidate the session:

{{screenshot}}

{{screenshot}}
