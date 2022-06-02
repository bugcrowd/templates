# DNS-Only Server-Side Request Forgery

## Overview of the Vulnerability

Server-side request forgery (SSRF) is a vulnerability that exploits the trust relationship between a server and an application, or other backend systems. An attacker can take advantage of this trust to forge server-side traffic and make HTTP requests to internal or external domains. Such domains may include internal cloud server meta-data which consists of sensitive configuration information, internal HTTP database interfaces allowing database access, or using `file://` URI to read sensitive files. A SSRF vulnerability was found in this application which allows an attacker to observe DNS queries of the application.

## Business Impact

DNS-only SSRF can result in the application and internal network being less secure, as an attacker is able to use the known DNS queries to mount further attacks.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to login and navigate to: {{URL}}
1. Forward the following payload to the endpoint:

```HTTP
{{request}}
```

1. Observe DNS interaction in the HTTP interception proxy

## Proof of Concept (PoC)

The screenshot below shows incoming DNS queries from the application:

{{screenshot}}
