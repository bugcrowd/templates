# Failure to Invalidate Session on Password Change

Authentication methods can be bypassed through a variety of ways including, calling an internal post authentication page, modifying the given URL parameters, by manipulating the form, or by counterfeiting sessions. A malicious attacker can perform a variety of actions through bypassing authentication methods, and is only limited by the permissions of the privileged user. This could include viewing or editing sensitive customer data, viewing or editing other user permissions, and taking over user accounts.

Failure to invalidate session on password change in {{application}} allows a malicious attacker to {{action}}.

## Walkthrough & PoC

1. Log in to {{application}} at {{url}}
1. In an HTTP proxy, capture any authenticated GET or POST request to repeat the request
1. Navigate to {{url}} and modify the password of the account used to login in step 1
1. Resend the captured request from step 2 and observe that the session token was not invalidated on password change

## Vulnerability Evidence

Please observe the failure to invalidate the session after password change below:

{{screenshot}}

## Demonstrated Impact

Authentication bypass can result in modification or theft of data, including Personally Identifiable Information (PII). This can lead to financial loss,  and reputational damage of {{program}} and their users.

Failure to invalidate a session after a password change can allow an attacker, who has gained access to an account due to a compromised password, full account access even after the password has been changed.
