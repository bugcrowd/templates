# Social Media Sharing Buttons

## Overview
<!--
**Please replace text in each section below**

Local File Inclusion Report

Resources:

- <https://owasp.org/www-community/vulnerabilities/PHP_File_Inclusion>
- <https://owasp.org/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/07-Input_Validation_Testing/11.1-Testing_for_Local_File_Inclusion>
-->
Parameter Pollution exploits application logic that parses the same parameter when multiple are included in a request.

HTTP parameter pollution allows an attacker to process a parameter multiple times causing an application to break logic via crafting a request with multiple instances of the same parameter in a request.

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

1. Append the following payload after {{parameter}}: {{value}}

1. Replay or forward the request to see {{action}}

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

Action varies based on how the application works
-->

HTTP Parameter Pollution vulnerabilities allow an attacker to break application logic to {{action}}
