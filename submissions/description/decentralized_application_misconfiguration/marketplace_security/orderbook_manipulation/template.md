Orderbook manipulation occurs when an attacker alters the terms of an order after it has been signed by the user but before it is executed by the marketplace. This can happen due to improper order validation, insufficient signature verification, or tampering with transaction data. As a result, the buyer or seller may unknowingly accept manipulated terms.

**Business Impact**  

Order manipulation leads to financial losses for users and undermines trust in the marketplace’s ability to process trades fairly. It can damage the marketplace's reputation and result in disputes or legal issues related to fraudulent orders.

**Steps to Reproduce**  

1. Navigate to the following URL: {{URL}}
1. Create a legitimate order on the marketplace and sign it
1. Intercept the transaction data containing the order details
1.  Modify the order terms
1. Submit the tampered order for execution
1. Observe that the manipulated order was executed under different terms than originally agreed upon

**Proof of Concept**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
