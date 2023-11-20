# Internal Scans or Medium-Impact Server-Side Request Forgery

## Overview of the Vulnerability

Server-side request forgery (SSRF) is a vulnerability that exploits the trust relationship between a server and an application, or other backend systems. An attacker can take advantage of this trust to forge server-side traffic and make HTTP requests to internal or external domains. A SSRF vulnerability was found in this application which allows an attacker to perform arbitrary internal requests and internal network scanning.

## Business Impact

SSRF can lead to data theft and through an attacker accessing, deleting, or modifying data from within the application via their access to server-side systems. This could also result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to login and navigate to: {{URL}}
1. Forward the following payload to the endpoint:

```HTTP
{{request}}
```

1. Capture the request in the HTTP interception proxy when “Submit” is clicked
1. Send the request to intruder
1. Set intruder up to replace the following parameter value with all IP addresses in the 10.0.0.0/16 range

 {{parameter}}

1. Observe that active internal web hosts respond with {{X}}, while hosts that do not have web hosts respond with {{Y}}

## Proof of Concept (PoC)

The following screenshot(s) demonstrate(s) this vulnerability:

{{screenshot}}
