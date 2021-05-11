# Overview
<!--
**Please replace text in each section below**

Sensitive Data Exposure Report

Resources:

- <https://owasp.org/www-project-top-ten/2017/A3_2017-Sensitive_Data_Exposure>
-->
Sensitive data is information that should be behind an authorisation barrier. When this data is exposed it can place critical senstive data at risk. This can occur due to a variety of scenarios such as: not encrypting data, SSL not being used for authenticated pages, or passwords being storted using unsalted hashes. Examples of such data include, but are not limited to: personally identifiable information (PII), Social Security numbers, medical data, banking information, and login credentials. 
This could lead to financial loss, identity theft, and reputational damage of {{program}} and their users.

Sensitive data relating to {{program}} was found at {{url}} which was accessed through {{action}}. This allows a malicious attacker to exfiltrate senstive data such as listed above, and/or perform {{action}}.

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

Example:

1. Browse to the URL `{{url}}/data/`
2. You will see the data being leaked from the server, this contains PII for all users in the platform
3. Clicking on any user will show their email address, real name, and postal address

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For sensitive data exposure, try to take a screenshot of the data that is being exposed, if the data includes PII, do not access the data.
**DO NOT ACCESS PII**
-->

The screenshots/video below displays the sensitive data at {{url}}.

{{screenshot}}

## Demonstrated Impact
<!--
Describe the impact of the sensitive data being exposed, do your best to describe what the impact for this data may be to the company. 

**DO NOT ACCESS PII**
-->
This data could be used by a malicious attacker in a variety of ways, such as:

1. Selling databases
2. Using credentials to take over user accounts
3. {{action}}
