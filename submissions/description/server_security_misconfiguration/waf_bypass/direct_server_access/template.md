# WAF Bypass With Direct Server Access

## Overview
<!--
**Please replace text in each section below**

WAF Bypass via Direct Server Access

Resources:

- <https://www.owasp.org/index.php?title=OWASP_Periodic_Table_of_Vulnerabilities_-_Brute_Force_(Generic)_/_Insufficient_Anti-automation&setlang=en>
- <http://projects.webappsec.org/w/page/13246938/Insufficient%20Anti-automation>
-->

A Web Application Firewall (WAF) protects applications from attacks such as Cross-Site Scripting (XSS), SQL injection, and malicious strings using pattern matching and traffic analysis.

Some applications will completely rely on WAFs as their primary defense. A bypass can allow an attacker to gain full access to an application via a specifically crafted payload. 

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Browse to the URL <https://111.111.111.111>
1. Click through the certificate error
1. You will see from the HTTP title that this the IP Address for <https://secure.inscope.com> 
-->

1. Browse to the URL endpoint: {{value}}

1. Access the applciation by sending the following payload on endpoint {{value}}:

{{value}}


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

Using this bypass, a malicious attacker can {{value}}. Impact will vary depending on the type of application accessed.
