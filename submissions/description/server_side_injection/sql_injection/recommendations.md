# Recommendation(s)

To prevent SQL injection attacks, it is recommended that queries use parameterized queries instead of string concatenation. For example, the following is a good statement:

```SQL
txtUserId = getRequestString("UserId");
txtSQL = "SELECT * FROM Users WHERE UserId = @0";
```

Whereas the following is a bad statement:

```SQL
txtSQL = "SELECT * FROM Users WHERE getRequestString("UserId") = @0";
```

Using parameterized queries allows for code and data to be distinguished by the database regardless of input. However, all inputs should go through a validation process which only allows content to be processed by the database if it passes validation.

For more information, view the following resources:

- <https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html>
- <https://cheatsheetseries.owasp.org/cheatsheets/Query_Parameterization_Cheat_Sheet.html>
- <https://www.w3schools.com/sql/sql_injection.asp>
