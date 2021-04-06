# Lack of HTTP Strict Transport Security Header

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

A lack of HTTP Strict Transport Security (HSTS) header allows a malicious attacker to Man-in-The-Middle (MiTM) an HTTP connection.

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.

Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Navigate to endpoint: {{value}}

1. Intecept request in a Web Proxy

1. Notice that no HSTS header is used


## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.
-->

The image(s) below demonstrates a lack of HSTS headers:

{{screenshot}}

## Demonstrated Impact

<!--
Provide a full Proof of Concept here.
--> 

A lack of HSTS headers allows for a MiTM attack to redirect users to a malicious site.

