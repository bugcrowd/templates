Server-side request forgery (SSRF) is a vulnerability that exploits the trust relationship between a server and an application, or other backend systems. An attacker can take advantage of this trust to forge server-side traffic and make HTTP requests to external domains. An external SSRF vulnerability was found in this application which allows an attacker to trigger external DNS-based interactions from the application.

**Business Impact**

External DNS-only SSRF can result in the application and internal network being less secure, as an attacker is able to use the known DNS queries to mount further attacks.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to login and navigate to: {{URL}}
1. Forward the following payload to the endpoint:

```HTTP
{{request}}
```

1. Observe DNS interaction in the HTTP interception proxy

**Proof of Concept (PoC)**

The following screenshot(s) demonstrate(s) this vulnerability:

{{screenshot}}
