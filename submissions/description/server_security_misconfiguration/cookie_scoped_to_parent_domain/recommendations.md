# Recommendation(s)

The cookie should be scoped to the application specific domain name using the `Set-Cookie` directive. It is also best practice to include both the `Secure` and  `HTTPOnly` flags. The following example shows the syntax and inclusion of the flags:

`Set-Cookie: <name>=<value>[; <Max-Age>=<age>] [; expires=<date>][; domain=<domain_name>] [; path=<some_path>][; secure][; HttpOnly]`

For more information, please see:

- <https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Set-Cookie>
- <https://owasp.org/www-project-web-security-testing-guide/v41/4-Web_Application_Security_Testing/06-Session_Management_Testing/02-Testing_for_Cookies_Attributes.html>
- <https://www.rfc-editor.org/rfc/rfc6265#section-4.1>
