# Lack of Password Confirmation on Change Email Address

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

A lack of password confirmation when changing email address on {{target}} allows a malicious attacker to change an email to one they control.

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.

Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Use change email address functionality on {{target}} 

1. Intercept the following request in a Web Proxy:

{{value}}

1. Adjust/Append {{parameter}} to {{value}}

1. Forward or replay the request in a request/response editor

1. See that no password confirmation is required

## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.
-->

The image(s) below demonstrates the lack of password confirmation when changing the email address.

{{screenshot}}

## Demonstrated Impact

<!--
Provide a full Proof of Concept here.
--> 

A malicious attacker can change the email address of a user to an email they control, by doing so, any functionality that leverages email can be used to further exploit a target.

