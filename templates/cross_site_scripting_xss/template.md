## Description


## Reproduction Steps


## References

- https://www.owasp.org/index.php/Top_10-2017_A7-Cross-Site_Scripting_(XSS)
- https://www.owasp.org/index.php/Cross-site_Scripting_(XSS)
- https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.md
- http://projects.webappsec.org/Cross-Site+Scripting
- https://www.cvedetails.com/vulnerability-list/opxss-1/xss.html


## Remediation Advice

1. Always treat all user input as untrusted data.
2. Never insert untrusted data except in allowed locations.
3. Always input or output-encode all data coming into or out of the application.
4. Always whitelist allowed characters and seldom use blacklisting of characters except in certain use cases.
5. Always use a well-known and security encoding API for input and output encoding such as the `OWASP ESAPI`.
6. Never try to write input and output encoders unless absolutely necessary. Chances are that someone has already written a good one.
7. Never use the DOM function `innerHtml` and instead use the functions `innerText` and `textContent` to prevent against DOM-based XSS.
8. As a best practice, consider using the `HTTPOnly` flag on cookies that are session tokens or sensitive tokens.
9. As a best practice, consider implementing `Content Security Policy` to protect against XSS and other injection type attacks.
10. As a best practice, consider using an auto-escaping templating system.
11. As a best practice, consider using the `X-XSS-Protection` response header.

