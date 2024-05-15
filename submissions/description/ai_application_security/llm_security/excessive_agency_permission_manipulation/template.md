# Excessive Agency or Permission Manipulation

## Overview of the Vulnerability

Excessive agency or permission manipulation occurs when an attacker is able to manipulate the Large Language Model (LLM) outputs to perform actions that may be damaging or otherwise harmful. An attacker can abuse excessive agency or permission manipulation within the LLM to gain access to, modify, or delete data, without any confirmation from a user.

## Business Impact

This vulnerability can lead to reputational and financial damage if an attacker compromises the LLM decision making or accesses unauthorized data. These cirvumstances not only harm the company but also weaken users' trust. The extent of business impact depends on the sensitivity of the data transmitted by the application.

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
