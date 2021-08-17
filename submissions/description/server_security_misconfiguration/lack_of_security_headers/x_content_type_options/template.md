# Lack of X-Content-Type-Options Header 

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

The X-Content-Type-Options is used to ignore the MIME types of content returned from a server.

A lack of a X-Content-Type-Options in {{target}} allows a malicious attacker to leverage MIME type sniffing which can break client-side parsers and can even lead to Cross Site Scripting (XSS) attacks. 

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.

Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Navigate to the endpoint with missing X-Content-Type-Options: {{value}}

1. Intecept the request and send it to a Web Proxy

1. In the following response, it returns a Content-Type of {{value}} but the browser interprets the content as {{value}}:


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

An attacker can leverage a missing X-Content-Type Options to force the browser to MIME sniff.

Below is a screenshot of a full exploit of MIME sniffing:

{{screenshot}}

