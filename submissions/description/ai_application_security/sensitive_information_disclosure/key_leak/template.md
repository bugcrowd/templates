Key leak occurs when sensitive cryptographic keys, or API keys, used by the AI application are unintentionally exposed. These keys can provide unauthorized access to the system or its components, leading to data breaches, data manipulation, and other malicious activities. An attacker can identify leaked keys in code repositories, configuration files, or through insecure transmission.

**Business Impact**

Unauthorized access to critical systems and data, potential compromise of sensitive information, and significant financial losses. Reputational damage due to security breaches and loss of customer trust.

**Steps to Reproduce**

1. Go to the following location: {{URL/location}}
1. Observe that the following API keys or cryptographic keys are hardcoded in the application's code or configuration files:

```markdown
  {API or cryptographic keys}
```

1. Send the following request which demonstrates the leaked keys are valid:

```http
  {HTTP request}
```

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
