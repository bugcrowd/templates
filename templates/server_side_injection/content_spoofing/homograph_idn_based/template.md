# Internationalized Domain Name Homograph Attack

## Overview
<!--
**Please replace text in each section below**

WAF Bypass via Direct Server Access

Resources:

- <https://www.owasp.org/index.php?title=OWASP_Periodic_Table_of_Vulnerabilities_-_Brute_Force_(Generic)_/_Insufficient_Anti-automation&setlang=en>
- <http://projects.webappsec.org/w/page/13246938/Insufficient%20Anti-automation>
-->

Internationalized Domain Name (IDN) Homograph Attack is an type of typosquatting attack that spoofs the name of a known domain by using homoglyph characters that mimic the actual letter.

IDN Homograph attack in {{target}} allows a malicious attacker to {{action}} via replacing {{value}} with {{value}}

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

1. {{action}} and capture the request in a Web Proxy

1. Change {{value}} to {{value}} and then {{action}}

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

A successful IDN Homograph attack can allow a malicious attacker to social engineer users to navigate to a malicious website where it can use the trust of the credible domain name to phish users for their credentials.

