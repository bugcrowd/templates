# Recommendation(s)

All user sessions should be invalidated when the user sets up or changes their 2FA. The application should then have the user login to their account again and prompt for the newly created 2FA mechanism.

It is also best practice to shorten session timeout values based upon business needs. The length of the session should take into consideration the criticality of the application and the data contained within.

For further information, please see Open Web Application Security Project (OWASP):

- <https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html#renew-the-session-id-after-any-privilege-level-change>
- <https://cheatsheetseries.owasp.org/cheatsheets/Multifactor_Authentication_Cheat_Sheet.html>
