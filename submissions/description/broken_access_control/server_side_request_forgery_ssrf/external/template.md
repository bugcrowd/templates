# External Server-Side Request Forgery

## Overview of the Vulnerability

Server-side request forgery (SSRF) is a vulnerability that exploits the trust relationship between a server and an application, or other backend systems. An attacker can take advantage of this trust to forge server-side traffic and make HTTP requests to internal or external domains. Such domains may include internal cloud server meta-data which consists of sensitive configuration information, internal HTTP database interfaces allowing database access, or using `file://` URI to read sensitive files. A SSRF vulnerability was found in this application which allows an attacker to create arbitrary external HTTP requests, such as those outlined above.

## Business Impact

External SSRF can lead to data theft and through an attacker accessing, deleting, or modifying data from within the application via their access to server-side systems. This could also result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to login and navigate to: {{URL}}
1. Forward the following payload to the endpoint:

```HTTP
{{request}}
```

1. Observe HTTP and DNS interaction in the HTTP interception proxy

## Proof of Concept (PoC)

The screenshot below shows incoming HTTP requests and DNS queries from the application:

{{screenshot}}
