Two Factor Authentication (2FA) adds an extra layer of security to user accounts by prompting them to enter a uniquely generated one-time password (OTP) after they have successfully inputted their username and password. The application’s implementation of 2FA is weak which makes user accounts more susceptible to compromise. An attacker can take advantage of this weak 2FA implementation and potentially take over user accounts.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

## Steps to Reproduce

1. Login to the application at: {{url}}
1. When the two factor authentication step of the login is reached, request a code
1. Perform {{action}} and observe that the 2FA implementation is weak

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the weak implementation of 2FA:

{{screenshot}}
