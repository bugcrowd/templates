Integer overflow or underflow vulnerabilities occur when arithmetic operations exceed the maximum, or minimum storage limits of an integer variable, causing unexpected behaviors. Attackers can use overflow or underflow conditions to alter the intended logic of calculations within a contract to drain funds, alter balances, or bypass conditional checks.

**Business Impact** 

Arithmetic vulnerabilities can cause severe financial losses, compromise contract stability, and negatively impact user trust. Overflow issues can skew balance or token calculations, reducing the protocol’s operational integrity.

**Steps to Reproduce**  

1. Navigate to the following URL: {{URL}}
1. Identify a function that uses arithmetic operations on integer variables
1. Input extreme values to trigger possible overflow or underflow:
{{input value}}
1. Observe  conditional checks are bypassed due to altered variable states

**Proof of Concept**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
