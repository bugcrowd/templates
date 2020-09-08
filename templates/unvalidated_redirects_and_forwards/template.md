# Description


# Reproduction Steps


# References

- https://www.owasp.org/index.php/Top_10_2013-A10-Unvalidated_Redirects_and_Forwards
- https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.md
- http://projects.webappsec.org/w/page/13246981/URL%20Redirector%20Abuse


# Remediation Advice

1. Avoid using redirects or forwards and only use them in specific use cases.
2. Use input validation to check the origin of the URL in the parameter being passed. If the URL is not the same origin as the current domain, do not redirect off-domain.
3. If the redirection is part of intended functionality, alert the user that they are going off-domain and let them make the decision to go off-domain. Present the redirection URL to the user to make it clear they are going off-domain.
4. Whitelist valid domains that users should be allowed to be redirected to.