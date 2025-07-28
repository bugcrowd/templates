Application-wide Denial-of-Service (DoS) occurs when an attacker attempts to overload the entire AI application with requests or malicious input, rendering the application unavailable to legitimate users. This can be achieved by sending a flood of queries that exploit resource-intensive processes, or by triggering application crashes.

**Business Impact**

This vulnerability can lead to reputational and financial damage of the company. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

**Steps to Reproduce**

1. Obtain access to an account within a specific tenant
1. Execute the following script to generate a high volume of requests or resource-intensive operations directed at that tenant's resources

```python
  {malicious script}
```

1. Observe that the target tenant's service availability and performance is degraded

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
