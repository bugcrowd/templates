# Insecure Cipher Suite

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

An insecure cipher suite {{value}} in {{application}} allow for a malicious attacker to {{action}}.

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.

Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Use {{software}} to find the application is using the following cipher suites:

{{value}}


## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.
-->

The image(s) below demonstrates the vulnerable cipher suites: 

{{screenshot}}

## Demonstrated Impact

<!--
Provide a full Proof of Concept here.
--> 

A malicious attacker can use the weak cipher suite implementations to break the chain of trust between the client and the server. By breaking the crypto, an attacker can execute a Denial of Service (DoS) or Man-in-The-Middle (MiTM) the connection between the two to view or manipulate data in transit.


