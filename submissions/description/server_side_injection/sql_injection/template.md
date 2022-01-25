# SQL Injection

## Overview

SQL Injection is a vulnerability in which an application injects a valid payload within a SQL query from input data. Typically, SQLi allows a malicious attacker to view, modify or delete data that should not be able to be retrieved. SQL queries may be exploited in a variety of ways including exfiltration of database data, exfiltration of files, subtle data tampering, and resource exhaustion. A common escalation is to abuse the SQL functionality to upgrade to full remote command execution.

A SQL Injection (SQLi) was discovered at {{target}} at {{url}} through {{parameter}} using {{payload}}. This allows a malicious attacker to {{action}} and perform arbitrary SQL queries.

## Walkthrough & PoC

1. Login to in-scope asset at {{url}}
2. Browse to account page
3. Modify ID token to add single quote
4. View error which states 'SQL Syntax Error'
5. Replace ID value with {{payload}}

## Vulnerability Evidence

The screenshot/video below demonstrates the SQLi being executed at {{url}}:

{{screenshot}}

## Demonstrated Impact

A SQLi attack can result in unauthorized access to sensitive data, including but not limited to, users' personally identifiable information, passwords, credit card details, and other sensitive data accessible through the application. Data exfiltration through a SQLi attack could lead to reputational damage and regulatory fines. However, a malicious attacker could also deface the application, compromise the underlying server, cause a denial-of-service attack, or otherwise pivot their attack to create a persistent backdoor into an organisation's systems of perform remote command execution.

Within the in-scope asset at {{url}}, a malicious attacker could theoretically abuse this specific SQLi further to {{action}} by using the following SQL query:

```sql
{{payload}}
```
