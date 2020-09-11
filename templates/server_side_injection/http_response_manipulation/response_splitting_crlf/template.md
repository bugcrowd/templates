## Description


## Reproduction Steps


## References

- [https://www.owasp.org/index.php/CRLF_Injection](https://www.owasp.org/index.php/CRLF_Injection)
- [http://projects.webappsec.org/w/page/13246931/HTTP%20Response%20Splitting](http://projects.webappsec.org/w/page/13246931/HTTP%20Response%20Splitting)
- [https://www.cvedetails.com/vulnerability-list/ophttprs-1/http-response-splitting.html](https://www.cvedetails.com/vulnerability-list/ophttprs-1/http-response-splitting.html)


## Remediation Advice

Apply proper input validation and check for `CRLF` characters and `null byte` characters whenever user supplied input is used in HTTP response headers.

