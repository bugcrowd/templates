# Lack of Content Security Policy Headers

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

Lack of Content Security Policy (CSP) headers in application allows for potential Cross-Site Scripting (XSS) or Web Defacement attacks.

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.

Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Navigate to the following endpoint: {{value}}

1. Intercept request in a Web Proxy and notice CSP headers are not used

## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.
-->

The image(s) below demonstrates a lack of CSP headers in responses:

{{screenshot}}

## Demonstrated Impact

<!--
Provide a full Proof of Concept here.
--> 

A malicious attacker leverage a lack of CSP headers to potentially exploit an XSS to exfiltrate data, execute code, or deface a target website.
