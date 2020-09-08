# Description


# Reproduction Steps


# References

- https://www.owasp.org/index.php/OWASP_Secure_Headers_Project#xxxsp_bp
- https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection


# Remediation Advice

As a best practice, consider using the `X-XSS-Protection` header as it will help ensure browsers that support this header will detect and help mitigate against reflected Cross Site Scripting. It is important to note that this will not completely mitigate against all reflected Cross Site Scripting attacks, but will help prevent many generic injection attacks.