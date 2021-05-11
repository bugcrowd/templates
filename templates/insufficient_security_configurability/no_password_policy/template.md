# No Password Policy
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
No password policy in {{application}} of {{target}} allows a malicious attacker to {{action}}

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

1. Navigate to {{url}} in {{application}}
1. Observe that {{application}} has no password policy and allows extremely weak passwords such as those consisting of only a single alphanumeric digit or whitespace characters


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For no password policy, please post a screenshot that demonstrates that any kind of password can be set within {{application}}, such as a password consisting of only a single alphanumeric digit or whitespace characters.
-->

You can observe the non-existent password policy of {{application}} below:

{{screenshot}}
## Demonstrated Impact
<!--
Envision how the non-existent password policy could be used by a malicious attacker (such as rapid brute forcing passwords of users). If a malicious action is possible, provide a full proof-of-concept here.
-->

A non-existent password policy allows a malicious attacker to more easily brute force the passwords used within {{application}}, enabling a malicious attacker to easily take over accounts with weak passwords set.
