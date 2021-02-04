# Insecure Direct Object References (IDOR)

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

An Insecure Direct Object Reference (IDOR) occurs when an application directly exposes a reference to an object such as user details or files. Which can be directly accessed regardless of the authorisation.

IDOR in {{application}} of {{target}} allows malicious attacker to {{action}}

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Log in to {{application}} at {{url}}
1. Send a request to {{url}} with the following parameter {{parameter}}
1. Modify the {{parameter}} to a different value
1. Observe PII is displayed.

## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For an IDOR, please include a simple URL or parameter that can be executed to easily demonstrate and reproduce the issue. 
-->

Below is a screenshot demonstrating the exposed object executing at {{url}}.

{{screenshot}}

## Demonstrated Impact

<!--
Attempt to escalate the IDOR to extract additional privileged information (such as using a higher privilege account to access restricted data). If this is possible, provide a full proof-of-concept here.
-->

A malicious attacker could abuse this IDOR further to {{action}} by using the following {{payload}} to extract sensitive information.

```
{{payload}}
```

The screenshot below demonstrates the objects accessed:

{{screenshot}}