Signing was not required on the Server Messaging Block (SMB) server.

SMB signing is a security mechanism which ensures that every SMB message contains a cryptographic signature which incorporates a hash of the entire SMB message, alongside the original sender and intended recipient. If the message is tampered with, the hash verification will fail. In turn, this allows the recipient of the SMB traffic to confirm the authenticity and integrity of the data.

An unauthenticated attacker can exploit a lack of SMB signing to conduct man-in-the-middle and relay attacks against the SMB server.

**Business Risk**

When signing is not enforced, the integrity and authenticity of messages in transit across the network can be compromised. This can be abused by attackers to compromise user accounts and services within the domain, leading to unauthorized access, data theft, and potentially service disruption. These malicious actions could result in reputational damage for the business through the impact to customers’ trust.

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
