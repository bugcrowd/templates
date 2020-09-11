## Description


## Reproduction Steps


## References

- [https://www.owasp.org/index.php/OWASP_Secure_Headers_Project#csp](https://www.owasp.org/index.php/OWASP_Secure_Headers_Project#csp)
- [https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy)


## Remediation Advice

As a best practice, consider using the `X-Webkit-CSP` header as it will help prevent Cross Site Scripting as well as other types of injection attacks. However, be aware that Content Security Policy has a significant impact on how the browser renders pages, so careful tuning is required.

