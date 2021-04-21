# Insecure OS firmware - Command injection
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Command injection in the binary of {{application}} of {{target}} allows a malicious attacker to {{action}}

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

1. Start {{application}} on the operating system and navigate to {{url}}
1. Input {{payload}} into {{parameter}} and observe that the application binary is vulnerable to command injection


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a operating system suffering from command injection, please include a video of the steps required to exploit the command injection within the application.
-->

You can observe a video recording of the steps required to exploit the command injection below:

{{screenshot}}
## Demonstrated Impact
<!--
Attempt to show that the command injection could be used by a malicious attacker in some impactful way. If this is possible, provide a full proof-of-concept here.
-->

A malicious attacker could abuse this command injection in {{application}} to execute arbitrary commands on the user's operating system.
