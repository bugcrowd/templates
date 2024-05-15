# Recommendations

All user input fields should be validated and sanitized based on what the field is likely to contain. For example, a date of birth field should only contain a maximum of 10 characters consisting of numbers and forward slashes. Drop down or pick lists can be used for allowable inputs to ensure expected values are sent to the server. Similarly, output encoding should be used to properly escape user input and dynamic content when it is displayed on a page.

Additionally, use appropriate HTTP response headers to ensure the browser correctly interprets responses. For example:

``` HTTP

 x-content-type-options: nosniff
 Content-Security-Policy: default-src ‘self’; script-src ‘self’

```

For more information, please see:

- <https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html>
