# Default Credentials 

## Overview
<!--
**Please replace text in each section below**

Using Default Credentials - Vulnerability Report

Resources:
- <https://owasp.org/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/04-Authentication_Testing/02-Testing_for_Default_Credentials>
-->

Default credentials used in {{target}} allows a malicious attacker to login using wordlists of usernames and passwords found online.

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Browse to the URL <https://inscope.com:8006/login/index.php>
1. Enter the username and password combination inscopeAdmin:DefaultPassword
1. You will be logged into the inscopeAdmin account

-->

1. Navigate to login URL: {{value}}

1. Login using username {{value}} and password {{value}}

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

A screenshot of the account being logged in will work here, or a video showing the account being signed in to.
-->

The following image(s) shows the full exploit:

{{screenshot}}

## Demonstrated Impact
<!--
Describe what the impact of using default credentials on this service would be, what role does this account have, and how could it be used. 
--> 

An attacker can login to administrative accounts which may give authority to change the state of the application or users.