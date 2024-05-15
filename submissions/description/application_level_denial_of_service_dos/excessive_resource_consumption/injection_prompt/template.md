# Injection (Prompt)

## Overview of the Vulnerability

Injection occurs when an attacker provides inputs to a Large Language Model (LLM) which causes a large amount of resources to be consumed. This can result in a Denial of Service (DoS) to users, incur large amounts of computational resource costs, or slow response times of the LLM.

## Business Impact

This vulnerability can lead to reputational and financial damage of the company due an attacker incurring computational resource costs or denying service to other users, which would also impact customers' trust.

## Steps to Reproduce

1. Navigate to the following URL: {{URL}}
1. Inject the following prompt into the LLM:

```prompt
  {malicious prompt}
```

1. Observe that the LLM is slow to return a response

## Proof of Concept (PoC)

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
