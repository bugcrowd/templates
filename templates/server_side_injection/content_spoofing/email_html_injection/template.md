## Description


## Reproduction Steps


## References

- [https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Input_Validation_Cheat_Sheet.md](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Input_Validation_Cheat_Sheet.md)


## Remediation Advice

Always ensure that email contents cannot be tampered with. Limit what the user can insert into the email by filtering special characters and limiting the amount of characters that can be inserted. Additionally, filter out any URLs as they are often rendered as links by email providers.

