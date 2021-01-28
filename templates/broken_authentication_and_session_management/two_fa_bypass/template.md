# Second Factor Authentication (2FA) Bypass

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

2FA in {{application}} of {{target}} allows malicious attacker to be bypassed by {{action}}

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Log in to {{application}} at {{url}}
1. Observe the URL once logged in.
1. Log out of {{application}} at {{url}}
1. Log in with a second set of credentials.
1. When prompted for the verification code navigate to the post-login page 

## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a 2FA bypass, please include a step-by-step walkthrough that can be executed to easily demonstrate and reproduce the issue. 
-->

Below is a screenshot demonstrating the account which 2FA was bypassed.

{{screenshot}}

## Demonstrated Impact

<!--
Attempt to escalate the 2FA bypass to perform additional actions (such as an account takeover or perform user enumeration to perform the 2FA bypass on a more privileged account). If this is possible, provide a full proof-of-concept here.
--> 

A malicious attacker could abuse this 2FA bypass further to {{action}} by following the step-by-step walkthrough below.

1. Step one
1. Step two

Here is a screenshot of the full exploit taking place:

{{screenshot}}
