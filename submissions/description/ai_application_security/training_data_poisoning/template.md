Manipulation of training data can occur when an attacker can introduce manipulated or compromised data into the training dataset of an AI model. This can lead to the model learning to behave in unintended ways, or exhibit biased outputs. Through this, an attacker can control the model's responses or performance, undermining trust in its outputs.

**Business Impact**

This vulnerability can lead to reputational and financial damage of the company due an attacker gaining access to unauthorized data or compromising the decision-making of the LLM, which would also impact customers' trust. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

**Steps to Reproduce**

1. Identify the training data used for the AI model
1. Inject the following manipulated data points that skew the data towards a particular bias:

```input
  {malicious input}
```

1. Retrain the model using the poisoned dataset
1. Observe in the model's output that there are signs of the injected backdoor or bias

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
