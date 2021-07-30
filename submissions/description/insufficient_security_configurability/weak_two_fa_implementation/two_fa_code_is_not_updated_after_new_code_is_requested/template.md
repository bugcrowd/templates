# 2FA code is not updated after new code is requested
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
A two factor authentication code is not updated when a new code is requested in {{application}} of {{target}}, allowing a malicious attacker to {{action}}

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

1. Login to {{application}} at {{url}}
1. When the two factor authentication step of the login is reached, request a code
1. When the first code is received, request a new code and verify that the second code is also received
1. Observe that the first and second code are identical, demonstrating that the two factor authentication code is not updated when a new code is requested


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For two factor authentication code that is not updated when a new code is requested, please include a video of the 2FA flow showing that identical code are returned from two sequential requests.
-->

You can observe that the two factor authentication code is not updated when a new code is requested below:

{{screenshot}}
## Demonstrated Impact
<!--
Envision how the failure to update a two factor authentication code when a new code is requested could be used in some impactful way. If a malicious action is possible, provide a full proof-of-concept here.
-->

Failure to update a two factor authentication code when a new code is requested indicates that {{application}} does not follow best practice in their two factor authentication implementation. This means that the malicious attacker could then perform {{action}}.
