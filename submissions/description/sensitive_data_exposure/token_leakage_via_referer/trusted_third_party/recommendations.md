# Recommendation(s)

It is recommended to configure the application to transmit valid third-party tokens via HTTP cookies, or via hidden field forms which are submitted by using the HTTP Post method.

If using the `Referer` header, set a `Referrer-Policy` header and set the directives as appropriate to the information displayed. For example, on sensitive pages such as the password reset page the `Referrer-Policy` header can be set as follows:

`Referrer-Policy: no-referrer`

For more information, please see the following guides:

- <https://infosec.mozilla.org/guidelines/web_security.html#referrer-policy>
- <https://owasp.org/www-project-proactive-controls/v3/en/c8-protect-data-everywhere>
- <https://developer.mozilla.org/en-US/docs/Web/Security/Referer_header:_privacy_and_security_concerns>
- <https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referer>
