# Recommendations

The `X-XSS-Protection` header should be set to instruct browsers how to filter and block XSS attacks. For example:

`X-XSS-Protection: 1; mode=block`

This directive enables XSS filtering then prevents rendering of the web page if a XXS attack is detected.

Please note that the `X-XSS-Protection` header should not be used in modern browsers. Instead the `Content-Security-Policy` header should be used to prevent XSS attacks.

For more information, please see:

- <https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection>
- <https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP>
- <https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy>
