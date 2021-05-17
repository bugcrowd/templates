# Comma Seperated Values (CSV) Injection

## Overview

Applications will often embed unsafe input in exported spreadsheets targeting desktop applications such as Excel or LibreOffice. A malicious attacker can leverage this unsafe input to exfiltrate data from user or deliver malicious binary to users downloading their input controlled file.

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

1. Navigate to the following URL: bugcrowd.com/vulnerable-endpoint

1. {{action}} to export a CSV file

1. See that the CSV file is using unsafe input:

{{screenshot}}

1. Craft a malicious CSV file to exfiltrate data by using payload:

{{payload}} 

1. Upload to publically accessible endpoint


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

Unsafe CSV formulas allow malicious attackers to deliver payloads or exfiltrate data using specifically crafted input.

