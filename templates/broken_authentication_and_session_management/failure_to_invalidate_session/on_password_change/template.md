## Description


## Reproduction Steps


## References

- [https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Session_Management_Cheat_Sheet.md#renew-the-session-id-after-any-privilege-level-change](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Session_Management_Cheat_Sheet.md#renew-the-session-id-after-any-privilege-level-change)


## Remediation Advice

Properly invalidate all user sessions server-side when the user resets their password and at a minimum, invalidate all non-current user sessions sever-side when the user changes their password.

