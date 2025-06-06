Remote Code Execution (RCE) via sandboxed container code execution occurs when an attacker breaks out of a sandboxed environment and execute arbitrary code on the host system. This exploits weaknesses in the container isolation or configuration, allowing the attacker to gain control beyond the intended limitations of the sandbox.

**Business Impact**

This can lead to data breaches, data manipulation, service disruption, and further attacks on other systems or data on the same host.

**Steps to Reproduce**

1. Identify a vulnerability in the sandboxed environment or its configuration
1. Execute the following exploit designed to break out of the sandbox:

``` python
  {malicious script}
```

1. Verify and observe that arbitrary code can be executed on the host system outside the sandbox

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
