# Source Code Dump

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

Source code can be dumped in {{target}} allowing an attacker to read, release, and exploit code that should otherwise be hidden from users.

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Acquire a bin or firmware file for {{target}}

1. Unzip the firmware using {{software}}

1. Unsquare file system using {{software}}


## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For an infotainment vulnerability, please include detailed instructions that can be followed to easily demonstrate and reproduce the issue. 
-->

The following shows the extracted firmware folder and snippets of exposed source code.

{{screenshot}}

## Demonstrated Impact

<!--
Attempt to completely stop the vehicle for functioning if the infotainment system controls mechanical aspect of the vehicle. If this is possible, provide a full proof-of-concept here.
--> 

Malicious attackers can dump firmware code online allowing others to view, share, or exploit proprietary code.
