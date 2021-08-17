# Custom Server Side Template Injection

## Overview
<!--
**Please replace text in each section below**

SQL Injection Vulnerability Report

Resources:

- <https://owasp.org/www-community/attacks/SQL_Injection>
- <https://owasp.org/www-community/attacks/Blind_SQL_Injection>
-->

Server Side Template Injection (SSTI) is a vulnerability within application templating engines to execute code. Applications will sometimes run their own custom templating engine which are prone to vulnerabilities.

A malicious attacker can use SSTI to execute code on the underlything system by manipulating values within the embedded template.

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

1. Navigate to endpoint: {{value}}

1. {{action}} on form and intercept request in a Web Proxy

1. Replay or forward the request to see the error: {{value}}

1. Replace {{parameter}} value with {{value}} to {{action}}

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
--> 

Server Side Template Injection allows for code execution within the underlying system allowing a malicious attacker to run permissioned commands under the exploited process or exploit Cross-Site Scripting to run code within the user's browser.

