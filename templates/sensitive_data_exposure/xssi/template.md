## Description


## Reproduction Steps


## References

- [https://www.scip.ch/en/?labs.20160414](https://www.scip.ch/en/?labs.20160414)


## Remediation Advice

1. Avoid placing sensitive content inside JavaScript files, and also not in `JSONP`.
2. Consider using a CSRF token.
3. Sensitive scripts should only respond to POST requests.
4. Append some non-executable prefix to the response body.
5. Usage of the response header `X-Content-Type-Options: nosniff` and usage of the correct `Content-Type` is also helpful in reducing the chance of XSSI.

