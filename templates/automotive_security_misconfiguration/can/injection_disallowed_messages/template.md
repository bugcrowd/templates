# CAN Injection Disallowed Messages

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

The {{application}} allows malicious attacker to connect to the CAN Bus and send messages that are otherwise not allowed on the system.

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. The CAN input on {{target}} is found using {{hardware}}

1. Connect to {{target}} by using {{application}} with {{hardware}}

1. Inject disallowed payload: {{payload}} and {{action}} on {{target}} and see that {{action}} will occur

## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For an infotainment vulnerability, please include detailed instructions that can be followed to easily demonstrate and reproduce the issue. 
-->

The image(s) below demonstrates the process by which the attacker finds where the CAN communication occurs, how an attacker connects to the {{target}}, and the injection of the payload(s).

{{screenshot}}

## Demonstrated Impact

<!--
Attempt to completely stop the vehicle for functioning if the infotainment system controls mechanical aspect of the vehicle. If this is possible, provide a full proof-of-concept here.
--> 

A malicious attacker could send CAN payloads to exploit the {{target}} causing it to {{action}}.
