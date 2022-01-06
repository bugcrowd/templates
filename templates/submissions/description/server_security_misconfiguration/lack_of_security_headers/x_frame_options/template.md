# Lack of X-Frame-Options Header 

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

The X-Frame-Options is a permissive header that prevents a browser from rendering an frame, iframe, embed, or object tag.

A lack of a X-Frame-Options in {{target}} allows a malicious attacker to execute click-jacking attacks.

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.

Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Navigate to the endpoint with missing X-Frame-Options: {{value}}

1. Intecept the request and send it to a Web Proxy

1. Replay the request and notice that no X-Frame-Options is implemented


## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.
-->

The image(s) below demonstrates the missing header:

{{screenshot}}

## Demonstrated Impact

<!--
Provide a full Proof of Concept here.
--> 

An attacker can leverage a missing X-Frame-Options render an frame, iframe, embed, and objects to bypass Same Origin Policy or exploit a click-jacking attack.

Below is a screenshot of a full exploit:

{{screenshot}}

