# Recommendation(s)

Broken authentication issues can be remediated by implementing a handful of best practices relating to authentication and session management to ensure secure implementation. These include:

- Reducing the JWT lifetime to the minimum duration required for the application's use case
- Pairing all short-lived access tokens with a refresh token mechanism that allows the client to obtain new access tokens without requiring reauthentication
- Storing refresh tokens securely, rotating them on each use, and making them revocable by the server
- Ensuring that server-side token revocation for logout and password change events is implemented.

The verification logic of the application, as well as all of the above, should be thoroughly tested during the development and QA phases of an application build.

For further information, refer to Open Web Application Security Project (OWASP) guides located at:

- <https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html>
- <https://owasp.org/Top10/A07_2021-Identification_and_Authentication_Failures/>
