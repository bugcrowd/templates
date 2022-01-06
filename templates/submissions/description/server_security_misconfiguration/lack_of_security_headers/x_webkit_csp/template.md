# Lack of X-Webkit-CSP Header 

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

The X-Webkit-Content-Security-Policy response header is a header that allows admins permissively control the types of resources allowed to load for a page. 

A lack of a CSP header in {{target}} allows a malicious attacker to {{action}}

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.

Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Navigate to the endpoint with missing CSP: {{value}}

1. Intecept a request and send it to a Web Proxy

1. The following CSP headers/directives are either missing or implemented poorly:

{{value}}

1. Insert the following payload to {{target}} on {{parameter}} to bypass CSP:

{{value}}


## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.
-->

The image(s) below demonstrates the missing CSP:

{{screenshot}}

## Demonstrated Impact

<!--
Provide a full Proof of Concept here.
--> 

An attacker can leverage a missing CSP to bypass security controls of an application to execute a code within a victim's browser.

Below is a screenshot of a full exploit: 

{{screenshot}}
