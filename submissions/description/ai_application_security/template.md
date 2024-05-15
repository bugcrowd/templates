# AI Application Security Misconfiguration

## Overview of the Vulnerability

Misconfigurations can occur in Artificial Intelligence (AI) applications, including but not limited to machine learning models, algorithms, and inference systems. These misconfigurations can allow an attacker to compromise confidentiality, integrity, or availability of data and services.

## Business Impact

This vulnerability can lead to reputational and financial damage of the company due an attacker gaining access to unauthorized data or compromising the decision-making of the LLM, which would also impact customers' trust. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

## Steps to Reproduce

1. Navigate to the following URL:
1. Inject the following prompt into the LLM:

```prompt
  {malicious prompt}
```

1. Observe that the LLM returns sensitive data

## Proof of Concept (PoC)

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
