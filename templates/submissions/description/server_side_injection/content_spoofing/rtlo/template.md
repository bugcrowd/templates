# Right to Left Override

## Overview
<!--
**Please replace text in each section below**

WAF Bypass via Direct Server Access

Resources:

- <https://www.owasp.org/index.php?title=OWASP_Periodic_Table_of_Vulnerabilities_-_Brute_Force_(Generic)_/_Insufficient_Anti-automation&setlang=en>
- <http://projects.webappsec.org/w/page/13246938/Insufficient%20Anti-automation>
-->

Right to Left Override (RLO) Character is a unicode character denounced as U+202E in systems that can understand unicode, whenever an RLO character is renders, all unicode text afterwards will be reversed.

An RLO attack in {{target}} allows a malicious attacker to spoof content in a way where it can potentially social engineer users to do something.

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

1. {{action}} and intercept request in a Web Proxy

1. Append/add an RLO unicode character to {{parameter}}

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

A successful exploit of an RLO character can trick users to downloading or clicking on files they otherwise would not. These files can include malware or an executable that requires user interaction to successfully infect systems.
