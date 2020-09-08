# Description


# Reproduction Steps


# References

- https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Cryptographic_Storage_Cheat_Sheet.md
- https://crackstation.net/hashing-security.htm


# Remediation Advice

1. Never try to create your own cryptographic functions.
2. Always use known, strong, and secure cryptographic API functions.
3. Never store cleartext password strings anywhere.
4. Always salt password strings before running through a cryptographically safe hashing algorithms.
5. Always use a random salt for each password string.
6. Always store the salt and the cryptographically hashed password string in an encrypted database.
7. Never use unsafe hashing functions such as `MD5` and `SHA1` which have low key spaces and have working proof of concepts that break these hashing functions.
8. Only use cryptographically safe hashing functions such as `SHA-256` and above.
9. Never use unsafe encryption functions that have working proof of concepts that prove that they are broken.
10. Only use cryptographically safe encryption functions that have a very high work factor to discourage attackers from trying to break the encryption such as `bcrypt`, `scrypt`, and `PBKDF2`.