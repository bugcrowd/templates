# Recommendation(s)

It is recommended that only strong cipher suites are supported. As a guideline, the following cipher suites are recommended:

- Ciphers such as ECDHE and DHE, which use perfect forward secrecy key exchange.
- Ciphers that use SHA256
- AES-GCM is preferred for authentication ciphers. These are only available when TLS1.2 and TLS1.3 are in use.

For more information, please see:

- <https://github.com/ssllabs/research/wiki/SSL-and-TLS-Deployment-Best-Practices>
- <https://cheatsheetseries.owasp.org/cheatsheets/Transport_Layer_Protection_Cheat_Sheet.html>
