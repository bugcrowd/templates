# Recommendation(s)

Ensure that the password reset link generation is sent to a known server name rather than `HTTP_HOST`. For example:

```javascript
$_SERVER['SERVER_NAME'] 
```

should be used instead of:

```javascript
$_SERVER['HTTP_HOST']
```

Password reset tokens should be transmitted over a HTTPS connection. They should also be sufficiently long, random, have a short expiry time, and invalidated after first use.

For more information refer to the following guides relating to this vulnerability:

- <https://cheatsheetseries.owasp.org/cheatsheets/Forgot_Password_Cheat_Sheet.html>
- <https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html#change-password-feature>
- <https://cwe.mitre.org/data/definitions/640.html>
- <https://cwe.mitre.org/data/definitions/620.html>
