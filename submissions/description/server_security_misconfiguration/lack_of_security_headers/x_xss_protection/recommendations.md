# Recommendation(s)

The `X-XSS-Protection` header should not be used in modern browsers as it can create XSS vulnerabilities in websites. It has been deprecated by the Content Security Policy (CSP) security header. The CSP header, `Content-Security-Policy`, should be used to prevent XSS attacks.

The `Content-Security-Policy` header should be configured in a way that reduces the attack surface of the application. The CSP header is not set as a catch-all, due to its permissive design. Therefore, It is important to ensure that the CSP heading is not too permissive for the application's needs, and has directives appropriately set.

For older browsers that do not support the CSP header, the `X-XSS-Protection` header should be set to instruct browsers how to filter and block XSS attacks. For example:

`X-XSS-Protection: 1; mode=block`

This directive enables XSS filtering then prevents rendering of the web page if a XXS attack is detected.

For more information, please see:

- <https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection>
- <https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP>
- <https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy>
