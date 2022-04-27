# Recommendation(s)

There is no single technique to stop XSS from occurring. However, implementing the right combination of defensive measures within the application will prevent and limit the impact of XSS. Some best practices include the following:

- All user input fields should be sanitized based on what the field is likely to contain. For example, a date field (01/01/2001) should only contain a maximum of 10 characters consisting of numbers and forward slashes. Additionally, drop down or pick lists can be used for allowable inputs to ensure expected values are sent to the server.
- Use appropriate HTTP response headers to ensure the browser correctly interprets responses. These should be customized specific to the application and its environment. For example:

``` HTTP
X-Content-Type-Options: nosniff
Content-Security-Policy: default-src ‘self’; script-src ‘self’
```

For more information, please see the Open Web Application Security Project (OWASP) guides located at:

- <https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html>
- <https://owasp.org/www-community/attacks/xss/>
