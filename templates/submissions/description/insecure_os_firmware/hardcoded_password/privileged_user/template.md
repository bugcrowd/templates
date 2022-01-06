# Hard-coded password for privileged user
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Hard-coded password for privileged user in {{application}} of {{target}} allows a malicious attacker to {{action}}

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

1. Navigate to the source code files of {{application}}
1. Observe that a password for a privileged user is hard-coded into the source code of {{application}} and does not require external validation


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a hard-coded password of a privileged user, please include a screenshot of the password within the source code of the application and some proof of the level of access that account holds.
-->

You can observe the hard-coded password for a privileged user within the application source files below:

{{screenshot}}
## Demonstrated Impact
<!--
Attempt to show that the hard-coded password for a privileged user could be used by a malicious attacker in some impactful way. If this is possible, provide a full proof-of-concept here.
-->

A malicious attacker could abuse this hard-coded password for a privileged user to gain access to a privileged user account of {{application}}. With this privileged user account access, a malicious attacker could perform {{action}}.
