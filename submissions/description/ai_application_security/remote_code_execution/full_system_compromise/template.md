A full system compromise due to Remote Code Execution (RCE) occurs when an attacker can execute arbitrary code on the server hosting the AI application, gaining complete control over the system. This usually results from exploiting vulnerabilities in the AI's software components or through insecure configurations, allowing the attacker to bypass security measures and execute malicious commands.

**Business Impact**

This vulnerability can lead to reputational and financial damage of the company due an attacker gaining access to unauthorized data or compromising the decision-making of the LLM, which would also impact customers' trust. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

**Steps to Reproduce**

1. Inject the following prompt into the LLM:

```prompt
  {malicious prompt}
```

1. Trigger the exploit to gain remote access and control
1. Verify full system access and RCE by performing the following:

{{command}}

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
