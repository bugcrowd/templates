# Recommendations

A Cross-Site Request Forgery (CSRF) token should be included within all relevant requests. The CSRF token needs to be unpredictable, tied to a user's session, strictly validated before actions are executed, and not be stored within cookies.

Some other best practices include the following:

- Ensure that the framework is using built-in or existing CSRF prevention protections that exist within most major frameworks
- Use the `SameSite` cookie attribute, which can have the values of `Lax`, `Strict`, or `None`. For example:

    ``` HTTP
    Set-Cookie: JSESSIONID=xxxxx; SameSite=Strict
    ```

For more information, please see:

- <https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.html>
- <https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.html#synchronizer-token-pattern>
