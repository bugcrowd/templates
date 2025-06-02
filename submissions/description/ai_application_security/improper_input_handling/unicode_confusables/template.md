Unicode confusable vulnerabilities occur when an attacker uses unicode characters that look visually similar to standard characters but have different underlying code points. This inproper input handling allows an attacker to create domain names, usernames, or content that appears legitimate but can deceive users or bypass security filters.

**Business Impact**

This vulnerability can lead to reputational and financial damage of the company. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

**Steps to Reproduce**

1. Input the following visually similar Unicode characters to common ASCII characters:

```input
  {malicious input}
```

1. Use these Unicode characters to create a fake domain name, username, or content
1. Observe that this fake entity can be used to deceive users or bypass security filters

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
