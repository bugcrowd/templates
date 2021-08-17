# Lack of Cache-Control Header For a Non-Sensitive Page

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

Lack of Cache-Control headers in application allows an attacker to extract non-sensitive data from cached sessions.

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.

Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Login to application using the credentials provided:

{{value}}

1. Navigate to an endpoint with non-sensitive information such as:

{{value}}

1. Logout of application

1. Press the Back button on the browser


## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.
-->

The image(s) below demonstrates non-sensitive data exposure and lack of Cache-Control headers:

{{screenshot}}

## Demonstrated Impact

<!--
Provide a full Proof of Concept here.
--> 

A malicious attacker can use a user cache to build a phishing profile against a target user.
