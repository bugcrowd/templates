Improper output handling can result in cross-Site Scripting (XSS) where an AI application fails to properly sanitize or encode user-supplied input. This allows an attacker to inject malicious scripts into the application, where the output is viewed by other users. These scripts execute within the user's browser context, potentially stealing session cookies, redirecting users to malicious sites, or performing other harmful actions.

**Business Impact**
This vulnerability can lead to reputational and financial damage of the company due an attacker gaining access to unauthorized data or compromising the decision-making of the LLM, which would also impact customers' trust. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

**Steps to Reproduce**
1. Input the following specifically crafted text/data designed to trigger an XSS payload within an applicable function:

```prompt
  {malicious prompt}
```

1. Observe that the output of the AI application leads to XSS execution

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
