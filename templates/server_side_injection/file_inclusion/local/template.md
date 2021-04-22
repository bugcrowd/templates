# Local File Inclusion

## Overview
<!--
**Please replace text in each section below**

Local File Inclusion Report

Resources:

- <https://owasp.org/www-community/vulnerabilities/PHP_File_Inclusion>
- <https://owasp.org/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/07-Input_Validation_Testing/11.1-Testing_for_Local_File_Inclusion>
-->
Local File Inclusion (LFI) is a vulnerability that takes advantage of modular code patterns to include server sided files for certain types of functionality used within the application. 

A malicious attacker can use LFI to parse system files and execute functions the application is not programmed to do.

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

Local File Inclusion vulnerabilities allow an attacker to read any files on the machine hosting the vulnerable service, this can include secrets such as passwords, certificate information, and Personally Identifiable Information (PII).

