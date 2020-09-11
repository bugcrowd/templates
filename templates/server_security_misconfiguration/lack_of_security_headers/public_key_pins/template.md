## Description


## Reproduction Steps


## References

- [https://www.owasp.org/index.php/OWASP_Secure_Headers_Project#hpkp](https://www.owasp.org/index.php/OWASP_Secure_Headers_Project#hpkp)
- [https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Public-Key-Pins](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Public-Key-Pins)


## Remediation Advice

As a best practice, consider using the `Public-Key-Pins` header as it will help prevent website impersonation by mis-issued or otherwise fraudulent certificates. It is important to note that if this header is used incorrectly, it may prevent users from accessing a resource for an extended period of time.

