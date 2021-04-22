# Response Splitting via CRLF

## Overview
<!--
**Please replace text in each section below**

Local File Inclusion Report

Resources:

- <https://owasp.org/www-community/vulnerabilities/PHP_File_Inclusion>
- <https://owasp.org/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/07-Input_Validation_Testing/11.1-Testing_for_Local_File_Inclusion>
-->
Response Splitting is a vulnerability that exploits the way HTTP headers parse certain characters such as \r and \n. 

Appending these characters to HTTP headers can allow a malicious attacker to insert payloads to manipulate cookies, server information, and status codes.

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. On your browser, browse to the URL `www.inscope.com/../../ect/hostname`
1. You will see the hostname of the server running this website

-->

1. Navigate to the following endpoint: {{value}}

1. {{action}} and intercept the request in a Web Proxy

1. Insert the following payload to {{parameter}}: {{value}}

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a Local File Inclusion vulnerability, you may take output from files that do not contain sensitive information, some examples would be /etc/hostname, /etc/password, or /etc/issues.
**DO NOT ACCESS PII**
-->

The following image(s) shows the full exploit:

{{screenshot}}

## Demonstrated Impact
<!--
Local File Inclusion vulnerabilities allow an attacker to read any files on the machine hosting the vulnerable service, this can include secrets such as passwords, certificate information, and Personally Identifiable Information (PII).

**DO NOT ACCESS PII**
-->

Response Splitting using CRLF allows a malicious attacker to insert their own session cookies to user sessions, append HTML to run code within user's browsers, and possibly cause a redirect to a website under their control.
