# Overview
<!--
**Please replace text in each section below**

No Rate Limiting on registration form - Vulnerability Report

Resources:

- <https://www.owasp.org/index.php?title=OWASP_Periodic_Table_of_Vulnerabilities_-_Brute_Force_(Generic)_/_Insufficient_Anti-automation&setlang=en>
- <http://projects.webappsec.org/w/page/13246938/Insufficient%20Anti-automation>
-->

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Browse to the website <www.inscope.com/register>
1. Fill out the form and add in our username, password, and email address
1. Turn on our intercept proxy for the browser and submit the form
1. Send the request to intruder from the intercept proxy
1. Modify the payload to be a numbered list between 1-100
1. Set our payload position for the end of our email address and username
1. Submit the request 100 times and wait 5 minutes
1. Use our password on our username+100, and you will see we're signed in.
-->

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

You must attach the request you are sending to trigger the account registration, the intruder process running with 100 requests, and the last account generated signing in.  
-->

## Demonstrated Impact
<!--
This will allow an attacker to generate multiple spam accounts on the website, and squat usernames on the website, preventing legitmate users from joining.
--> 
