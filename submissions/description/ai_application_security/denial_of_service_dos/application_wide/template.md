Application-wide Denial-of-Service (DoS) occurs when an attacker attempts to overload the entire AI application with requests or malicious input, rendering the application unavailable to legitimate users. This can be achieved by sending a flood of queries that exploit resource-intensive processes, or by triggering application crashes.

**Business Impact**
Complete unavailability of the AI application, leads to service disruption, financial loss, reputational damage, and potential loss of user data.

**Steps to Reproduce**

1. Develop a script or tool to send a high volume of requests to the AI application.
2. Identify and target resource-intensive features or API endpoints.
3. Execute the attack and monitor the application's response and availability.


1. Navigate to the following URL:
1. Inject the following prompt into the LLM:

```prompt
  {malicious prompt}
```

1. Observe that the LLM returns sensitive data

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
