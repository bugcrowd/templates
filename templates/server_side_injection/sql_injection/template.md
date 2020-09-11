## Description


## Reproduction Steps


## References

- https://www.owasp.org/index.php/SQL_Injection
- https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.md
- http://projects.webappsec.org/SQL-Injection
- https://www.cvedetails.com/vulnerability-list/opsqli-1/sql-injection.html


## Remediation Advice

Ensure that proper server-side input validation is performed on all sources of user input. Various protections should be implemented using the following in order of effectiveness:

1. **Errors:** Ensure that SQL errors are turned off and not reflected back to a user when an error occurs as to not expose valuable information to an attacker.
2. **Parameterize Queries:** Ensure that when a user’s input is added to a backend SQL query, it is not string appended but placed into the specific SQL parameter.  The method to perform this varies from language to language.
3. **Server-Side Input Length:** Limit the length of each field depending on its type. For example, a name should be less than **_16 characters long_**, and an ID should be less than **_5 characters long_**.
4. **Whitelist:** Create character ranges (ie. Numeric, alpha, alphanumeric, alphanumeric with specific characters) and ensure that each input is restricted to the minimum length whitelist necessary.
5. **Blacklist:** Disallow common injection characters such as `"<>\/?*()&`, `SQL` and `SCRIPT` commands such as `SELECT`, `INSERT`, `UPDATE`, `DROP`, and `SCRIPT`, newlines `%0A`, carriage returns `%0D`, null characters `%00` and unnecessary or bad encoding schemas (malformed `ASCII`, `UTF-7`, `UTF-8`, `UTF-16`, `Unicode`, etc.).
6. **Logging and Web Specific IDS/IPS (Intrusion Detection/Prevention System):** Ensure that proper logging is taking place and is being reviewed, and any malicious traffic which generates an alert is promptly throttled and eventually blacklisted.

