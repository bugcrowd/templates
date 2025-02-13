Price or fee manipulation occurs when attackers exploit weaknesses in the pricing or fee structure of a marketplace. This may involve bypassing fee calculations, inflating or deflating prices, or exploiting discrepancies between front-end and back-end price logic. This vulnerability allows attackers to manipulate the system to pay lower fees or unfairly alter trade prices.

**Business Impact**  

This vulnerability can lead to financial losses for the marketplace, as attackers evade fees or game the system for arbitrage. It can also harm users by forcing them to trade at manipulated prices. If unaddressed, the marketplace’s reputation for fair trading can suffer, causing users to leave.

**Steps to Reproduce**  

1. Navigate to the following URL: {{URL}}
1. Identify a transaction with a calculated price or fee in the marketplace
1.  Exploit a flaw in the fee or price calculation logic to alter the final amount
1. Submit the transaction with the manipulated price or fee
1. Confirm that the system accepts the manipulated transaction
1. Observe that the fee was reduced or price altered, without detection

**Proof of Concept**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
