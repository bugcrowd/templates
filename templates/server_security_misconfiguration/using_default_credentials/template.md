## Description


## Reproduction Steps


## References

- https://www.owasp.org/index.php/Testing_for_default_credentials_(OTG-AUTHN-002)
- https://www.owasp.org/index.php/Configuration#Default_passwords
- https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Authentication_Cheat_Sheet.md


## Remediation Advice

1. If possible consider disabling external access.
2. Never use default credentials as it is trivial for an attacker to gain access by providing known or easy to guess credentials.
3. Always change any kind of default credentials as the first step of setting up any kind of environment.
4. Passwords should meet or exceed proper password strength requirements.
