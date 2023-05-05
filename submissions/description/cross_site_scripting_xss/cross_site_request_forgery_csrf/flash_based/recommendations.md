# Recommendation(s)

Flash is now a depreciated technology that is no longer supported by many browsers. There are multiple security risks and performance issues related to Flash. Consider updating to alternative technologies, such as  HTML5, JavaScript, and CSS3.

Some other best practices include the following:

- Ensure that the framework is using built-in or existing CSRF prevention protections that exist within most major frameworks
- Use the `SameSite` cookie attribute, which can have the values of `Lax`, `Strict`, or `None`. For example:

    ``` HTTP
    Set-Cookie: JSESSIONID=xxxxx; SameSite=Strict
    ```

For more information, please see the Open Web Application Security Project (OWASP) guides located at:

- <https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.html>
- <https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.html#samesite-cookie-attribute>
