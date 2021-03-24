# Radio Frequency Can Injection Interaction

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

A Radio Frequency interaction in {{target}} in {{application}} allows a malicious attacker to interact or send messages to the CAN bus. 

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Setup {{hardware}} and {{software}} to interact with the RF layer of {{target}}

1. Using {{software}} send command: {{payload}} that does {{action}} on the {{target}}


## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For an infotainment vulnerability, please include detailed instructions that can be followed to easily demonstrate and reproduce the issue. 
-->

The image(s) below demonstrates hardware and software stack used to interact with {{target}} and the payload(s) sent.

{{screenshot}}

## Demonstrated Impact

<!--
Attempt to completely stop the vehicle for functioning if the infotainment system controls mechanical aspect of the vehicle. If this is possible, provide a full proof-of-concept here.
--> 

A malicious attacker could exploit the RF layer on the {{target}} to cause the {{target}} to {{action}}

