Query flooding or API token abuse occurs when an attacker uses automated tools or scripts to send a large number of requests to the API of an AI application. A lack of rate limiting can overwhelm the server resources, allowing an attacker to degrade performance, or perform a Denial of Service (DoS) for legitimate users.

**Business Impact**

Service disruption, increased server costs, and potential for unauthorized access or data breaches. Legitimate users may be unable to access the application, impacting business operations.

**Steps to Reproduce**

1. Navigate to the following URL and observe the valid API token:
1. Use the following script to send a high volume of requests to the API using the token:

```python
  {script}
```

1. Observe that the application's performance and availability are impacted under the higher load of requests

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
