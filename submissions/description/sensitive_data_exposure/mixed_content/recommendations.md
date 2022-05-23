# Recommendation(s)

The application should prevent mixed content from loading and make HTTPS connections default. If the content cannot load over a HTTPS connection, the content should not be displayed.

It is recommended to encrypt sensitive data both when at rest and when in transit. All data that is processed, stored, and transmitted by the application should be classified by business need, regulatory and industry requirements, and appropriate privacy laws.

Additionally, it is best practice to not store sensitive data when it is no longer required, as data that is not retained cannot be accessed and used maliciously. All sensitive data should therefore be a part of a regularly reviewed maintenance cycle. This review cycle should include rotation of secrets.

For more information refer to the following guides relating to this vulnerability:

- <https://developer.mozilla.org/en-US/docs/Web/Security/Mixed_content>
- <https://owasp.org/www-project-proactive-controls/v3/en/c8-protect-data-everywhere>
