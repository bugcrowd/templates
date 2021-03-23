# Radio Frequency Relay

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

A replay attack allows a malicious attacker to replay a challenge and response mechanism to {{action}} on {{target}}  

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Setup {{hardware}} and {{software}}

1. Sniff and record the traffic using {{software}}

1. Analyze the packet to see the vulnerable request is between {{value}} and {{value}}

1. Replay this frequency using {{payload}} in {{software}}



## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For an infotainment vulnerability, please include detailed instructions that can be followed to easily demonstrate and reproduce the issue. 
-->

The image(s) below demonstrates a successful replay causing the {{target}} to {{action}}

{{screenshot}}

## Demonstrated Impact

<!--
Attempt to completely stop the vehicle for functioning if the infotainment system controls mechanical aspect of the vehicle. If this is possible, provide a full proof-of-concept here.
--> 

A malicious attacker could exploit the {{target}} to replay a key fob unlocking or locking the {{target}} on the owner's behalf.

