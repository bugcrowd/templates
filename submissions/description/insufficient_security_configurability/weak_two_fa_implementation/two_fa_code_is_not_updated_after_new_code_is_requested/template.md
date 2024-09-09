Two Factor Authentication (2FA) adds an extra layer of security to user accounts by prompting them to enter a uniquely generated one-time password (OTP) after they have successfully inputted their username and password. A 2FA code is not updated when a new code is requested in the application which does not follow best practice for 2FA implementation. An attacker can take advantage of this weak 2FA implementation and potentially take over user accounts.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

## Steps to Reproduce

1. Login to the application at: {{url}}
1. When the 2FA step of the login is reached, request a code
1. When the first code is received, request a new code and verify that the second code is also received
1. Observe that the first and second code are identical, demonstrating that the 2FA code is not updated when a new code is requested

## Proof of Concept (PoC)

The screenshot(s) below demonstrates that the 2FA code is not updated when a new code is requested:

{{screenshot}}
