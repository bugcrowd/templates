This misconfiguration occurs when a contract contains functions that, once called, cannot be undone or reverted, potentially locking funds or creating irreversible changes in the contract state. It often arises from a lack of access control checks or finality mechanisms on sensitive functions. An attacker can exploit this by calling the function to disrupt the contract’s functionality, or permanently lock funds.

**Business Impact** 

Irreversible function calls can lead to permanent loss of funds, reputational damage, and lack of user trust in the contract. In cases where funds are locked without a return option, the platform’s credibility and financial stability are at risk.

**Steps to Reproduce**  

1. Navigate to the following URL: {{URL}}
1. Locate irreversible functions within the smart contract code
2. Call these functions under normal user permissions:
{{screenshot}}
3. Observe that the function’s actions cannot be reverted or are final

**Proof of Concept**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
