# Generic server security misconfiguration

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]
-->

Server security misconfiguration in {{application}} of {{target}} allows malicious attacker to {{action}}

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Navigate to {{url}}
1. Observe in the HTTP proxy or in-browser tools that there is a server security misconfiguration that allows an attacker to perform {{action}}

## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a server security misconfiguration vulnerability, please include a screenshot or video to easily demonstrate and reproduce the issue.
-->

The screenshot below demonstrates the server security misconfiguration at {{url}}.

{{screenshot}}

## Demonstrated Impact

<!--
Attempt to escalate the server security misconfiguration to perform additional actions (such as an account takeover or CSRF bypass to perform a sensitive action). If this is possible, provide a full proof-of-concept here.
-->

A malicious attacker could abuse this server security misconfiguration further to {{action}} by using the following payload.


{{payload}}

You can find a screenshot of the full exploit taking place below:

{{screenshot}}

````
