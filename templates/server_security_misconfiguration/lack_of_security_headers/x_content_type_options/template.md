## Description


## Reproduction Steps


## References

- https://www.owasp.org/index.php/OWASP_Secure_Headers_Project#xcto
- https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Content-Type-Options


## Remediation Advice

As a best practice, consider using the `X-Content-Type-Options: nosniff` header as it will help prevent ambiguous handling of file types via Content Sniffing. Adding this header will prevent Cross Site Scripting attacks on files that do not have an explicit file type of "text/html".
