## Description


## Reproduction Steps


## References

- https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Authentication_Cheat_Sheet.md#authentication-and-error-messages


## Remediation Advice

Login: When an authentication request fails, ensure that all responses are identical, regardless of whether it was the username or the password that caused the authentication to fail. The HTTP response needs to be the same as well. There should not be a single byte or bit difference.

Reset Password: There can not be a discrepancy in the form responses when using the reset a password functionality. The same message should be sent, back to the user, regardless of whether the username or email exists as an account or not.

Registration: As a best practice to prevent usernames from being enumerated when creating an account, the username should be an email address. When an attempt is made to create a new user account, the same message can be displayed regardless of whether the email address exists in the system or not. For example: "A confirmation has been sent to the email provided."
