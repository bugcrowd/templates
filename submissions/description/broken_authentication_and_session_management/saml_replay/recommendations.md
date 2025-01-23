# Recommendation(s)

SAML replay attacks can be remediated by implementing a handful of best practices relating to authentication and session management to ensure secure implementation. These include:

- SAML assertions must include time-limited tokens with precise timestamps. The Service Providers (SPs) must check these timestamps, rejecting any assertion that is outside the validity window.
- Validate SAML assertions against the originating identity provider to ensure authenticity.
- Regularly monitor authentication logs for unusual patterns, such as repeated use of the same token.

The verification logic of the application, as well as all of the above, should be thoroughly tested during the development and QA phases of an application build.

For further information, refer to Open Web Application Security Project (OWASP) guide located at:

- <https://cheatsheetseries.owasp.org/cheatsheets/SAML_Security_Cheat_Sheet.html>
