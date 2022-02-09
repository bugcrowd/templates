# Recommendations

All user input fields should be sanitized based on what the field is likely to contain. For example, a date of birth field should only contain a maximum of 10 characters consisting of numbers and forward slashes. Additionally, drop down or pick lists can be used for allowable inputs to ensure expected values are sent to the server.

Encode outputs of HTTP responses to prevent them from being interpreted as active content.

Use appropriate HTTP response headers to ensure the browser correctly interprets responses. For example:

``` bash
x-content-type-options: nosniff
Content-Security-Policy: default-src ‘self’; script-src ‘self’
```

Ensure access controls are managed on the principle of least privilege, and are routinely audited for unnecessary access.

For more information, please see:

- <https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html>
