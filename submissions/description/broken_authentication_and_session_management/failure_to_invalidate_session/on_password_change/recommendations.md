# Recommendation(s)

All user sessions should be invalidated server-side when the user resets their password. At a minimum, all non-current user sessions should be invalidated server-side when the user changes their password.

Session expiration should be considered for all user sessions as shorter user sessions allow an attacker less time to use a valid session ID. Session timeout values should be set based upon the criticality of the application and the data contained within.

For further information, please see Open Web Application Security Project (OWASP):

- <https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html#renew-the-session-id-after-any-privilege-level-change>
- <https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html#session-expiration>
- <https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html>
