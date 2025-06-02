API query-based model reconstruction is a technique where an attacker uses the API of an AI model to repeatedly query it and gather sufficient information to reconstruct a significant portion of the model's internal logic and parameters. This reconstruction allows an attacker to replicate the model's behavior.

**Business Impact**

This vulnerability can lead to reputational and financial damage of the company due an attacker gaining access to the business' intellectual property. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

**Steps to Reproduce**

1. Access the API of the target AI model
1. Send  the following large number of diverse queries to the API:

```prompt
  {malicious prompt}
```

1. Analyze the API responses to infer the model's internal logic and parameters
1. Recreate a similar model using the gathered information
1. Observe that the recreated model behaves like the target AI model

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
