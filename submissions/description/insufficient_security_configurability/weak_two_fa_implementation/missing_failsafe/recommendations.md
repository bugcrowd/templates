# Recommendation(s)

It is recommended to implement a failsafe login method for users who don’t have access to their 2FA method.

Additionally, the following best practices should be adhered to for secure 2FA implementation:

- The 2FA code should be invalidated each time a new code is requested
- 2FA should be implemented for users upon sensitive actions such as login, change of password or security questions, elevation of user session, change of email address or phone number, and disabling of 2FA.
- The uniquely generated OTP should expire
- The page behind the 2FA step should not be able to be accessed directly by manipulating the URL
- 2FA should not be automatically disabled during the password recovery process
- The 2FA procedure should not disclose any sensitive information. For example, do not disclose the unredacted phone number of a user
- The 2FA process cannot depend on client-side modifiable header or status codes
