AI misclassification attacks occur when an attacker introduces specially crafted input designed to trick the AI model into making an incorrect prediction or classification. These inputs, known as adversarial examples, are often subtle modifications to legitimate data that are imperceptible to humans but can significantly alter the AI’s output.

**Business Impact**
This vulnerability can lead to reputational and financial damage of the company. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application. 

**Steps to Reproduce**
1. Identify the expected inputs of the AI model
1. Generate adversarial examples by adding small, targeted perturbations to legitimate inputs:

```prompt
  {malicious input}
```
1. Submit the adversarial examples to the AI model
1. Observe that the model misclassifies the modified input compared to its expected classification

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
