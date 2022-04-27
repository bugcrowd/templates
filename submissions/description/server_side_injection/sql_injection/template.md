# SQL Injection

## Overview

SQL injection (SQLi) is a vulnerability in which an application accepts input into an SQL statement and treats this input as part of the statement. Typically, SQLi allows a malicious attacker to view, modify or delete data that should not be able to be retrieved. An SQLi vulnerability was found for this host which allows an attacker to execute code and view data from the SQL service by submitting SQL queries.

An attacker could exploit this lack of input sanitization to exfiltrate database data and files, tamper with the data, or perform resource exhaustion. Depending on the database and how it is configured, an attacker could potentially remotely execute code on the server running the database.

## Business Impact

Data exfiltration through a SQLi attack could lead to reputational damage or regulatory fines for the business due to an attacker’s unauthorized access to data. This could also result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

## Steps to Reproduce

1. Using a browser, login to in-scope asset at: {{URL}}
1. Browse to account page
1. Modify ID token to add single quote
1. View error which states 'SQL Syntax Error'
1. Replace ID value with the following payload:

```SQL
{{payload}}
```

## Proof of Concept (PoC)

The screenshot below demonstrates the SQLi being executed:

{{screenshot}}

The following database name and database user have been retrieved to demonstrate that the PoC exfiltrates valid database information:

{{database name/database user}}
