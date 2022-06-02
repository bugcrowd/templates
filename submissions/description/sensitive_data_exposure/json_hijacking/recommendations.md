# Recommendation(s)

To prevent JSON hijacking from occurring, the following configurations can be set:

- Enable CSRF protections by requiring a predefined, random value for all JSON requests
- Only return JSON objects through HTTP POST requests, as script tags will only generate through HTTP GET requests
- Do not let web browsers interpret JSON objects as valid JavaScript code

It is recommended to encrypt sensitive data both when at rest and when in transit. All data that is processed, stored, and transmitted by the application should be classified by business need, regulatory and industry requirements, and appropriate privacy laws.

Additionally, it is best practice to not store sensitive data when it is no longer required, as data that is not retained cannot be accessed and used maliciously. All sensitive data should therefore be a part of a regularly reviewed maintenance cycle. This review cycle should include rotation of secrets.

For more information refer to Open Web Application Security Project (OWASP) guide relating to this vulnerability:
<https://owasp.org/www-project-proactive-controls/v3/en/c8-protect-data-everywhere>
