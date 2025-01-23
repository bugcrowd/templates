SAML replay is a vulnerability where an attacker intercepts and reuses a valid Security Assertion Markup Language (SAML) token to gain unauthorized access to a system. This occurs when the application fails to implement proper safeguards, such as token expiration, or single-use tokens. An attacker can use the replayed token to access sensitive data, or perform unauthorized actions within the application on behalf of a user.

**Business Impact**  
SAML Replay attacks can lead to unauthorized access to sensitive data, and can cause financial, reputational, and legal damages. This vulnerability could also result in reputational damage for the business through the impact to customers’ trust.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Capture the following request that includes a valid SAML assertion:

```
{{request}}
```

1. Replay the captured SAML assertion by sending it to the target application without modification.
1. Observe that the application grants access based on the replayed token


**Proof of Concept (PoC)**

The screenshot below demonstrates the broken authentication and session management:

{{screenshot}}
