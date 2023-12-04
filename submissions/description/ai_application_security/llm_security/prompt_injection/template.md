# Prompt Injection

## Overview of the Vulnerability

Prompt injection occurs when an attacker crafts a malicious prompt that manipulates a Large Language Model (LLM) into executing unintended actions. The LLM's inability to distinguish user input from its dataset influences the output it generates. This flaw allows attackers to exploit the system by injecting malicious prompts, thereby bypassing safeguards.

## Business Impact

This vulnerability can lead to reputational and financial damage of the company due an attacker gaining access to unauthorized data or compromising the decision-making of the LLM, which would also impact customers' trust. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

## Steps to Reproduce

1. Navigate to the following URL: {{URL}}
1. Inject the following prompt into the LLM:

```prompt
  {malicious prompt}
```

1. Observe that the LLM returns sensitive data

## Proof of Concept (PoC)

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
