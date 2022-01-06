# Lack of X-XSS-Protection Header

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

The X-XSS-Protection response header that prevents clients from loading a reflected Cross-Site scripting (XSS) attacks.

A lack of a X-XSS-Protection header in {{target}} allows a malicious attacker to successfully exploit a XSS attack.

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.

Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Navigate to the endpoint with the missing header: {{value}}

1. Intecept a request and send it to a Web Proxy

1. Replay the request and notice the missing header in response

1. If applicable, insert the following payload to {{target}} on {{parameter}} to exploit XSS:

{{value}}


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

An attacker can leverage a missing X-XSS-Protection to bypass security controls of an application to execute a code within a victim's browser.

Below is a screenshot of a full exploit: 

{{screenshot}}

