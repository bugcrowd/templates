# Overview
<!--
**Please replace text in each section below**

Username Enumeration via Bruteforce Method Vulnerability Report

Resources:

- <https://www.owasp.org/index.php?title=OWASP_Periodic_Table_of_Vulnerabilities_-_Brute_Force_(Generic)_/_Insufficient_Anti-automation&setlang=en>
- <http://projects.webappsec.org/w/page/13246938/Insufficient%20Anti-automation>
-->

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Browse to the URL <https://account.inscope.com/passwordReset>
1. Turn on our Intercept proxy
1. Enter the username of our valid account and click on the "Reset Password" button
1. Select our intercepted request to the Reset Pasword and send it to Intruder
1. Select our username as the value to change and chose a payload of potential usernames
1. Start our intruder attack, and you will see there is a HTTP length of 1000 for a valid account, and 1005 for an invalid account
-->

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

Attaching a screenshot of your Intruder showing the full HTTP Request and Response for a valid and invalid account will work for this submission.
-->

## Demonstrated Impact
<!--
The ability to bruteforce usernames in a web service can allow an attacker to gain an insight into the user base of a service, helping them identify accounts and test for password reuse, endangering the users accounts for the service.
-->
