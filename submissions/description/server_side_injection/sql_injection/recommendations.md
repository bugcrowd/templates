# Recommendations

To prevent SQL injection attacks, it is recommended that queries use parameterized queries instead of string concatentation. This allows for code and data to be distinguished by the database regardless of input. However, all inputs should go through a validation process which only allows content to be processed by the database if it passes validation.

For more information, please see:

<https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html>
