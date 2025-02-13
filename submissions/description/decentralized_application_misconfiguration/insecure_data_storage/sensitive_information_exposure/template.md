This vulnerability occurs when a decentralized application (dApp) fails to securely store sensitive information, such as Personally Identifiable Information (PII), or Protected Health Information (PHI). This can stem from improper data security practices, such as storing sensitive data in plaintext, failing to encrypt sensitive information, using insecure client-side storage mechanisms (e.g., `localStorage`), failing to encrypt sensitive data, or neglecting to implement proper access controls. As a result, attackers with access to the storage can easily retrieve and exploit the sensitive information, leading to breaches in the privacy of individual users.

**Business Impact**

The exposure of sensitive information can result in loss of user trust, and reputational damage to the business. Additionally, businesses may face legal consequences and regulatory scrutiny for non-compliance with privacy laws. which can lead to financial losses and penalties.

**Steps to Reproduce**

1. Navigate to the following URL: {{URL}}
1. Access the decentralized application’s storage mechanism: {{define storage mechanism}}
1. Search for the sensitive information by performing {{action}}
1. Observe that the sensitive information is stored in plaintext without encryption

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
