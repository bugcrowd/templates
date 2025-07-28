Personally Identifiable Information (PII) can be disclosed by the application due to failing authentication, authorization, or encryption controls. An attacker can abuse this exposed PII to sell access to databases and database content, or use credentials identified to take over accounts, amongst other attack vectors. This can further lead to identity theft, fraud, and legal non-compliance (e.g., GDPR, CCPA, HIPAA violations).

Personally Identifiable Information (PII) refers to any data that can be used to identify a specific individual, including, but not limited to, full names, addresses, phone numbers, email addresses, government-issued IDs, financial information.

**Business Impact**

Leakage or exposure of PII can lead to indirect financial loss through an attacker accessing, deleting, or modifying data from within the application. This could also result in reputational damage for the business through the impact to customers’ trust, as well as legal non-compliance (e.g., GDPR, CCPA, HIPAA violations). The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

**Steps to Reproduce**

1. Use a browser to navigate to: {{url}}/data/
1. Observe that PII are being disclosed

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:

{{screenshot}}
