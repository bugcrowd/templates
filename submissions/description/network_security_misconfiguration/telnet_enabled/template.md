# Telnet enabled
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Telnet is enabled on {{application}} of {{target}}, allowing a malicious attacker to {{action}}

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

1. On some computer, issue the command line command `telnet {{application}}`
1. Observe that a telnet connection is successfully established between the client computer and {{application}}


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a server where telnet is enabled, include a screenshot of a successful telnet connection. Simply showing that the port is open is not enough.
-->

You can observe proof that a successful telnet connection can be made below:

{{screenshot}}
## Demonstrated Impact
<!--
Attempt to abuse the telnet connection in some impactful way. If this is possible, provide a full proof-of-concept here.
-->

A malicious attacker could abuse a server that has telnet enabled by performing {{action}}.
