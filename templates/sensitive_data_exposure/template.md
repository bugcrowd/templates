# Sensitive data exposure
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Sensitive data is exposed on {{application}} of {{target}}, allowing a malicious attacker to {{action}}

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Login to in-scope asset at <www.inscope.com/login>
1. Browse to account page
1. Modify ID token to add single quote
1. View error which states 'SQL Syntax Error'
1. Replace ID value with `1' waitfor delay '00:00:10'; `
-->

1. Using an HTTP proxy or web browser, submit {{payload}} to {{url}}, observing the sensitive data


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For sensitive data exposure, try to take a screenshot of the data that is being exposed, if the data includes PII, do not access the data.
**DO NOT ACCESS PII**
-->

You can observe the exposed sensitive data below:

{{screenshot}}
## Demonstrated Impact
<!--
Describe the impact of the sensitive data being exposed, do your best to describe what the impact for this data may be to the company. 
-->

A malicious attacker could abuse exposed sensitive data to perform {{action}}.
