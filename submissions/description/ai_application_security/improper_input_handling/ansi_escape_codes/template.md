ANSI escape codes injection occurs when an attacker uses specially crafted ANSI escape sequences within user-supplied input that can manipulate either the terminal output, or the behavior of the system receiving that input. This can lead to an attacker creating visual distortions, hiding of data, or even remote code execution in vulnerable systems that interpret these codes incorrectly.

**Business Impact**
This vulnerability can lead to reputational and financial damage of the company. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

**Steps to Reproduce**
1. Use the following crafted input containing specific ANSI escape sequences for functions:

```input
  {malicious input}
```

1. Input the crafted text and observe that the ANSI escape sequences are processed in the output

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
