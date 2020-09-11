## Description


## Reproduction Steps


## References

- [https://www.owasp.org/index.php/Reflected_File_Download](https://www.owasp.org/index.php/Reflected_File_Download)


## Remediation Advice

1. Sanitize your API inputs (in this case they should just allow alphanumerics). Escaping is not sufficient.
2. Add `Content-Disposition: attachment; filename="foo.bar"` on APIs that are not going to be rendered.
3. Add `X-Content-Type-Options: nosniff` header to API responses.

