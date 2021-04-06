# Lack of Password Confirmation on Account Deletion

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

A lack of password confirmation when deleting an account on {{target}} allows a malicious attacker to potentially delete accounts without proper security controls.

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.

Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Use account deletion functionality on {{target}} 

1. Intercept the following request in a Web Proxy:

{{value}}

1. Adjust/Append {{parameter}} 

1. Forward or replay the request in a request/response editor

1. See that no password confirmation is required

## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.
-->

The image(s) below demonstrates the lack of password confirmation when deleting an account.

{{screenshot}}

## Demonstrated Impact

<!--
Provide a full Proof of Concept here.
--> 

A malicious attacker can leverage this vulnerability to delete other accounts. 

