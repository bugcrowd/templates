**Please replace all commented sections below**
## Overview

SQL Injection Vulnerability Report

Resources:
 - https://owasp.org/www-community/attacks/SQL_Injection
 - https://owasp.org/www-community/attacks/Blind_SQL_Injection

## Walkthrough & PoC

Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:
1. Login to in-scope asset at <www.inscope.com/login>
1. Browse to account page
1. Modify ID token to add single quote
1. View error which states 'SQL Syntax Error'
1. Replace ID value with `1' waitfor delay '00:00:10'; `

## Vulnerability Evidence

Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For an SQL Injection vulnerability, please include specific NON-PII information discovered in the database, such as Database Version, a listing of database tables, or an injected 'sleep' payload.

You may present your evidence as output from a tool such as SQLMap, unless the program forbids the use of these tools, and it may be in the format of terminal output, screenshots, or video..

**DO NOT ACCESS PII**

## Demonstrated Impact

Demonstrating access to data other than the database version or database tables is NOT permitted without explicit permission from the program.
**DO NOT ACCESS PII**

