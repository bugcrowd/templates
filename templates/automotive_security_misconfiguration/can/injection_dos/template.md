# CAN Injection Denial of Service (DOS)

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

A flooding of CAN messages in {{target}} in {{application}} allows for a Denial-of-Service (DoS).

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. The CAN input is found using {{hardware}} on {{target}}

1. Connect to {{target}} by using {{application}} with {{hardware}}

1. Inject CAN message payload {{payload}} recursively with a short delay using {{hardware}} 

## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For an infotainment vulnerability, please include detailed instructions that can be followed to easily demonstrate and reproduce the issue. 
-->

The image(s) below demonstrates the CAN messages sent to the vehicle and actions taken to verify that the vehicle is out of service.

{{screenshot}}

## Demonstrated Impact

<!--
Attempt to completely stop the vehicle for functioning if the infotainment system controls mechanical aspect of the vehicle. If this is possible, provide a full proof-of-concept here.
--> 

A malicious attacker could exploit {{application}} on the system to flood the CAN Bus Arbitration IDs with malicious messages causing the system to {{action}}.

