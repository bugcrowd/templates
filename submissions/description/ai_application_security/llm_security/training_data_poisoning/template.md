# Training Data Poisoning

## Overview of the Vulnerability

Training data poisoning occurs when an attacker manipulates the training data to intentionally compromise the output of the Large Language Model (LLM). This can be achieved by manipulating the pre-training data, fine-tuning data process, or the embedding process. An attacker can undermine the integrity of the LLM by poisoning the training data, resulting in outputs that are unreliable, biased, or unethical. This breach of integrity significantly impacts the model's trustworthiness and accuracy, posing a serious threat to the overall effectiveness and security of the LLM.

## Business Impact

This vulnerability can lead to reputational and financial damage if an attacker compromises the LLM decision making or accesses unauthorized data. These cirvumstances not only harm the company but also weaken users' trust. The extent of business impact depends on the sensitivity of the data transmitted by the application.

## Steps to Reproduce

1. Navigate to the following URL:
1. Enter the following prompt into the LLM:

```prompt
  {prompt}
```

1. Observe that the output from the LLM returns a compromised result

## Proof of Concept (PoC)

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
