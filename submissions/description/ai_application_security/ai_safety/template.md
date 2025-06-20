AI models can generates or presents inaccurate, false, or misleading information as fact. This can occur due to errors in the model's training data, hallucinations (fabrication of information), or a failure to cross-reference with reliable sources.

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
