# Recommendation(s)

The `Strict-Transport-Security` header should be set to instruct browsers that sites should only be accessed over a HTTPS connection. For example:

`Strict-Transport-Security: max-age=<31536000>`

Here `max-age` is set for a year, measured in seconds. It is recommended that this be set to a large value such as 1 or 2 years. Additionally, the optional directive of `includeSubDomains` can be used to include all subdomains.

For further information, please see:

- <https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security>
- <https://cheatsheetseries.owasp.org/cheatsheets/HTTP_Strict_Transport_Security_Cheat_Sheet.html>
