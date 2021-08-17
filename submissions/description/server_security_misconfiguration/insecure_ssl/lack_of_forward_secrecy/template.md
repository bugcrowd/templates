# Lack of Forward Secrecy

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

Lack of Forward Secrecy in {{application}} allows for a malicious attacker to {{action}}.

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.

Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Use {{software}} to scan for cipher suites of the {{target}}

## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.
-->

The image(s) below demonstrates the use of a cipher suite with lack of forward secrecy:

{{screenshot}}

## Demonstrated Impact

<!--
Provide a full Proof of Concept here.
--> 

A malicious attacker can leverage this information to break the chain of trust between a client and a server, forward secrecy uses temporary keys for the exchange of information between two parties. If a server's private key is compromised the session is still secure as it uses ephemeral keys for the exchange. If forward secrecy is not used, these security guarantees will rely solely on a public and private key interaction. A malicious attacker will only require a private key to decrypt the data in transit.




