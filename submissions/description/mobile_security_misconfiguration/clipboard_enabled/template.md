# System Clipboard Enabled
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
System clipboard enabled in {{application}} of {{target}} allows a malicious attacker to {{action}}

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

1. Install {{application}} on your mobile device
1. Navigate to {{url}} and copy some sensitive account information
1. Paste this data in some other area of your mobile device and observe that access to the clipboard was enabled in {{application}}


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a system clipboard enabled vulnerability, please include a video of sensitive information being copied to the clipboard inside the application, and the same information being pasted somewhere else to show that it was successfully copied.
-->

You can observe sensitive information being copied to the clipboard and pasted elsewhere below:

{{screenshot}}
## Demonstrated Impact
<!--
Attempt to abuse the system clipboard being enabled by showing that a malicious application with clipboard access could use the information in some impactful way. If this is possible, provide a full proof-of-concept here.
-->

A malicious attacker could abuse the system clipboard being enabled in {{application}} to steal sensitive information that a user copied to their clipboard from within the application. With this sensitive information, a malicious attacker could perform {{action}}.
