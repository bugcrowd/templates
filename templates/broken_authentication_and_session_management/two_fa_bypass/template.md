# Second Factor Authentication (2FA) Bypass

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

A Second Factor Authentication (2FA) bypass in {{application}} at {{url}} allows a malicious attacker to {{action}}

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Navigate to {{url}}
1. Attempt to sign in to {{application}}
1. Intercept the 2FA request using an HTTP proxy
1. Modify the body of the request at {{parameter}}
1. Forward the request and observe you are logged into {{application}}

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
