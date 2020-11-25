# Overview
<!--
**Please replace text in each section below**

No rate limiting on login form - Vulnerability Report

Resources:

- <https://www.owasp.org/index.php?title=OWASP_Periodic_Table_of_Vulnerabilities_-_Brute_Force_(Generic)_/_Insufficient_Anti-automation&setlang=en>
- <http://projects.webappsec.org/w/page/13246938/Insufficient%20Anti-automation>
-->

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Browse to the website <www.inscope.com/form>
1. Fill out the login form and add in our target email address and any password
1. Turn on our intercept proxy for the browser and submit the form
1. Send the request to intruder from the intercept proxy
1. Submit the request 100 times with a new password each time
1. Sign in on the account directly after
-->

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

This can be a video showing the intruder not being limited after 100 requests, and the account being logged in afterwards.
-->

## Demonstrated Impact
<!--
This will enable an attacker to bruteforce any login for the website, and allow an attacker to attempt Credential Stuffing. 
--> 
