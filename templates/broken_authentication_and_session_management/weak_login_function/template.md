## Description


## Reproduction Steps


## References

- [https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Authentication_Cheat_Sheet.md#transmit-passwords-only-over-tls-or-other-strong-transport](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Authentication_Cheat_Sheet.md#transmit-passwords-only-over-tls-or-other-strong-transport)


## Remediation Advice

Login forms should always be served over `HTTPS`, as well as all credentials should be transmitted over an encrypted channel at all times.

Always provide secure protocols for authentication connections as well as consider disabling any insecure protocols that are available.

