# Recommendation(s)

Broken access controls can be remediated by implementing a handful of best practices relating to authentication and session management to ensure secure implementation. These include:

- Ensuring that access controls are designed thoroughly upfront and that each request goes through some form of access control check. By default, specific requests that are not explicitly allowed should be denied.
- All users, programs and processes should follow the principle of least privilege and only be given as little access as possible in order to complete their business functions.
- An application’s code should not contain any hardcoded roles as these can become fragile and difficult to enforce and audit.

For more information, refer to the following resources:

- <https://owasp.org/www-project-proactive-controls/v3/en/c7-enforce-access-controls>
- <https://cwe.mitre.org/data/definitions/200.html>
- <https://portswigger.net/web-security/access-control>
