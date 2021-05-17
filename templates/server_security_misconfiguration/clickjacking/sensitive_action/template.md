# Clickjacking on a sensitive action

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]
-->

Clickjacking on a sensitive action in {{application}} of {{target}} allows malicious attacker to {{action}}

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Navigate to {{url}} where the sensitive {{action}} can be performed through only mouse-clicks
1. In a HTTP proxy, observe in the server response that there are no anti-clickjacking protections in place, such as the header `Content-Security-Policy: frame-ancestors 'self'` or the `X-Frame-Options` header  set to `DENY` or `SAMEORIGIN`

## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a clickjacking on a sensitive action vulnerability, please include a simple screenshot or HTML payload that can be executed to easily demonstrate and reproduce the issue.
-->

The screenshot below demonstrates that clickjacking is possible on a sensitive action at {{url}}.

{{screenshot}}

## Demonstrated Impact

<!--
Attempt to escalate the clickjacking on a sensitive action to perform additional actions (such as an account takeover or CSRF bypass to perform a sensitive action). If this is possible, provide a full proof-of-concept here.
-->

A malicious attacker could abuse this clickjacking on a sensitive action further to {{action}} by using the following procedure.


1. {{action}}

You can find a screenshot/video of the full exploit taking place below:

{{screenshot}}

````
