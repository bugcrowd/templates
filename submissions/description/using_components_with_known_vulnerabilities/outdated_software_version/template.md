Outdated software is common in applications that use many types of different software stacks. Some outdated software versions have well known and documented vulnerabilities, including those with Common Vulnerabilities and Exposures (CVE) IDs. An attacker can take advantage of old software versions in this application by using open source vulnerabilities and CVEs to exploit an application.

**Business Impact**

Outdated Software Version can lead to reputational damage for the business due to a loss in confidence and trust by users.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Intercept a response with the HTTP interception proxy
1. Observe the outdated software version:

```HTTP
{{response}}
```

**Proof of Concept (PoC)**

The screenshot(s) below demonstrates the outdated software with known vulnerabilities:

{{screenshot}}
