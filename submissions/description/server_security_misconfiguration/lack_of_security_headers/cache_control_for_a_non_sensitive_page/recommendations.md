# Recommendation(s)

The `Cache-Control` header should be configured in a way that reduces the attack surface of the application. It is important to ensure that the `Cache-Control` heading is not too permissive for the application's needs, and has directives appropriately set such as `max-age`, and `no-store` amongst others. These directives should be set in respect to sensitivity of data being stored and transmitted by the application.

For more information, please see the following guides:

- <https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control>
- <https://owasp.org/www-project-secure-headers/#cache-control>
- <https://cheatsheetseries.owasp.org/cheatsheets/XS_Leaks_Cheat_Sheet.html#using-the-cache-control-header>
