# Allows disposable email addresses
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Use of disposable email addresses is allowed in {{application}} of {{target}}, allowing a malicious attacker to {{action}}

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
1. Navigate to the registration page at {{url}}
1. Register an account using a disposable email service, and observe that the account is created


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For the use of disposable email addresses, please include a screenshot of an account that was created with a disposable email address.
-->

You can observe that {{application}} allows the use of disposable email addresses below:

{{screenshot}}
## Demonstrated Impact
<!--
Envision how the use of disposable email addresses could be used in some impactful way. If a malicious action is possible, provide a full proof-of-concept here.
-->

Allowing the use of disposable email addresses in {{application}} would allow a malicious attacker to create an exponential amount of accounts on the platform. These accounts could then be used to perform {{action}}.
