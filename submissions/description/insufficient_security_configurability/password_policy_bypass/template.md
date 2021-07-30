# Password Policy Bypass
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Password policy in {{application}} of {{target}} can be bypassed, allowing a malicious attacker to {{action}}

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

1. Navigate to {{url}} in {{application}}
1. Observe that modifying {{parameter}} allows a user to bypass the password policy of the application


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a password policy bypass, please post a screenshot that demonstrates that the password policy can be bypassed to set a weak password.
-->

You can observe the bypass of the password policy of {{application}} below:

{{screenshot}}
## Demonstrated Impact
<!--
Envision how a password policy bypass could be used by a malicious attacker (such as rapid brute forcing passwords of users). If a malicious action is possible, provide a full proof-of-concept here.
-->

A password policy bypass that is widely used by users of {{application}} would allow a malicious attacker to easily brute force and take over accounts with weak passwords set.
