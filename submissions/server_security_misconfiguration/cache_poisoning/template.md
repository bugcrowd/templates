# Cache Poisoning

## Overview
Web cache allows for static and quick fetching of content in web applications. Content Delivery Networks (CDNs) are commonly used to serve content used by applications. A malicious attacker can take advantage of caching mechanisms to serve content or deny service to certain application using X-Based Host headers (X-Forwarded-Host, etc.).

<!--
**Please replace text in each section below**

HTTPS not Available or HTTP by default on Login Page Vulnerability Report

Resources:

- <https://owasp.org/www-project-top-ten/2017/A3_2017-Sensitive_Data_Exposure

## Walkthrough & PoC

<!-- Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Browse to the URL <www.inscope.com/login>
1. Attempt to sign into the website using the login button
1. Observe the page running on HTTP as default

1. Run the following command on a machine with cURL installed
```bash
curl -I www.inscope.com/login
```
1. Observe the repsonse showing a 200 OK on the HTTP response

 -->

1. Navigate to the vulnerable page: Bugcrowd.com/cache-poisonable-page

1. Intercept request in a Web Proxy and change HTTP header: {{value}} to {{value}}

1. Notice that the following page is cached

{{screnshot}}

1. {{action}} to poison the cache

## Vulnerability Evidence

<!-- 
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

This can include a cURL response from the website showing that HTTP is default or HTTPS is not avalible.
 -->

The following image(s) show the full exploit:

{{screenshot}}

## Demonstrated Impact
<!--
Demonstrating increased impact results in higher rewards! 

Credentials transmitted over HTTP are transmitted in Plaintext, allowing any attacker to intercept these requests, and obtain the login credentials for that user. 
-->

Cache Poisoning allows a malicious attacker to serve content for cached pages on CDNs and websites with cache misconfigurations. This opens attacks for Cross Site Request Forgery (CSRF) and sensitive information leakage.
