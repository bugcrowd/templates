# Recommendation(s)

It is best practice to invalidate the password reset token after after a user successfully resets their password and logs into the application. Overall, the password reset implementation should conform to the following guidelines:

- A secure password policy should be in place for the user to create a strong new password
- Password reset tokens should be long to protect against brute force guessing attacks, linked to an individual, invalidated after use, and have a short expiry time
- Passwords should be stored and transmitted securely
- Once a user’s password has been reset, they should be prompted to login in again through the usual login portal and not automatically signed in

For more information refer to the following guide relating to this vulnerability:
<https://cheatsheetseries.owasp.org/cheatsheets/Forgot_Password_Cheat_Sheet.html>
