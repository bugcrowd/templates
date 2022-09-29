# Command Injection

## Overview of the Vulnerability

Command injection is an attack type where it is possible to inject operating system commands into the application where they execute on the host operating system with the privileges of the application. The application is vulnerable to command injection which can allow an attacker to execute system commands on the operating system and exfiltrate sensitive data, or elevate privileges. Depending on the privileges of the account, an attacker may be able to inject commands and take over the server or systems that the application is running on.

## Business Impact

This vulnerability can lead to direct financial loss to the company due to data theft, application manipulation and corruption, or denial of service to customers and users of the application. It can also lead to reputational damage as customers may view the application as insecure.

## Steps to Reproduce

1. Login to the application
1. Navigate to the account page
1. Modify ID token in the URL to add single quote, `'`
1. View error which states 'SQL Syntax Error'
1. Replace ID value with `1' waitfor delay '00:00:10';`

## Proof of Concept (PoC)

The screenshot below shows the command injection:

{{screenshot}}
