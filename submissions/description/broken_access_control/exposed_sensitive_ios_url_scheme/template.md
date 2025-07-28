A URL Scheme helps facilitate the transfer of a limited amount of data between iOS applications on Apple mobile devices. iOS applications operate in separate sandboxes to limit the access and transfer of data between applications. However, it is possible to perform an App-in-the-Middle (AitM) attack where a malicious application sends a manipulated URL Scheme to trick a legitimate application into sharing a user’s sensitive data, bypassing access controls of the legitimate application.

The application has an exposed sensitive iOS URL Scheme, which an attacker can take advantage of to perform an AitM attack, bypass the access controls of the application, and gather sensitive user data. This data could be used to perform further attacks on the application, the business, or its users, including account takeover.

**Business Impact**

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Log in to an account that should not be able to perform {{action}}
1. Forward the following request to the endpoint:

```HTTP
{{request}}
```

1. Observe that the account now has additional user functionality and access to data it was previously not authorized to access

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
