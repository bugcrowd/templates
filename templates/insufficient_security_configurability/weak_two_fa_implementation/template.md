## Description


## Reproduction Steps


## References


## Remediation Advice

Ensure that the second factor authentication is properly configured, has sufficient rate limiting, and cannot be bypassed. 2FA secret should be rotated every time 2FA is reenabled by the user and not remain obtainable after 2FA is turned on. Additionally consider providing a 2FA failsafe mechanism so the users can safely recover their accounts.

