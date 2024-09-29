Outdated software is common in applications that use many types of different software stacks. Many outdated software versions have well known and documented vulnerabilities, including those with Common Vulnerabilities and Exposures (CVE) IDs.

Rosetta Flash is a vulnerability that leverages alphanumeric characters to exploit JavaScript Object Notation with Padding (JSONP) callback endpoints. An attacker can use this vulnerability to bypass Same Origin Policy and execute scripts on domains outside of the scope allowing for code execution and sensitive data exfiltration about end users, including credentials.

**Business Impact**

Rosetta flash can lead to reputational damage for the business due to a loss in confidence and trust by users. A successful rosetta flash attack can lead to sensitive data exfiltration which can result in indirect financial loss to the business.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Navigate to callback endpoint: {{value}}
1. {{action}} and intercept request with a Web Proxy
1. Notice the SWF used: {{value}}
1. Use {{software}} to generate an alphanumeric SWF file hosted on the attacker website: {{value}}
1. Use the callback endpoint to {{action}}

**Proof of Concept (PoC)**

The screenshot(s) below demonstrates the full exploit:

{{screenshot}}
