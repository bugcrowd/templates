Markdown or HTML injection occurs when an AI application improperly handles user-supplied text or data, allowing an attacker to inject arbitrary Markdown or HTML code into the application's output. This injected code can then be rendered by the browser, leading to visual distortions, malicious links, or even potential Cross-Site Scripting (XSS) vulnerabilities if JavaScript is allowed.

**Business Impact**

This vulnerability can lead to reputational and financial damage of the company due an attacker gaining access to unauthorized data or compromising the decision-making of the LLM, which would also impact customers' trust. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

**Steps to Reproduce**

1. Input the following text or data containing Markdown or HTML code intended to manipulate the output's appearance or functionality:

```input
  {malicious input}
```

1. Observe the application's output see that the Markdown or HTML code is rendered instead of being displayed as plain text.

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
