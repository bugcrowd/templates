# Failure to Invalidate Session on Permission Change

Failure to invalidate a session after permission change is a vulnerability which allows an attacker to maintain access on a service. An attacker can use previously acquired sessions to continue accessing an account upon permission level change, including the revoking of permissions. This allows an attacker to gather information about an application’s endpoints an unauthenticated user will not usually have access to. The attacker's actions are limited by the privileges of the user account that they have access to. This could include viewing or editing sensitive customer data, or, viewing or editing other user permissions.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

## Steps to Reproduce

1. Using one browser (Browser A), sign into a user's account using the login page: {{URL}}
1. Using a different browser (Browser B), sign into the same user's account
1. Using Browser A, change the permission level of the account
1. Using Browser B, observe that the user session is still valid with elevated account permissions

## Proof of Concept (PoC)

The following screenshot(s) demonstrate(s) this vulnerability:

{{screenshot}}
