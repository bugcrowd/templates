# Lack of verification email
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Verification of contact method not required when modifying {{parameter}} in {{application}} of {{target}}, allowing a malicious attacker to {{action}}

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

1. Login to {{application}}
1. Navigate to {{url}}
1. Modify some contact method of the account, such as the phone number of email address
1. Observe that no verification email is sent to the new contact method before it is associated with the account


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a lack of verification email, please include a screenshot of some contact method variable being changed with no verification sent to confirm ownership.
-->

You can observe the lack of verification email in {{application}} below:

{{screenshot}}
## Demonstrated Impact
<!--
Envision how the lack of verification email could be used by a malicious attacker (such as internal user impersonation). If a malicious action is possible, provide a full proof-of-concept here.
-->

A lack of verification for an updated contact method allows a malicious attacker to associate any arbitrary email address or phone number with an account without verification. This could allow them to perform spam, phishing, or impersonation attacks.
