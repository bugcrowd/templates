# Executable file download without secure integrity check
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
An unencrypted executable file download without secure integrity check is performed in {{application}} of {{target}}, allowing a malicious attacker to {{action}}

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

1. Route all application traffic through a HTTP proxy
1. Run {{application}} and navigate to {{url}}
1. Observe within the HTTP proxy that an executable file is downloaded unencrypted without any secure integrity check


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For an executable file is downloaded without any secure integrity check, show HTTP proxy logs or source code that shows this.
-->

You can observe proof that an executable file is downloaded without any secure integrity check below:

{{screenshot}}
## Demonstrated Impact
<!--
Attempt to abuse the executable file that is downloaded without any secure integrity check in some impactful way. If this is possible, provide a full proof-of-concept here.
-->

A malicious attacker could abuse an executable file that is downloaded without any secure integrity check by somehow causing the application to download a malicious application instead of the intended one. Since this file is then run by the application, the malicious attacker could perform {{action}}.
