# 2FA old code is not invalidated after new code is generated
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
An older two factor authentication code is not invalidated when a new code is generated in {{application}} of {{target}}, allowing a malicious attacker to {{action}}

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
1. Input the first, older code into the two factor authentication input
1. Observe that {{application}} allows the use of the first code after the second was generated, meaning it was not invalidated


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For two factor authentication code that is not invalidated when a new code is generated, please include a video of the 2FA flow showing that an older code is still considered valid.
-->

You can observe that the two factor authentication code is not invalidated when a new code is generated below:

{{screenshot}}
## Demonstrated Impact
<!--
Envision how the failure to invalidate a two factor authentication code when a new code is generated could be used in some impactful way. If a malicious action is possible, provide a full proof-of-concept here.
-->

Failure to invalidate a two factor authentication code when a new code is generated could allow a malicious attacker to perform a replay attack. In this kind of attack, a malicious attacker can use older unused 2FA codes to bypass the 2FA implementation of {{application}}. This means that the malicious attacker could then perform {{action}}.
