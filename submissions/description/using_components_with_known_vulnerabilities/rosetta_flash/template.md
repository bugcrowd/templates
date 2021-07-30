# Rosetta Flash

## Overview
<!--
**Please replace text in each section below**

SQL Injection Vulnerability Report

Resources:

- <https://owasp.org/www-community/attacks/SQL_Injection>
- <https://owasp.org/www-community/attacks/Blind_SQL_Injection>
-->

Rosetta Flash is a vulnerability that leverages alphanumeric characters to exploit JSONP callback endpoints.

A malicious attacker can use this vulnerability to bypass Same Origin Policy and call scripts and request data from another origin.

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Login to in-scope asset at <www.bugcrowd.com/login>
1. Browse to account page
1. Modify ID token to add single quote
1. View error which states 'SQL Syntax Error'
1. Replace ID value with `1' waitfor delay '00:00:10'; `
-->

1. Navigate to callback endpoint: {{value}}

1. {{action}} and intercept request with a Web Proxy

1. Notice the SWF used: {{value}}

1. Use {{software}} to generate an alphanumeric SWF file hosted on the attacker website {{value}}

1. Use the callback endpoint to {{action}}

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For an SQL Injection vulnerability, please include specific NON-PII information discovered in the database, such as Database Version, a listing of database tables, or an injected 'sleep' payload.

You may present your evidence as output from a tool such as SQLMap, unless the program forbids the use of these tools, and it may be in the format of terminal output, screenshots, or video..

**DO NOT ACCESS PII**
-->

The following image(s) show the full exploit:

{{screenshot}}

## Demonstrated Impact
<!--
Demonstrating access to data other than the database version or database tables is NOT permitted without explicit permission from the program.
**DO NOT ACCESS PII**

Action varies based on software
--> 

A malicious attacker can use this vulnerability to execute scripts on domains outside of the scope allowing for code execution and data exfiltration.

