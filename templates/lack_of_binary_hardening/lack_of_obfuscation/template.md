# Binary hardening - Lack of obfuscation
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Lack of obfuscation in {{application}} of {{target}} allows a malicious attacker to {{action}}

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

1. Navigate to the source code files of {{application}}
1. Observe that there is no obfuscation in the source code of {{application}} and any reader can clearly understand it


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a lack of obfuscation, please include a screenshot of the non-obfuscated source code of the application.
-->

You can observe the non-obfuscated source code of the application below:

{{screenshot}}
## Demonstrated Impact
<!--
Attempt to show that the  non-obfuscated source code of the application could be used by a malicious attacker in some impactful way. If this is possible, provide a full proof-of-concept here.
-->

A malicious attacker could abuse non-obfuscated source code of the application by reading source code without any hindrances. With these easily readable files, a malicious attacker could perform {{action}}.
