# Recommendation(s)

It is best practice to create a policy around what occurs when an error is made in the application, detailing what information is sent to the user and what information is logged. This policy should be circulated across all development teams so that their code adheres to the policy.

When an error occurs the site should respond with a generic error message to the user that does not display internal details about the error or the underlying system.

For more information refer to the following guides relating to this vulnerability:

- <https://owasp.org/www-community/Improper_Error_Handling>
- <https://cheatsheetseries.owasp.org/cheatsheets/Error_Handling_Cheat_Sheet.html>
- <https://cwe.mitre.org/data/definitions/209.html>
