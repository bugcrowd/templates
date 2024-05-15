# Recommendation(s)

The application should invalidate all current user sessions, both server-side and client-side, when the user logs out.

As many common user scenarios involve users leaving or closing a page instead of logging out, short session expiration should also be considered for all user sessions. This allows an attacker less time to use a valid session ID. Session timeout values should be set based upon business needs. wThe length of the session should take into consideration the criticality of the application and the data contained within.

For further information, please see Open Web Application Security Project (OWASP):

- <https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html#renew-the-session-id-after-any-privilege-level-change>
- <https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html#session-expiration>
- <https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html>
