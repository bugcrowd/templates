Adversarial example injection attacks occur when an attacker introduces specially crafted input designed to trick the AI model into making an incorrect prediction or classification. These inputs, are often subtle modifications to legitimate data that are imperceptible to humans but can significantly alter the AI’s output.

**Business Impact**

This vulnerability can lead to reputational and financial damage of the company due an attacker gaining access to unauthorized data or compromising the decision-making of the LLM, which would also impact customers' trust. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

**Steps to Reproduce**

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
