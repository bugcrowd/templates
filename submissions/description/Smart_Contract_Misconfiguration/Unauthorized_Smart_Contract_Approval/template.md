Unauthorized smart contract approval vulnerabilities occur when approval functions allow arbitrary or unauthorized addresses to spend tokens on behalf of the contract. This can arise from missing checks, or weak validation in the approval process. An attacker can leverage this flaw to gain control over users' tokens and initiate unauthorized transactions.

**Business Impact**  

Unauthorized token approvals can lead to user fund losses and significantly harm the protocol’s credibility. Users may lose confidence in the platform's security, reducing participation and affecting the protocol’s overall engagement.

**Steps to Reproduce**  

1. Navigate to the following URL: {{URL}}
1. Locate functions responsible for approving token spending
1. Call the function to authorize an unauthorized address
1. Observe that the unauthorized address receives approval to spend tokens

**Proof of Concept**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
