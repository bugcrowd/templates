# Recommendation(s)

At a minimum, all non-current user sessions should be invalidated when the user changes their password. However, it is best practice to invalidate all of a user's sessions upon password reset and have the user login to their account again with the newly created password.

Additionally, short session expiration windows should be considered for all user sessions as they allow an attacker less time to use a valid session ID. Session timeout values should be set based upon business needs which take into consideration the criticality of the application and the data contained within.

For further information, please see Open Web Application Security Project (OWASP) guides relating to this:

<https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html#renew-the-session-id-after-any-privilege-level-change>
<https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html#session-expiration>
<https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html>
