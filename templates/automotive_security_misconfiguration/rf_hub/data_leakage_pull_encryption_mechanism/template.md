# Radio Frequency Data Leakage Pull Encryption Mechanism

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

The {{application}} allows malicious attacker to decode the data sent Over the Air (OTA) or On-Vehicle in an insecure manner.

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Setup the hardware/software stack by {{action}}

1. Perform a Man in The Middle (MiTM) by doing {{action}} using {{hardware}} and {{software}}

1. Attempt to bypass the encryption by {{action}} or using meta data from the intercepted messages to decode/decrypt the communication.


## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For an infotainment vulnerability, please include detailed instructions that can be followed to easily demonstrate and reproduce the issue. 
-->

The image(s) below demonstrates the messages observed from decoding/decrypting data.

{{screenshot}}

## Demonstrated Impact

<!--
Attempt to completely stop the vehicle for functioning if the infotainment system controls mechanical aspect of the vehicle. If this is possible, provide a full proof-of-concept here.
--> 

A malicious attacker could exploit {{target}} by uncovering PII or confidential data from encrypted communications. 

