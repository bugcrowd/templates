A Sandwich-enabled attack involves a misconfiguration that allows an attacker to observe a pending transaction, submit a transaction before it (front-running), and another transaction after it (back-running), effectively "sandwiching" the victim’s transaction. An attacker can exploit this vulnerability to profit by manipulating the market price of assets between their transactions, which can result in inflated transaction costs for users, market distortions, and potential financial losses.

**Business Impact**  

Sandwich attacks degrade user trust, as legitimate users bear higher transaction costs and potential asset price slippage. This can drive users away from the protocol and tarnish the platform’s reputation in the decentralized finance space.

**Steps to Reproduce**  

1. Navigate to the following URL: {{URL}}
1. Identify a transaction or function where price changes affect the outcome.
1. Submit a transaction before the target transaction to influence the price.
1. Submit a transaction after the target to capture the profit from the price change.
1. Observe the increased cost or asset price distortion resulting from the sandwiching technique.

**Proof of Concept**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
