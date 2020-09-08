# Description


# Reproduction Steps


# References

- https://www.owasp.org/index.php/OWASP_Secure_Headers_Project#hsts
- https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security


# Remediation Advice

As a best practice, consider using the `Strict-Transport-Security` header as it will help ensure protection against TLS protocol downgrade attacks and cookie hijacking. The header also ensures that browsers are only serving requests using a secure HTTPS connection.