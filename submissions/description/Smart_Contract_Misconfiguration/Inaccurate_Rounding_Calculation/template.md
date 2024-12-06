This misconfiguration arises when rounding errors occur during token or fund calculations, leading to incorrect values in transfers or balances. It can be caused by poor rounding methods, or lack of precision controls in mathematical functions. An attacker can exploit rounding inaccuracies to siphon small amounts across multiple transactions, or disrupt accounting.

**Business Impact**

Rounding errors can result in financial inconsistencies, transaction miscalculations, and damage user confidence in the platform’s accuracy. Users may perceive the protocol as untrustworthy if their balances or transfers are systematically inaccurate.

**Steps to Reproduce**

1. Navigate to the following URL: {{URL}}
1. Identify the functions which are performing rounding calculations on token or fund values
1. Execute transactions with different value inputs to observe the rounding behaviors
1. Compare calculated values with expected results to detect inconsistencies
1. Repeat transactions with minimal value variations to test rounding reliability
1. Observe that the rounding errors affect balances or contract accounting

**Proof of Concept**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
