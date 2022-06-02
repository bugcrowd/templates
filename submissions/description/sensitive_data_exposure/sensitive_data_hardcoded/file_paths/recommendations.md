# Recommendation(s)

t is recommended to not hardcode any file paths within the application. Sensitive data should be encrypted both when at rest and when in transit. All data that is processed, stored, and transmitted by the application should be classified by business need, regulatory and industry requirements, and appropriate privacy laws.

Additionally, it is best practice to not store sensitive data when it is no longer required, as data that is not retained cannot be accessed and used maliciously. All sensitive data should therefore be a part of a regularly reviewed maintenance cycle. This review cycle should include rotation of secrets.

For more information refer to the following guides relating to this vulnerability:

- <https://owasp.org/www-project-proactive-controls/v3/en/c8-protect-data-everywhere>
- <https://cwe.mitre.org/data/definitions/798.html>
- <https://wiki.sei.cmu.edu/confluence/display/java/MSC03-J.+Never+hard+code+sensitive+information>
