# Recommendation(s)

The session token should be sent over an encrypted channel (HTTPS) at all times.

Additionally, it is best practice to enforce short session expiration times for all user sessions. This allows an attacker less time to use a valid session ID. However, session timeout values should be set based upon business needs which take into consideration the criticality of the application and the data contained within.

For further information, please see:

- <https://cwe.mitre.org/data/definitions/319.html>
- <https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html>
- <https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html#secure-attribute>
