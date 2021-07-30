# Tapjacking
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Tapjacking is possible in {{application}} of {{target}} allowing a malicious attacker to {{action}}

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

1. View the source code files of {{application}}
1. Navigate to {{url}} and view the sensitive UI functionality does not have the attribute `"filterTouchesWhenObscured="true"`, thus allowing tapjacking attacks on certain android OS versions


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For an application vulnerable to tapjacking, include a screenshot of the source code of the application with a sensitive UI functionality that does not have the attribute "filterTouchesWhenObscured='true".
-->

You can observe proof that the application does not protect the sensitive UI functionality from tapjacking below:

{{screenshot}}
## Demonstrated Impact
<!--
Attempt to abuse the tapjacking in some impactful way. If this is possible, provide a full proof-of-concept here.
-->

A malicious attacker could abuse an application that does not protect sensitive UI functionality from tapjacking by stealing UI inputs from a user that uses the application on specific android OS versions. With these intercepted UI inputs, a malicious attacker could perform {{action}}.
