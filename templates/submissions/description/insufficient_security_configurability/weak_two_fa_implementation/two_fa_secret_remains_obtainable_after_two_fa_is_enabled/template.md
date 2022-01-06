# 2FA secret remains obtainable after two factor authentication is enabled
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
The two factor authentication secret remains obtainable after initial setup {{application}} of {{target}}, allowing a malicious attacker to {{action}}

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
1. Navigate to {{url}} and setup two factor authentication
1. After initial setup, observe that the two factor authentication secret is still obtainable at {{url}}


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a two factor authentication secret that can still be obtained after initial setup, please include a screenshot showing the functionality to obtain the 2FA secret.
-->

You can observe that the two factor authentication secret can still be obtained below:

{{screenshot}}
## Demonstrated Impact
<!--
Envision how being able to obtain a two factor authentication secret after initial setup could be used in some impactful way. If a malicious action is possible, provide a full proof-of-concept here.
-->

Allowing users to obtain their two factor authentication secret in {{application}} could allow an attacker with account/physical access to bypass the two factor authentication system. An attacker that finds a way to access the user's two factor authentication secret would be able to perform {{action}}.
