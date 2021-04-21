# Lack of notification email
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Lack of notification email when modifying {{parameter}} in {{application}} of {{target}} allows a malicious attacker to {{action}}

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

1. Login to {{application}}
1. Navigate to {{url}}
1. Modify some account variable, such as the password or username
1. Observe that no notification email is sent to the associated account email address to notify the owner of the change


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a lack of notification email, please include a screenshot of some important account state variable being changed with no notification email sent to the account owner.
-->

You can observe the lack of notification email in {{application}} below:

{{screenshot}}
## Demonstrated Impact
<!--
Envision how the lack of notification email could be used by a malicious attacker. If a malicious action is possible, provide a full proof-of-concept here.
-->

A lack of notification email on account changes allows a malicious attacker who has gained access to a user's account to make changes without notifying the user. This allows the malicious attacker to surreptitiously perform actions on a compromised account without the owner's knowledge.
