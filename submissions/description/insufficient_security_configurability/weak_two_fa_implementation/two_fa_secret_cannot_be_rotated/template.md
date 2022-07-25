# 2FA Secret Cannot be Rotated

## Overview of the Vulnerability

Two Factor Authentication (2FA) adds an extra layer of security to user accounts by prompting them to enter a uniquely generated one-time password (OTP) after they have successfully inputted their username and password. The 2FA secret cannot be rotated in the application which does not follow best practice for 2FA implementation.If an attacker were able to compromise a user's 2FA system, the user would not be able to invalidate their 2FA secret.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

## Steps to Reproduce

1. Login to the application at: {{url}}
1. Setup two factor authentication
1. After the 2FA secret is created, observe that there is no way in which the secret can be rotated

## Proof of Concept (PoC)

The screenshot(s) below demonstrates that the 2FA code can’t be rotated:

{{screenshot}}
