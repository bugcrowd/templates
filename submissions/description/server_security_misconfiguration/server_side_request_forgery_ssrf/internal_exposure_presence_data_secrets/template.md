Server-side request forgery (SSRF) is a vulnerability that exploits the trust relationship between a server and an application, or other backend systems. An attacker can manipulate the URL parameter to force the server to issue requests to internal IP addresses on arbitrary ports. A SSRF vulnerability was found in this application where the server's response differs depending on whether a requested resource is present. This allows an attacker to confirm that specific data, or secrets, exist on an internal service, such as enumerating internal paths, keys, or configuration entries. However, the attacker is unable to retrieve the internal data or secret's values.

**Business Impact**

SSRF that confirms the presence of internal data or secrets gives an attacker knowledge of what sensitive resources exist and where they are stored. This information helps an attacker prioritize targets if a higher-impact vulnerability is found elsewhere. While no secret values are directly exposed, confirming the existence of credentials, API keys, or sensitive configuration entries on specific internal endpoints reveals the internal security architecture. This could result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to log in and navigate to: {{URL}}
1. Forward the following payload to the endpoint:

```http
{{request}}
```

1. Observe the sensitive response

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
