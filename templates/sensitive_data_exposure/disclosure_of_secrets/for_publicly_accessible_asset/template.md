# Disclosure of Secrets for Publicly Accessible Asset

## Overview

A malicious attacker can leverage disclosed secrets to access and escalate privileges on applications and hosted environments.

<!--
**Please replace text in each section below**

HTTPS not Available or HTTP by default on Login Page Vulnerability Report

Resources:

- <https://owasp.org/www-project-top-ten/2017/A3_2017-Sensitive_Data_Exposure

## Walkthrough & PoC

<!-- Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
=======
# Disclosure of secrets for publicly accessible asset

## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Disclosure of secrets for a publicly accessible asset on {{application}} of {{target}}, allows a malicious attacker to {{action}}

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
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

1. Navigate to the following URL: bugcrowd.com/data-disclosed-url

1. Use {{software}} to crawl open source databases and publically accessible data for secrets

1. Notice on the following endpoint the following secret was revealed:

{{value}}


## Vulnerability Evidence

<!-- 
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

This can include a cURL response from the website showing that HTTP is default or HTTPS is not avalible.
 -->

The following image(s) show the full exploit:
=======
1. Login to in-scope asset at <www.bugcrowd.com/login>
1. Browse to account page
1. Modify ID token to add single quote
1. View error which states 'SQL Syntax Error'
1. Replace ID value with `1' waitfor delay '00:00:10'; `
-->

1. Navigate to {{url}} and observe the disclosure of secrets for a publicly accessible asset


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For exposed secrets for a publicly accessible asset, please include a screenshot of the data.
**DO NOT SAVE PII**
-->

You can observe the exposed secrets for a publicly accessible asset as well as verify its validity below:

{{screenshot}}

## Demonstrated Impact
<!--
Demonstrating increased impact results in higher rewards! 

Credentials transmitted over HTTP are transmitted in Plaintext, allowing any attacker to intercept these requests, and obtain the login credentials for that user. 
-->

Sensitive data disclosure of secrets for assets can enable malicious attackers to attack and escalate privileges on API endpoints and application environments, they can then execute functions under the guise of an admin or user depending on the permissions of the secret.
=======
Attempt to abuse the exposed secrets for a publicly accessible asset to access sensitive data or sensitive functions that you control, but do not save or utilize the sensitive data in any way.
-->

A malicious attacker could abuse the exposed secrets for a publicly accessible asset to perform {{action}}.
