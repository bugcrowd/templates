Tenant-Scoped Denial-of-Service (DoS) occurs when an attacker specifically targets and overwhelms a single tenant's resources within a multi-tenant AI application. This can be achieved through excessive requests, resource-intensive queries, or exploiting vulnerabilities specific to the tenant's configuration. An attacker can leverage this vulnerability to cause disruption or unavailability for that specific tenant without affecting other tenants.

**Business Impact**
This vulnerability can lead to reputational and financial damage of the company. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application. 

**Steps to Reproduce**
1. Obtain access to an account within a specific tenant
1. Execute the following script to generate a high volume of requests or resource-intensive operations directed at that tenant's resources

```python
  {malicious script}
```
1. BOserve that the target tenant's service availability and performance is degraded

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
