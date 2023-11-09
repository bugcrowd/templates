# Recommendation(s)

To prevent LDAP injection attacks, it is recommended to validate all untrusted input. Properly encoding and sanitizing all input in the application layer minimizes the possibilities of the threats posed by LDAP injection. The following secure coding practices are recommended:

- Whitelist input validation
- Escape all variables using the correct encoding functions
- Index fields containing sensitive information, such as user passwords
- Conduct output regulation
- Perform dynamic checks
- Perform static source code analysis

Additionally, it is important to ensure that the LDAP environment is safely configured. Safeguard sensitive information in the LDAP directory by configuring user permissions. This is especially important for directories used for logging purposes on mobile and web applications.

For more information, view the following resource:

- <https://cheatsheetseries.owasp.org/cheatsheets/LDAP_Injection_Prevention_Cheat_Sheet.html>
