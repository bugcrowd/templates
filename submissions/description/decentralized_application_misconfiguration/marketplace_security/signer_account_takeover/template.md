Signer account takeover refers to an attack where an attacker gains unauthorized control over a user's private key or credentials used to sign transactions. This typically stems from insecure key management, phishing attacks, or improper signature validation methods. As a result, the attacker can initiate asset transfers, create orders, or modify listings without the user's consent.

**Business Impact**  

A signer account takeover compromises marketplace integrity, resulting in asset theft, fraudulent listings, and user dissatisfaction. This can lead to reputational damage, legal liabilities, and financial losses as users lose trust in the platform’s ability to secure their assets and personal information.

**Steps to Reproduce**  

1. Navigate to the following URL: {{URL}}
1. Identify the private key used to sign marketplace transactions {{or describe specifically how you identified it}}
1. Use the compromised private key to generate a valid signature for a marketplace transaction
1. Submit the signed transaction to the marketplace, initiating an unauthorized asset transfer or listing
1. Verify that the marketplace accepts the transaction without flagging the unauthorized signature
1. Observe the unauthorized changes within the affected user’s account

**Proof of Concept**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
