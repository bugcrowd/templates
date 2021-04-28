# Sensitive data exposure: known public information
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Known public information is disclosed on {{application}} of {{target}}, allowing a malicious attacker to {{action}}

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Login to in-scope asset at <www.bugcrowd.com/login>
1. Browse to account page
1. Modify ID token to add single quote
1. View error which states 'SQL Syntax Error'
1. Replace ID value with `1' waitfor delay '00:00:10'; `
-->

1. Navigate to {{url}} and observe the publicly known information


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For the disclosure of publicly known information please include a screenshot of the disclosed data.
**DO NOT SAVE PII**
-->

You can observe the disclosure of publicly known information below:

{{screenshot}}
## Demonstrated Impact
<!--
Attempt to use the disclosure of publicly known information to perform sensitive functions, but do not save or utilize PII in any way.
-->

A malicious attacker could abuse the disclosure of publicly known information by using it to perform {{action}}.
