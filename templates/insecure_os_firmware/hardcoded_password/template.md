## Description


## Reproduction Steps


## References

- [https://www.owasp.org/index.php/Password_Management:_Hardcoded_Password](https://www.owasp.org/index.php/Password_Management:_Hardcoded_Password)
- [https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Password_Storage_Cheat_Sheet.md](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Password_Storage_Cheat_Sheet.md)


## Remediation Advice

1. Never use a hardcoded password within the source code. Many times, the application can be disassembled or decompiled after it has been compiled. This will likely reveal the hardcoded password string to an attacker.
2. Never use a password string. Instead, use a random salt per user with the password string and run it through a cryptographically strong hashing algorithm.
3. Store the salt and the hashed password server-side and do the check there. Never check the password on the client side.

