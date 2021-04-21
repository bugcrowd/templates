# Missing Secure or HTTPOnly on Non-Session Cookie

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

A Secure and HTTPOnly flag on cookies ensures that cookies are sent to a server in a secure and encrypted manner.

A lack of a Secure or HTTPOnly flag in {{target}} allows a malicious attacker to access cookies via Man-in-The-Middle or XSS attacks.

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.

Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Authenticate to {{target}} using:

{{value}}

1. Use Web Proxy to intercept the response:

{{screenshot}}

## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.
-->

The image(s) below demonstrates the missing flags:

{{screenshot}}

## Demonstrated Impact

<!--
Provide a full Proof of Concept here.
--> 

An attacker can leverage a missing HTTPOnly or Secure flags to launch a MiTM or XSS attack to steal a user's session or extract information about the session.

Below is a screenshot of a full exploit: 

{{screenshot}}

