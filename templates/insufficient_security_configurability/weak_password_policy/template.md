## Description


## Reproduction Steps


## References

- https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Authentication_Cheat_Sheet.md#implement-proper-password-strength-controls


## Remediation Advice

1. Allow all characters to be used for passwords to avoid shortening the key space for brute-force guessing.
2. Do not impose character restrictions such as "must have at least X number of specific character type" in the password. This will shorten the key space for brute-force guessing.
2. Disallow short password lengths. 8 characters is generally considered a good minimum password length.
3. Allow for a large maximum password length.
4. Do not advertise the maximum password length as this will shorten the key space for brute-force guessing.
5. Disallow previous passwords from being used.
6. Disallow the password being the same as the email or username.
