This misconfiguration arises when function modifiers fail to enforce expected access controls or validation checks. It can allow unauthorized access to sensitive functions or bypass restrictions, jeopardizing the security of the contract’s logic. An attacker can exploit this flaw to gain unauthorized access or manipulate contract behavior.

**Business Impact** 

Improperly applied modifiers can expose critical functions to unauthorized users, leading to financial losses or unintentional contract manipulations. Such issues harm user confidence and can make the contract seem untrustworthy or vulnerable.

**Steps to Reproduce** 

1. Navigate to the following URL: {{URL}}
1. Review function modifiers applied across sensitive contract functions
2. Access restricted functions with an unauthorized account
3. Bypassing the modifier and observe the following unintended access or manipulation:
{{screenshot}}
4. Observe that restricted contract states or balances are affected

**Proof of Concept**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
