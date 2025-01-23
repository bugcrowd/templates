Function-level Denial of Service (DoS) occurs when a smart contract function can be exploited to prevent legitimate users from accessing it. This vulnerability often arises due to unchecked loops, gas limitations, or unoptimized logic that blocks execution under specific conditions. An attacker can invoke the function repeatedly to exhaust resources, preventing others from using it.

**Business Impact**

Function-level DoS vulnerabilities can lead to operational disruptions and affect user experience. Users may lose trust in the reliability of the contract, and the platform’s reputation and user retention rates can suffer as a result.

**Steps to Reproduce**

1. Navigate to the following URL: {{URL}}
1. Identify a function that has looping or costly operations
1. Use the following script that calls the function with large datasets or under high load:
{{script}}
1. Observe that the function fails due to gas limits, or causes significant delays
1. Confirm that other users cannot access the function while the attack is ongoing

**Proof of Concept**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
