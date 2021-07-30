# System Clipboard Leak (Shared Links)
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
System Clipboard Leak in {{application}} of {{target}} allows a malicious attacker to {{action}}

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

1. Create and install a malicious application capable of accessing the clipboard
1. Log in to {{application}}
1. Navigate to {{url}} and copy some sensitive information to the clipboard
1. Within the malicious application, observe the sensitive information through the clipboard


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a system keyboard leak of sensitive information, please include a video of sensitive information being copied to the clipboard by some application which is then stolen by another malicious application that has access to the clipboard.
-->

You can observe a malicious application having access to sensitive information from the clipboard below:

{{screenshot}}
## Demonstrated Impact
<!--
Attempt to abuse the clipboard shared link leak further by attempting to use the shared link to perform additional actions (such as an account takeover or secret key exposure). If this is possible, provide a full proof-of-concept here.
-->

A malicious attacker could abuse this clipboard leak to steal sensitive information that a user copied to their clipboard in {{application}}. With this sensitive information, a malicious attacker could perform {{action}}.
