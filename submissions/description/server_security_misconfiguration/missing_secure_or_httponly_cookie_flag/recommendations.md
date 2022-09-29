# Recommendation(s)

The cookie should be set to include both the `Secure` and `HTTPOnly` flags. The following example shows the syntax and inclusion of the flags:

`Set-Cookie: <name>=<value>[; <Max-Age>=<age>] [; expires=<date>][; domain=<domain_name>] [; path=<some_path>][; secure][; HttpOnly]`

For more information, please see:

- <https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Set-Cookie>
- <https://owasp.org/www-community/HttpOnly>
