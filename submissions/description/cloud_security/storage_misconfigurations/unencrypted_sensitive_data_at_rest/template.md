Unencrypted sensitive data at rest occurs when confidential information is stored in cloud storage services (e.g., databases, object storage, file systems) without applying appropriate encryption. An attacker who gains access to the storage is able to view the sensitive data without requiring further decryption efforts.

**Business Impact**

This vulnerability can lead to reputational damage and loss of customer trust, as well as regulatory fines and potential legal action.

**Steps to Reproduce**

1. Use a public search engine or specific tools to identify the cloud storage bucket(s) suspected of storing sensitive data without encryption: {{storage service url}}    
2. Gain unauthorized access to the underlying storage mechanism by performing the following action: {{access method}}
3. Observe and verify that sensitive information is present in plaintext or easily readable format that doesn't require any decryption process

**Proof of Concept**

The screenshot(s) below demonstrate(s) the vulnerability:

{{screenshot}}
