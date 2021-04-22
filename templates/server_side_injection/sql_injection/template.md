# SQL Injection

## Overview
<!--
**Please replace text in each section below**

SQL Injection Vulnerability Report

Resources:

- <https://owasp.org/www-community/attacks/SQL_Injection>
- <https://owasp.org/www-community/attacks/Blind_SQL_Injection>
-->

SQL Injection is a vulneralibity in which an application injects a valid payload within a SQL query from input data.

A malicious attacker can use SQL Injection to interact with the underlying database or system via code execution or data exfiltration.

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Login to in-scope asset at <www.inscope.com/login>
1. Browse to account page
1. Modify ID token to add single quote
1. View error which states 'SQL Syntax Error'
1. Replace ID value with `1' waitfor delay '00:00:10'; `
-->

1. Login to in-scope asset at {{value}}

1. Navigate to endpoint: {{value}}

1. Modify {{parameter}} to {{action}}

1. View error which states {{value}}

1. Replace {{parameter}} value with {{value}}

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

SQL Injection allows a malicious attacker to execute code within the underlying system, manipulate database tables, exfiltrate data, and deny access (DoS).
