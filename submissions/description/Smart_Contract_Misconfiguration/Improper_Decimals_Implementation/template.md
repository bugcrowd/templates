Improper decimals implementation occurs when a smart contract handles token or asset values without accurately accounting for decimal places, leading to calculation errors. Mismanagement of decimal points can result in incorrect fund transfers, unexpected balances, or unintended value losses. An attacker can manipulate decimal mismatches to gain an unfair advantage and gain funds.

**Business Impact**

Decimal inaccuracies can lead to financial losses, user confusion, and reduced trust in the protocol. Incorrect balances or transfers can result in reputational harm and complicate transaction verification.

**Steps to Reproduce**

1. Navigate to the following URL: {{URL}}
1. Examine the contract’s handling of token values and decimals
1. Perform transactions with varying amounts to observe any decimal discrepancies
1. Check balances or transferred values to confirm inaccurate decimal application
1. Verify  that rounding errors occur in displayed or transferred amounts

**Proof of Concept**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
