Server-side request forgery (SSRF) is a vulnerability that exploits the trust relationship between a server and an application, or other backend systems. An attacker can manipulate the URL parameter to force the server to issue requests to internal IP addresses on arbitrary ports. A SSRF vulnerability was found in this application which allows an attacker to determine whether internal ports are open or closed by observing differences in response timing or error messages. However, they are limited to only mapping which ports are open on internal hosts.

**Business Impact**

While no internal data is directly exposed, internal port scanning assists an attacker in identifying the internal network environment and planning further attacks. This could result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to log in and navigate to: {{URL}}
1. Forward the following payload to the endpoint:

```http
{{request}}
```

1. Capture the request in the HTTP interception proxy when “Submit” is clicked
1. Send the request to intruder
1. Set intruder up to replace the following parameter value with all IP addresses in the 10.0.0.0/16 range

 {{parameter}}

1. Observe that active internal web hosts respond with {{X}}, while hosts that do not have web hosts respond with {{Y}}

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
