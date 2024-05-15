# Recommendation(s)

It is recommended to implement robust spam filtering and email authentication mechanisms such as SPF (Sender Policy Framework), DKIM (DomainKeys Identified Mail), and DMARC (Domain-based Message Authentication, Reporting, and Conformance). Sensitive data should be encrypted both when at rest and when in transit. All data that is processed, stored, and transmitted by the application should be classified by business need, regulatory and industry requirements, and appropriate privacy laws.

Additionally, it is best practice to not store sensitive data when it is no longer required, as data that is not retained cannot be accessed and used maliciously. All sensitive data including secrets should therefore be a part of a regularly reviewed maintenance cycle. This review cycle should include rotation of secrets.

For more information refer to Open Web Application Security Project (OWASP) guide relating to this vulnerability:
<https://owasp.org/www-project-proactive-controls/v3/en/c8-protect-data-everywhere>
