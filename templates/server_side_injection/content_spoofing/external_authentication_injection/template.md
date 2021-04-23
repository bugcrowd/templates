# External Authentication Injection

## Overview
<!--
**Please replace text in each section below**

WAF Bypass via Direct Server Access

Resources:

- <https://www.owasp.org/index.php?title=OWASP_Periodic_Table_of_Vulnerabilities_-_Brute_Force_(Generic)_/_Insufficient_Anti-automation&setlang=en>
- <http://projects.webappsec.org/w/page/13246938/Insufficient%20Anti-automation>
-->

Content spoofing is a common attack where malicious attackers can insert plaintext or HTML that can be rendered on a client to social engineer users to do something. External authentication is a type of content spoofing that asks the user to type in a username and password on an external resource. 

External authentication in {{target}} allows a malicious attacker to {{action}}

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Browse to the URL <https://111.111.111.111>
1. Click through the certificate error
1. You will see from the HTTP title that this the IP Address for <https://secure.inscope.com> 
-->

1. Navigate to endpoint: {{value}}

1. {{action}} to prompt for a username and password 

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

This can be using a screenshot of both pages side by side with the address bar in the screenshot, or if the domain is not protecting its IP Address, a DIG showing the record for the domain and IP Address.
-->

The following image(s) show the full exploit:

{{screenshot}}

## Demonstrated Impact
<!--
A WAF Bypass allows an attacker to bypass existing Web Application Firewall protections, leaving the web service open to attacks against the web service.
--> 

A successful external authentication injection can allow a malicious attacker to social engineer users to enter their credentials on a malicious website.

