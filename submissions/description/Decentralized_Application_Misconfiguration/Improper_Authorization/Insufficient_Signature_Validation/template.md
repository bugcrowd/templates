This vulnerability occurs when a decentralized application (dApp) implements improper validation of cryptographic signatures, which serve as proof of ownership, authorization or validation. It can occur when a dApp fails to verify the public key against the signature, implements weak checks (or is missing checks) on transaction parameters, or it reuses previously valid signatures. Insufficient signature validation results in an attacker being able to forge or otherwise manipulate signatures to perform unauthorized actions on the blockchain.

**Business Impact**

Improper authorization can result in loss of user trust, and damage to the dApp’s reputation. Additionally, businesses may face legal consequences and regulatory scrutiny which can lead to financial losses and penalties.

**Steps to Reproduce**

1. Navigate to the following URL: {{URL}}
1. Identify an interaction within the dApp that requires a signature for authorization: {{define specific function}}
1. Alter the signature parameters by performing {{action}}
1. Submit the altered request to the dApp
1. Observe that the dApp improperly validates the signature and accepts the request without verifying the correct private key ownership

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
