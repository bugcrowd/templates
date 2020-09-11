## Description


## Reproduction Steps


## References

- https://www.owasp.org/index.php/Top_10_2013-A8-Cross-Site_Request_Forgery_(CSRF)
- https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.md
- http://projects.webappsec.org/w/page/13246919/Cross%20Site%20Request%20Forgery
- https://www.cvedetails.com/vulnerability-list/opcsrf-1/csrf.html


## Remediation Advice

1. Consider using a known and secure CSRF synchronizer API and apply the generated CSRF token to every request. If infeasible to apply to every request, generate a CSRF token for the entire session and apply that to every request or, at minimum, every request considered sensitive. Always make sure to check the actual CSRF token.
2. Consider verifying using same-origin rules to the source and target by checking the `Origin` and `Referer` headers.
3. Consider using the `Double Submit Cookie` pattern.
4. Consider using the `Encrypted Token` pattern.
5. Consider protecting REST services by using the `X-Requested-With: XMLHttpRequest` header in all requests.
6. Consider using re-authentication in cases where the request is particularly sensitive. This is the most effective CSRF prevention technique, however it does disturb the entire user experience.
