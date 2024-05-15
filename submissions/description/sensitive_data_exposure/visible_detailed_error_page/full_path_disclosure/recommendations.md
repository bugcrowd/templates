# Recommendation(s)

When an error occurs the site should respond with a generic error message to the user that does not display internal details about the error, or the underlying system. It is recommended to create and implement a policy around what occurs when an error is made in the application. This should detail what information is sent to the user and what information is logged and be circulated across all development teams so that their code adheres to the policy.

For more information refer to the following guides relating to this vulnerability:

- <https://owasp.org/www-community/Improper_Error_Handling>
- <https://cheatsheetseries.owasp.org/cheatsheets/Error_Handling_Cheat_Sheet.html>
- <https://cwe.mitre.org/data/definitions/209.html>
