# Remediation Advice

The `X-Content-Security-Policy` header is depreciated. It is recommended to use `Content-Security-Policy` only, and to not use both headers as it can create unexpected behavior in browsers.

The `Content-Security-Policy` header should be configured in a way that reduces the attack surface of the application. The CSP header is not set as a catch all value, due to its permissive design. Therefore, It is important to ensure that the CSP heading is not too permissive for the application's needs.

For more information, please see:

- <https://owasp.org/www-community/controls/Content_Security_Policy/>
- <https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP/>
- <https://content-security-policy.com/>
