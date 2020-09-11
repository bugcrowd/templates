## Description


## Reproduction Steps


## References

- [https://www.owasp.org/index.php/Top_10-2017_A3-Sensitive_Data_Exposure](https://www.owasp.org/index.php/Top_10-2017_A3-Sensitive_Data_Exposure)
- [http://projects.webappsec.org/Information-Leakage](http://projects.webappsec.org/Information-Leakage)
- [https://blog.detectify.com/2016/07/01/owasp-top-10-sensitive-data-exposure-6/](https://blog.detectify.com/2016/07/01/owasp-top-10-sensitive-data-exposure-6/)
- [https://www.cvedetails.com/vulnerability-list/opginf-1/gain-information.html](https://www.cvedetails.com/vulnerability-list/opginf-1/gain-information.html)


## Remediation Advice

Do the following, at a minimum, and consult the references:

1. Classify data processed, stored or transmitted by an application. Identify which data is sensitive according to privacy laws, regulatory requirements, or business needs.
2. Apply controls as per the classification.
3. Don't store sensitive data unnecessarily. Discard it as soon as possible or use PCI DSS compliant tokenization or even truncation. Data that is not retained cannot be stolen.
4. Make sure to encrypt all sensitive data at rest.
5. Ensure up-to-date and strong standard algorithms, protocols, and keys are in place; use proper key management.
6. Encrypt all data in transit with secure protocols such as TLS with perfect forward secrecy (PFS) ciphers, cipher prioritization by the server, and secure parameters. Enforce encryption using directives like `HTTP Strict Transport Security` (HSTS).
7. Disable caching for response that contain sensitive data.
8. Store passwords using strong adaptive and salted hashing functions with a work factor (delay factor), such as `Argon2`, `scrypt`, `bcrypt` or `PBKDF2`.
9. Verify independently the effectiveness of configuration and settings.

