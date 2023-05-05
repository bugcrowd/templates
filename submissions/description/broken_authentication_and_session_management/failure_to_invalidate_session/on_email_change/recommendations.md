# Recommendation(s)

The application should invalidate all current user sessions, both server-side and client-side, when a user changes their email.

It is also best practice to shorten session timeout values based upon business needs. The length of the session should take into consideration the criticality of the application and the data contained within.

For further information, please see Open Web Application Security Project (OWASP):

- <https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html#simultaneous-session-logons>
- <https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html#session-expiration>
