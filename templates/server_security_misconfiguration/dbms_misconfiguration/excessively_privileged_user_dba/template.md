# Excessively Priviledged User In Database

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

Excessively privileged user in {{target}} within the database {{value}} allows for a malicious attacker to {{action}}.

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.

Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Navigate to the vulnerable functionality {{value}}

1. Send the following query {{value}} and notice that the user with roles {{value}} has excessive privileged to {{action}} in database {{value}}.


## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.
-->

The image(s) below demonstrates the server misconfiguration: 

{{screenshot}}

## Demonstrated Impact

<!--
Provide a full Proof of Concept here.
--> 

A malicious attacker can use these privileges to {{action}} while the user should only have access to {{value}} functionality.


