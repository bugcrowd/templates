# Excessive Agency/Permission Manipulation

## Overview of the Vulnerability

Excessive agency or permission manipulation occurs when an attacker is able to manipulate the LLM outputs to perform actions that are damaging or otherwise harmful. This usually stems from excessive functionality, permissions, or autonomy. An attacker can abuse excessive agency or permission manipulation within the LLM to gain access to, modify, or delete data, without any confirmation from a user.

## Business Impact

This vulnerability can lead to reputational and financial damage of the company due an attacker gaining access to unauthorized data or compromising the decision-making of the LLM, which would also impact customers' trust. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

## Steps to Reproduce

1. Navigate to the following URL:
1. Enter the following prompt into the LLM:

```prompt
  {prompt}
```

1. Observe that the output from the LLM returns sensitive data

## Proof of Concept (PoC)

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
