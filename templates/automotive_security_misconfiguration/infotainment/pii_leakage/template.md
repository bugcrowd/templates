# PII Leakage

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

Personally Identifiable Information (PII) in {{target}} allows for a malicious attacker to collect data via logs and user configurations within the underlying in-vehicle infotainment system (IVI) interface.

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Power on {{target}}

1. Use {{application}} and notice that the data is stored/transmitted in an insecure manner


## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For an infotainment vulnerability, please include detailed instructions that can be followed to easily demonstrate and reproduce the issue. 
-->

The following shows the type of data that persists on the IVI unit.

{{screenshot}}

## Demonstrated Impact

<!--
Attempt to completely stop the vehicle for functioning if the infotainment system controls mechanical aspect of the vehicle. If this is possible, provide a full proof-of-concept here.
--> 

Malicious attackers can collect PII data on used vehicles of the same make and model using this vulnerability.
