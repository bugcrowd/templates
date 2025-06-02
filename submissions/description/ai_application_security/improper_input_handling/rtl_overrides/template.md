RTL (Right-To-Left) override vulnerabilities occur when an attacker uses special Unicode characters (RTL override or LTR override) to manipulate the display order of text. An attacker can use this inproper input handling to create visually misleading content, hide file extensions, or obfuscate URLs, leading to social engineering attacks, phishing, or bypassing of security filters.

**Business Impact**

This vulnerability can lead to reputational and financial damage of the company. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

**Steps to Reproduce**

1. Use the following crafted input containing RTL or LTR override characters:

```input
  {malicious input}
```

1. Observe how it is rendered, notice the reversing or obscuring the intended display order.

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
