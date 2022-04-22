# Recommendation(s)

There is no single technique to stop XSS from occurring. However, implementing the right combination of defensive measures within the application will prevent and limit the impact of XSS. Some best practices include the following:

Where sources of information (input) are available, input should be sanitised to ensure only the desired information (and no special characters, or HTML) are being stored.  All user input fields should be sanitized based on what the field is likely to contain. For example, a date field `(01/01/2001)` should be stored using the appropriate data type, and not in a string based format.

Additionally, where sinks of information (output) are being presented in the application, the output should be appropriately encoded to ensure that HTML or Javascript isn't able to be rendered, should it have been stored via an input source.

It is also best practice to use appropriate HTTP response headers to ensure the browser correctly interprets responses. These should be customized specific to the application, and its environment. For example:

```
X-Content-Type-Options: nosniff
Content-Security-Policy: default-src ‘self’; script-src ‘self’
```

For more information, please see Open Web Application Security Project (OWASP):

<https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html>
<https://owasp.org/www-community/attacks/xss/>
