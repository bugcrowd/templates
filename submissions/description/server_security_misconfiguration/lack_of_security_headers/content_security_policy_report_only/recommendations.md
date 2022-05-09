# Recommendation(s)

The `Content-Security-Policy-Report-Only` header should be set to include the directive `report-uri` to report violations of the CSP. For example:

`Content-Security-Policy-Report-Only: report-uri; <policy-directive>`

Additionally, the `Content-Security-Policy` header should be configured in a way that reduces the attack surface of the application. The CSP header is not set as a catch all value, due to its permissive design. Therefore, It is important to ensure that the CSP heading is not too permissive for the application's needs.

For more information, please see:

- <https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy-Report-Only>
- <https://cheatsheetseries.owasp.org/cheatsheets/Content_Security_Policy_Cheat_Sheet.html#2-content-security-policy-report-only-header>
- <https://owasp.org/www-community/controls/Content_Security_Policy/>
- <https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP/>
- <https://content-security-policy.com/>
