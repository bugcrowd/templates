# Recommendation(s)

There is no single technique to stop CSRF from occurring. However, implementing the right combination of defensive measures within the application will prevent and limit the impact of CSRF. Some best practices include the following:

- All state changing requests should include CSRF tokens which are validated on the backend of the application. This token should be tied to the user’s session, strictly validated before an action is executed, and be unpredictable with high entropy.
- Ensure that the framework is using built-in or existing CSRF prevention protections that exist within most major frameworks
- Use the `SameSite` cookie attribute, which can have the values of `Lax`, `Strict`, or `None`. For example:

    ``` HTTP
    Set-Cookie: JSESSIONID=xxxxx; SameSite=Strict
    ```

For more information, please see the Open Web Application Security Project (OWASP) guides located at:

- <https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.html>
- <https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.html#token-based-mitigation>
- <https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.html#use-built-in-or-existing-csrf-implementations-for-csrf-protection>
- <https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.html#samesite-cookie-attribute>
