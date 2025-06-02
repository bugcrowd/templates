System prompt leakage occurs when an AI model unintentionally reveals or discloses the hidden instructions and constraints that guide its behavior and responses. Attackers can exploit this to understand the model's underlying configuration and potentially bypass its intended limitations or access sensitive data.

**Business Impact**

This vulnerability can lead to reputational and financial damage of the company due an attacker gaining access to unauthorized data or compromising the decision-making of the LLM, which would also impact customers' trust. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

**Steps to Reproduce**

1. Inject the following prompt into the LLM which is designed to elicit the model to reveal its system prompt:

```prompt
  {malicious prompt}
```

1. Look through the model's responses for information that discloses its internal instructions or constraints
3. Observe that the information shows the model's operating parameters

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
