# Recommendation(s)

At a minimum, all non-current user sessions should be invalidated when the user sets up or changes their 2FA. However, it is best practice to invalidate all sessions upon 2FA activation or change and have the user login to their account again and prompt for the newly created 2FA mechanism.

Short session expiration should be considered for all user sessions as they allow an attacker less time to use a valid session ID. Session timeout values should be set based upon business needs which take into consideration the criticality of the application and the data contained within.

For further information, please see Open Web Application Security Project (OWASP):

- <https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html#renew-the-session-id-after-any-privilege-level-change>
- <https://cheatsheetseries.owasp.org/cheatsheets/Multifactor_Authentication_Cheat_Sheet.html>
