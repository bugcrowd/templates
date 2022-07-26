# Recommendation(s)

There is no single technique to implement 2FA securely. However, the following best practices should be adhered to:

- The 2FA code should be invalidated each time a new code is requested
- Users should have access to a failsafe login method if they don’t have access to their 2FA implementation
- 2FA should be implemented for users upon sensitive actions such as login, change of password or security questions, elevation of user session, change of email address or phone number, and disabling of 2FA.
- The uniquely generated OTP should expire
- The page behind the 2FA step should not be able to be accessed directly by manipulating the URL
- 2FA should not be automatically disabled during the password recovery process
- The 2FA procedure should not disclose any sensitive information. For example, do not disclose the unredacted phone number of a user
- The 2FA process cannot depend on client-side modifiable header or status codes

For more information, please see:
<https://cheatsheetseries.owasp.org/cheatsheets/Multifactor_Authentication_Cheat_Sheet.html>
