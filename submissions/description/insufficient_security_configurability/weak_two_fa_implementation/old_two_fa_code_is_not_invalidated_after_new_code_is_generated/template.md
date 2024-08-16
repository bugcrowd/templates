Two Factor Authentication (2FA) adds an extra layer of security to user accounts by prompting them to enter a uniquely generated one-time password (OTP) after they have successfully inputted their username and password. An older 2FA code is not invalidated when a new code is generated in the application. This could allow an attacker to perform a replay attack. In this kind of attack, an attacker can use older unused 2FA codes to bypass the 2FA implementation of the application.

#### Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

#### Steps to Reproduce

1. Login to the application at: {{url}}
1. When the 2FA step of the login is reached, request a code
1. When the first code is received, request a new code and verify that the second code is also received
1. Input the first, older code into the 2FA input
1. Observe that the application allows the use of the first code after the second was generated, meaning it was not invalidated

#### Proof of Concept (PoC)

The screenshot(s) below demonstrates the old 2FA code not being invalidated:

{{screenshot}}
