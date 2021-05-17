# Captcha is Bruteforcable

## Overview
Completely Automated Public Turing test to tell Computers and Humans Apart (CAPTCHA) is used to determine user ands robots apart and is used a mean to prevent spam in an application. Occasionally, CAPTCHAs are misconfigured and/or self implemented which allows malicious attackers to programmatically brute force captchas without rate limiting in place.

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

1. Navigate to the following URL: bugcrowd.com/vulnerable-endpoint-with-captcha

1. Use {{software}} to brute force the captcha

1. See the following results:

{{screenshot}}

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

An attacker can leverage scripts and tools to bypass captchas and make request to critical functionality without rate limit. Forms that are often firewalled by a CAPTCHAs can also deny service for users when executing multiple read and writes from the database.



