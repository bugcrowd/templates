# Recommendation(s)

A password policy should be set and thoroughly tested in a UAT environment before being pushed to a production environment to ensure that it is sufficiently robust. Overall, the password policy should contain the following guidelines for users:

Have a minimum password length of eight characters and no maximum limit
Require at least three different character types such as, upper and lower case letters, numbers, and special characters.
Have a deny list of commonly used words and poor passwords such as, `password`, `password123`, the company’s name, or a user’s email address or username.
When a user resets their password, they should not be able to use a previous password or increment a previous password in any way. For example, a user should not be able to change their password from `Correct-h0rse-1` to `Correct-h0rse-2`

For more information refer to the following guide relating to this vulnerability:
<https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-63b.pdf>
