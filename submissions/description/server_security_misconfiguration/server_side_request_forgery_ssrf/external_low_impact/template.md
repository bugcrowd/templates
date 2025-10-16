Server-side request forgery (SSRF) is a vulnerability that exploits the trust relationship between a server and an application, or other backend systems. An attacker can take advantage of this trust to forge server-side traffic and make HTTP requests to external domains. An external SSRF vulnerability was found in this application which allows an attacker to query external services from the application.

**Business Impact**

External SSRF can lead to data theft and through an attacker accessing, deleting, or modifying data from within the application via their access to server-side systems. This could also result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to log in and navigate to: {{URL}}
1. Forward the following payload to the endpoint:

```http
{{request}}
```

1. Observe HTTP and DNS interaction in the HTTP interception proxy

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
