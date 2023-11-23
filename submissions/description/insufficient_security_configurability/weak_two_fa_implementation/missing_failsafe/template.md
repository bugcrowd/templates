# 2FA Missing Failsafe

## Overview of the Vulnerability:

Two Factor Authentication (2FA) adds an extra layer of security to user accounts by prompting them to enter a uniquely generated one-time password (OTP) after they have successfully inputted their username and password. Not providing a failsafe in the 2FA implementation in the application could prevent a user who has lost their 2FA device to an attacker from resetting the password of their account. An attacker can take advantage of this and potentially take over user accounts.

## Business Impact:

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

## Steps to Reproduce:

1. Login to the application at: {{url}}
1. Navigate to the 2FA registration page at: {{url}}
1. Register for 2FA, and observe that the implementation provides no failsafe login methods, such as offline backup codes

## Proof of Concept (PoC):

The screenshot(s) below demonstrates the missing 2FA failsafe:

{{screenshot}}
