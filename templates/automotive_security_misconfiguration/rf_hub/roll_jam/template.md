# Radio Frequency Unauthorized Access To Turn On Vehicle

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

A Roll Jam attack in {{target}} allows for a malicious attacker to {{action}}
## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Setup {{hardware}} and {{software}} for {{target}} to {{action}}

1. Place {{hardware}} in proximity to {{target}} 

1. Record the frequency of the {{target}} to find that the signal is located between {{value}} and {{value}}

1. Use {{hardware}} to jam the signal for the device

1. Press a button on the {{target}} to {{action}} and capture the first keypress signal on {{hardware}} and/or {{software}}

1. Press a button on the {{target}} a second time to {{action}} and capture the second keypress signal on {{hardware}} and/or {{software}}

1. Use {{hardware}} and/or {{software}} to replay the signal to {{action}}



## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For an infotainment vulnerability, please include detailed instructions that can be followed to easily demonstrate and reproduce the issue. 
-->

The image(s) below demonstrates the hardware and software setup along with capturing the signals and replaying them.

{{screenshot}}

## Demonstrated Impact

<!--
Attempt to completely stop the vehicle for functioning if the infotainment system controls mechanical aspect of the vehicle. If this is possible, provide a full proof-of-concept here.
--> 

A malicious attacker could exploit this by gaining unfettered access to a target as long as they are in proximity to capture the signals.

