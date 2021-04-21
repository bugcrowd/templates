# Binary hardening - Lack of jailbreak detection
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Lack of jailbreak / root access detection in {{application}} of {{target}} allows a malicious attacker to {{action}}

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

1. Jailbreak / gain root access to your mobile device
1. Install {{application}} on your mobile device
1. Open {{application}} and observe that the application does not prevent access or acknowledge that the mobile device is jailbroken, indicating it lacks a detection mechanism


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a lack of jailbreak detection, please include a screenshot of the application running without any prevention/acknowledgement on a jailbroken device.
-->

You can observe the application running without any prevention/acknowledgement on a jailbroken device below:

{{screenshot}}
## Demonstrated Impact
<!--
Attempt to show that the lack of jailbreak detection could be used by a malicious attacker in some impactful way. If this is possible, provide a full proof-of-concept here.
-->

A malicious attacker could abuse the lack of jailbreak detection in {{application}} in order to access the internal filesystem of the application, inject unauthorized into the application, and more. Without jailbreak detection, a malicious attacker could perform {{action}}.
