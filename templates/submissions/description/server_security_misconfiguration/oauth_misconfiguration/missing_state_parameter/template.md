# Account Takeover by Missing State Parameter

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

OAuth is an authorization framework used to identify and authenticate users for an application. The state parameter carries data between requests during authorization.

A misconfigured or missing state parameter allows a malicious attacker to issue a request on behalf of a user to takeover accounts.

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.

Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

These steps are relative to how the schema was implemented to the application. Will leave the rest of the template for the user.
-->

1. Navigate to the following URL:

{{value}}

1. Login to the application using:

{{value}}

1. Intercept the following request in a Web Proxy:

{{value}}

1. Notice the {{parameter}} contains {{value}}:

{{screenshot}}

1. Drop the original request and re-send the vulnerable request using {{program}}

## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.
-->

The image(s) below demonstrates a successful account takeover:

{{screenshot}}

## Demonstrated Impact

<!--
Provide a full Proof of Concept here.
--> 


This can enable an attacker to takeover multiple accounts in the application using Cross-Side Request Forgery (CSRF). 
