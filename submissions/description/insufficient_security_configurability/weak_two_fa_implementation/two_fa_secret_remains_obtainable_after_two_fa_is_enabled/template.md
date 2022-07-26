# 2FA Secret Remains Obtainable After 2FA is Enabled

## Overview of the Vulnerability

Two Factor Authentication (2FA) adds an extra layer of security to user accounts by prompting them to enter a uniquely generated one-time password (OTP) after they have successfully inputted their username and password. The 2FA secret remains obtainable after initial setup in the application. This could allow an attacker with account access or physical access to bypass the 2FA system.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

## Steps to Reproduce

1. Login to the application at: {{url}}
1. Setup two factor authentication
1. After initial setup, observe that the two factor authentication secret is still obtainable at: {{url}}

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the full exploit:

{{screenshot}}
