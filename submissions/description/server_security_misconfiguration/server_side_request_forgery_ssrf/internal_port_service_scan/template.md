Server-side request forgery (SSRF) is a vulnerability that exploits the trust relationship between a server and an application, or other backend systems. An attacker can manipulate the URL parameter to force the server to issue requests to internal IP addresses and ports. A SSRF vulnerability was found in this application where an attacker can scan internal hosts and enumerate running services by observing differences in response timing, status codes, or content that is returned.This allows an attacker to identify which ports have active services, and view service banners or version information that are not intended to be visible externally.

**Business Impact**

SSRF that enables internal port and service scanning provides an attacker with a detailed map of internal infrastructure, allowing them to identify vulnerable software and plan targeted attacks. This could result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

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
